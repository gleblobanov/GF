/* --- ID for a node in a tree ---------------------------------------------- */
function NodeID(x) {
    this.id = new Array();
    this.id.push(0);

    // Initialize from input
    if (x) {
        var type = Object.prototype.toString.call(x);
        switch (type) {
        case "[object Number]": this.id = [x]; break;
        case "[object String]": this.id = map(function(s){return parseInt(s)}, x.split(",")); break;
        case "[object Array]" : this.id = Array.clone(x); break;
        case "[object Object]": this.id = Array.clone(x.get()); break; // another NodeID
        }
    }

    // get id
    this.get = function() {
        return this.id;
    }
    
    // Add child node to id
    this.add = function(x) {
        this.id.push(parseInt(x));
        return this.id;
    }

    // compare with other id
    this.equals = function(other) {
        return JSON.stringify(this.id)==JSON.stringify(other.id);
    }

    // clone
    this.clone = function() {
        return new NodeID( this );
    }

}

/* --- Abstract Syntax Tree (with state)------------------------------------- */

function ASTNode(data) {
    for(var d in data) this[d]=data[d];
    this.children = [];
    for (c in data.children) {
        this.children.push( new ASTNode(data.children[c]) );
    }
    this.hasChildren = function(){
        return this.children.length > 0;
    }

    // generic HOF for traversing tree
    this.traverse = function(f) {
        function visit(node) {
            f(node);
            for (i in node.children) {
                visit(node.children[i]);
            }
        }
        visit(this);
    }
    
}

function AST(fun, cat) {

    // local helper function for building ASTNodes
    var newNode = function(fun, cat) {
        return new ASTNode({
            "fun": fun,
            "cat": cat,
            "deps": {}, // dependent types
            "children": []
        });
    }

    this.root = newNode(fun, cat);
    
    this.current = new NodeID(); // current id in tree

    this.getCurrent = function() {
        return this.find(this.current);
    }
    this.getFun = function() {
        return this.find(this.current).fun;
    }
    this.setFun = function(f) {
        this.find(this.current).fun = f;
    }
    this.getCat = function() {
        return this.find(this.current).cat;
    }
    this.setCat = function(c) {
        this.find(this.current).cat = c;
    }

    // Add a single type dependency at current node
    this.addDep = function(k, type) {
        // Add unassigned type variable to current
        var cur = this.getCurrent();
        cur.deps[k] = null;

        // Add actual type dep node
        var node = newNode(k, type);
        node.depid = k; // links to dep in parent
        this._add(this.current, node);
        return node;
    }

    // Add a single fun at current node
    this.add = function(fun, cat) {
        var node = newNode(fun,cat);
        this._add(this.current, node);
        return node;
    }

    // add node as child of id
    this._add = function(id, node) {
        var x = this.find(id);
        x.children.push(node);
    }

    // Set entire subtree at current node
    this.setSubtree = function(node) {
        this._setSubtree(this.current, node);
    }
    
    // set tree at given id
    this._setSubtree = function(id, subtree) {
        var lid = Array.clone(id.get()); // clone NodeID array
        var node = this.root;

        if (lid.length==1)
            // Insert at root
            this.root = new ASTNode(subtree);
        else {
            lid.shift(); // throw away root
            while (lid.length>1 && node.hasChildren()) {
                node = node.children[lid.shift()];
            }
            node.children[lid.shift()] = new ASTNode(subtree);
        }

    }

    this.find = function(id) {
        var lid = undefined
        if (Object.prototype.toString.call(id) == "[object Object]") {
            lid = Array.clone( id.get() );
        } else {
            alert("non-NodeID passed to AST.find()");
        }
        var node = this.root;
        if (lid[0] == 0) lid.shift();
        while (lid.length>0 && node.children.length>0) {
            node = node.children[lid.shift()];
        }
        if (lid.length>0)
            return undefined;
        return node;
    }
    
    // Clear children of current node
    this.removeChildren = function() {
        this.find(this.current).children = [];
    }

    // Move current ID to next hole
    this.toNextHole = function() {
        var id = new NodeID(this.current);
        
        // loop until we're at top
        while (id.get().length > 0) {
            var node = this.find(id);

            // first check children
            for (i in node.children) {
                var child = node.children[i];
                if (!child.fun) {
                    var newid = new NodeID(id);
                    newid.add(i);
                    this.current = newid;
                    return;
                }
            }

            // otherwise go up to parent
            id.get().pop();
        }
    }

    // Return parent of current node
    this.getParent = function(i) {
        var parent_id = this.current.clone();
        parent_id.get().pop();
        return this.find(parent_id);
    }

    // Move current id to child number i
    this.toChild = function(i) {
        this.current.add(i);
    }

    // generic HOF for traversing tree
    // this.traverse = function(f) {
    //     this.root.traverse(f);
    // }
    this.traverse = function(f) {
        function visit(id, node) {
            f(node);
            for (i in node.children) {
                var newid = new NodeID(id);
                newid.add(parseInt(i));
                visit(newid, node.children[i]);
            }
        }
        visit(new NodeID(), this.root);
    }

    // Return tree as string
    this.toString = function() {
        var s = "";
        function visit(node) {
            s += node.fun ? node.fun : "?" ;
            if (!node.hasChildren())
//            if (node.children.length == 0)
                return;
            for (i in node.children) {
                s += " (";
                visit(node.children[i]);
                s += ")";
            }
        }
        visit(this.root);
        return s;
    }

}
    
// Parse type signature into a JSON object
// (This probably needs a better home)
AST.parse_type_signature = function(str) {
    var obj = {
        type: undefined,
        name: [],
        deps: [],
        args: [],
        ret: undefined
    };
    var ix = str.indexOf(":");
    
    // judgement type
    var bits = str.substr(0, ix).trim().split(" ");
    obj.type = bits[0];

    // name (possibly with constructors)
    obj.name = bits.slice(1);
    
    // function args (possibly with type dependency)
    var regex_dep = new RegExp(/\(\s*(.+?)\s*:\s*(.+?)\s*\)/);
    var bits = map(function(s){return s.trim()}, str.substr(ix+1).split("->"));
    for (var i=0 ; i<bits.length-1; i++) {
        var bit = bits[i];
        var m = regex_dep.exec(bit);
        if (m == null) {
            obj.args.push(bit);
        } else {
            // We have a type dependency
            obj.deps.push({ "id": m[1], "type": m[2] });
        }
    }

    //return type
    obj.ret = bits[bits.length-1];

    return obj;
}

