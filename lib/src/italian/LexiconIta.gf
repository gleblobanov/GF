--# -path=.:../romance:../common:../abstract:../../prelude

concrete LexiconIta of Lexicon = CatIta ** open 
  MorphoIta, ParadigmsIta, BeschIta, IrregIta in {

flags 
  optimize=values ; coding=utf8 ;

lin
  airplane_N = regN "aereo" ;
  answer_V2S = mkV2S (verboV (rispondere_76 "rispondere")) ParadigmsIta.dative ;
  apartment_N = regN "appartamento" ;
  apple_N = regN "mela" ;
  art_N = femN (regN "arte") ;
  ask_V2Q = mkV2Q (verboV (chiedere_29 "chiedere")) ParadigmsIta.dative ;
  baby_N = regN "bambino" ;
  bad_A = prefA (mkADeg (regA "cattivo") (regA "peggiore")) ;
  bank_N = regN "banca" ;
  beautiful_A = prefA (regADeg "bello") ;
  become_VA = essereV (regV "diventare") ;
  beer_N = regN "birra" ;
  beg_V2V = mkV2V (regV "pregare") ParadigmsIta.accusative ParadigmsIta.genitive ;
  big_A = prefA (regADeg "grande") ;
  bike_N = regN "bicicletta" ;
  bird_N = regN "uccello" ;
  black_A = regADeg "nero" ;
  blue_A = mkA "blù" "blù" "blù" "blù" "blumente" ;
  boat_N = regN "batello" ;
  book_N = regN "libro" ;
  boot_N = regN "stivale" ;
  boss_N = regN "capo" ;
  boy_N = regN "ragazzo" ;
  bread_N = regN "pane" ;
  break_V2 = dirV2 (verboV (rompere_77 "rompere")) ;
  broad_A = regADeg "largo" ;
  brother_N2 = diN2 (regN "fratello") ;
  brown_A = regADeg "marrone" ;
  butter_N = regN "burro" ;
  buy_V2 = dirV2 (regV "comprare") ;
  camera_N = mkN ["macchina fotografica"]["macchine fotografiche"] feminine ; ---
  cap_N = regN "berretta" ;
  car_N = regN "macchina" ;
  carpet_N = regN "tappeto" ;
  cat_N = regN "gatto" ;
  ceiling_N = regN "soffitto" ;
  chair_N = regN "sedia" ;
  cheese_N = regN "formaggio" ;
  child_N = regN "bambino" ;
  church_N = regN "chiesa" ;
  city_N = regN "città" ;
  clean_A = regADeg "proprio" ;
  clever_A = regADeg "saggio" ;
  close_V2 = dirV2 (verboV (chiudere_30 "chiudere")) ;
  coat_N = regN "cappotto" ;
  cold_A = regADeg "freddo" ;
  come_V = essereV (verboV (venire_110 "venire")) ;
  computer_N = regN "computer"  ;
  country_N = regN "paese" ;
  cousin_N = regN "cugino" ; --- cousine
  cow_N = regN "vacca" ;
  die_V = verboV (morire_105 "morire") ;
  dirty_A = regADeg "sporco" ;
  distance_N3 = mkN3 (regN "distanza") ParadigmsIta.genitive ParadigmsIta.dative ;
  doctor_N = mkN "medico" "medici" masculine ;
  dog_N = regN "cane" ;
  door_N = regN "porta" ;
  drink_V2 = dirV2 (verboV (bere_27 "bere")) ;
  easy_A2V = mkA2V (regA "facile") ParadigmsIta.dative ParadigmsIta.genitive ;
  eat_V2 = dirV2 (regV "mangiare") ;
  empty_A = regADeg "vuoto" ;
  enemy_N = regN "nemico" ;
  factory_N = regN "stabilimento" ;
  father_N2 = diN2 (regN "padre") ;
  fear_VS = mkVS (verboV (temere_20 "temere")) ;
  find_V2 = dirV2 (regV "trovare") ;
  fish_N = regN "pesce" ;
  floor_N = regN "pavimento" ;
  forget_V2 = dirV2 (regV "dimenticare") ;
  fridge_N = regN "frigorifero" ;
  friend_N = regN "amico" ;
  fruit_N = regN "frutta" ;
  fun_AV = mkAV (regA "divertente") ParadigmsIta.genitive ;
  garden_N = regN "giardino" ;
  girl_N = regN "ragazza" ;
  glove_N = regN "guanto" ;
  gold_N = regN "oro" ;
  good_A = prefA (mkADeg (regA "buono") 
    (mkA "migliore" "migliore" "migliori" "migliori" "meglio")) ;
  go_V = essereV (verboV (andare_14 "andare")) ;
  green_A = regADeg "verde" ;
  harbour_N = regN "porto" ;
  hate_V2 = dirV2 (regV "odiare") ;
  hat_N = regN "capello" ;
  hear_V2 = dirV2 (verboV (sentire_99 "sentire")) ;
  hill_N = regN "collina" ;
  hope_VS = mkVS (regV "sperare") ;
  horse_N = regN "cavallo" ;
  hot_A = regADeg "caldo" ;
  house_N = regN "casa" ;
  important_A = regADeg "importante" ;
  industry_N = regN "industria" ;
  iron_N = regN "ferro" ;
  john_PN = mkPN "Giovanni" masculine ;
  king_N = regN "ré" ;
  know_V2 = dirV2 (verboV (conoscere_37 "conoscere")) ;
  know_VQ = mkVQ (verboV (sapere_78 "sapere")) ;
  know_VS = mkVS (verboV (sapere_78 "sapere")) ;
  lake_N = regN "lago" ;
  lamp_N = regN "lampada" ;
  learn_V2 = dirV2 (regV "imparare") ;
  leather_N = regN "cuoio" ;
  leave_V2 = dirV2 (regV "lasciare") ;
  like_V2 = dirV2 (regV "amare") ;
  listen_V2 = dirV2 (regV "ascoltare") ;
  live_V = verboV (vivere_95 "vivere") ;
  long_A = regADeg "lungo" ;
  lose_V2 = dirV2 (verboV (perdere_62 "perdere")) ;
  love_N = regN "amore" ;
  love_V2 = dirV2 (regV "amare") ;
  man_N = mkN "uomo" "uomini" masculine ;
  married_A2 = mkA2 (regA "sposato") (mkPrep "con");--ParadigmsIta.dative 
  meat_N = femN (regN "carne") ;
  milk_N = regN "latte" ;
  moon_N = regN "luna" ;
  mother_N2 = diN2 (femN (regN "madre")) ;
  mountain_N = regN "montagna" ;
  music_N = regN "musica" ;
  narrow_A = regADeg "stretto" ;
  new_A = prefA (regADeg "nuovo") ;
  newspaper_N = regN "giornale" ;
  oil_N = regN "olio" ;
  old_A =  prefA (regADeg "vecchio") ;
  open_V2 = dirV2 (verboV (aprire_102 "aprire")) ;
  paint_V2A = 
    mkV2A (verboV (cingere_31 "dipingere")) ParadigmsIta.accusative ParadigmsIta.accusative; ---- has some other forms, but this is ok for most uses
  paper_N = regN "carta" ;
  paris_PN = mkPN "Parigi" masculine ;
  peace_N = femN (regN "pace") ;
  pen_N = regN "penna" ;
  planet_N = regN "pianeta" ;
  plastic_N = regN "plastica" ;
  play_V2 = dirV2 (regV "giocare") ;
  policeman_N = regN "carabiniere" ;
  priest_N = regN "prete" ;
  probable_AS = mkAS (regA "probabile") ;
  queen_N = regN "regina" ;
  radio_N = mkN "radio" "radio" feminine ;
  rain_V0 = mkV0 (verboV (piovere_66 "piovere")) ;
  read_V2 = dirV2 (verboV (leggere_56 "leggere")) ;
  red_A = regADeg "rosso" ;
  religion_N = femN (regN "religione") ;
  restaurant_N = regN "ristorante" ;
  river_N = regN "fiume" ;
  rock_N = regN "roccia" ;
  roof_N = regN "tetto" ;
  rubber_N = regN "gomma" ;
  run_V = verboV (correre_38 "correre") ;
  say_VS = mkVS (verboV (dire_41 "dire")) ;
  school_N = regN "scuola" ;
  science_N = regN "scienza" ;
  sea_N = regN "mare" ;
  seek_V2 = dirV2 (regV "cercare") ;
  see_V2 = dirV2 (verboV (vedere_93 "vedere")) ;
  sell_V3 = dirV3 (verboV (scendere_80 "vendere")) ParadigmsIta.dative ; ---- except some forms
  send_V3 = dirV3 (regV "mandare") ParadigmsIta.dative ;
  sheep_N = regN "agnello" ;
  ship_N = femN (regN "nave") ;
  shirt_N = regN "camicia" ;
  shoe_N = regN "scarpa" ;
  shop_N = regN "magazzino" ;
  short_A = regADeg "corto" ; --- breve
  silver_N = regN "argento" ;
  sister_N = regN "sorella" ;
  sleep_V = verboV (dormire_99b "dormire") ;
  small_A = prefA (regADeg "piccolo") ;
  snake_N = regN "serpente" ;
  sock_N = regN "calza" ;
  speak_V2 = dirV2 (regV "parlare") ;
  star_N = regN "stella" ;
  steel_N = regN "acciaio" ;
  stone_N = regN "sasso" ;
  stove_N = regN "forno" ;
  student_N = regN "studente" ;
  stupid_A = regADeg "stupido" ;
  sun_N = regN "sole" ;
  switch8off_V2 = dirV2 (verboV (spegnere_86 "spegnere")) ;
  switch8on_V2 = dirV2 (verboV (accendere_21 "accendere")) ; ----
  table_N = regN "tavola" ; --- tavolo
  talk_V3 = mkV3 (regV "parlare") ParadigmsIta.dative ParadigmsIta.genitive ;
  teacher_N = regN "professore" ;
  teach_V2 = dirV2 (regV "insegnare") ;
  television_N = femN (regN "televisione") ;
  thick_A = regADeg "grosso" ;
  thin_A = regADeg "sottile" ;
  train_N = regN "treno" ;
  travel_V = regV "viaggiare" ;
  tree_N = regN "albero" ;
 --- trousers_N = regN "pantalon" ;
  ugly_A = regADeg "brutto" ;
  understand_V2 = dirV2 (regV "capire") ;
  university_N = regN "università" ;
  village_N = regN "paese" ;
  wait_V2 = mkV2 (regV "aspettare") ;
  walk_V = regV "camminare" ;
  warm_A = regADeg "caldo" ;
  war_N = regN "guerra" ;
  watch_V2 = dirV2 (regV "guardare") ;
  water_N = regN "acqua" ;
  white_A = compADeg (regA "bianco") ;
  window_N = regN "finestra" ;
  wine_N = regN "vino" ;
  win_V2 = dirV2 (verboV (vincere_94 "vincere")) ;
  woman_N = regN "donna" ;
  wonder_VQ = mkVQ (reflV (regV "domandare")) ;
  wood_N = regN "legno" ;
  write_V2 = dirV2 (verboV (scrivere_82 "scrivere")) ;
  yellow_A = regADeg "giallo" ;
  young_A = prefA (regADeg "giovane") ;

  do_V2 =  dirV2 (verboV (fare_52 "fare")) ;
  now_Adv = mkAdv "adesso" ;
  already_Adv = mkAdv "già" ;
  song_N = femN (regN "canzone") ;
  add_V3 = dirV3 (verboV (giungere_55 "aggiungere")) ParadigmsIta.dative ;
  number_N = regN "numero" ;
  put_V2 = dirV2 (verboV (mettere_57 "mettere")) ;
  stop_V = reflV (regV "fermare") ;
  jump_V = regV "saltare" ;

  left_Ord = mkOrd (regA "sinistro") ;
  right_Ord = mkOrd (regA "destro") ;
  far_Adv = mkAdv "lontano" ;
  correct_A = regA "corretto" ;
  dry_A = regA "secco" ;
  dull_A = regA "noioso" ;
  full_A = regA "pieno" ;
  heavy_A = regA "pesante" ;
  near_A = regA "vicino" ;
  rotten_A = regA "marcio" ;
  round_A = regA "rotondo" ;
  sharp_A = regA "aguzzo" ;
  smooth_A = regA "liscio" ;
  straight_A = regA "diretto" ;
  wet_A = regA "bagnato" ;
  wide_A = regA "largo" ;
  animal_N = regN "animale" ;
  ashes_N = regN "cenere" ;
  back_N = regN "schiena" ;
  bark_N = regN "corteccia" ;
  belly_N = regN "pancia" ;
  blood_N = regN "sangue" ;
  bone_N = regN "osso" ;
  breast_N = regN "seno" ;
  cloud_N = regN "nuvola" ;
  day_N = regN "giorno" ;
  dust_N = regN "polvere" ;
  ear_N = regN "orecchio" ;
  earth_N = regN "terra" ;
  egg_N = mkN "uovo" "uova" masculine ; -- fem in Pl
  eye_N = regN "occhio" ;
  fat_N = regN "grasso" ;
  feather_N = regN "piuma" ;
  fingernail_N = regN "unghia" ;
  fire_N = regN "fuoco" ;
  flower_N = regN "fiore" ;
  fog_N = regN "nebbia" ;
  foot_N = regN "piede" ;
  forest_N = regN "bosco" ;
  grass_N = regN "erba" ;
  guts_N = regN "intestino" ;
  hair_N = regN "capello" ;
  hand_N = femN (regN "mano") ;
  head_N = regN "testa" ;
  heart_N = regN "cuore" ;
  horn_N = regN "corno" ;
  husband_N = regN "marito" ;
  ice_N = regN "ghiaccio" ;
  knee_N = regN "ginocchio" ;
  leaf_N = regN "foglia" ;
  leg_N = regN "gamba" ;
  liver_N = regN "fegato" ;
  louse_N = regN "pidocchio" ;
  mouth_N = regN "bocca" ;
  name_N = regN "nome" ;
  neck_N = regN "collo" ;
  night_N = femN (regN "notte") ;
  nose_N = regN "naso" ;
  person_N = regN "persona" ;
  rain_N = regN "pioggia" ;
  road_N = regN "strada" ;
  root_N = femN (regN "radice") ;
  rope_N = regN "corda" ;
  salt_N = regN "sale" ;
  sand_N = regN "sabbia" ;
  seed_N = regN "seme" ;
  skin_N = femN (regN "pelle") ;
  sky_N = regN "cielo" ;
  smoke_N = regN "fumo" ;
  snow_N = femN (regN "neve") ;
  stick_N = regN "bastone" ;
  tail_N = regN "coda" ;
  tongue_N = regN "lingua" ;
  tooth_N = regN "dente" ;
  wife_N = regN "donna" ;
  wind_N = regN "vento" ;
  wing_N = regN "ala" ;
  worm_N = regN "verme" ;
  year_N = regN "anno" ;
  bite_V2 = dirV2 (verboV (esplodere_51 "mordere")) ;
  blow_V = regV "soffiare" ;
  burn_V = regV "bruciare" ;
  count_V2 = dirV2 (regV "contare") ;
  cut_V2 = dirV2 (regV "tagliare") ;
  dig_V = regV "scavare" ;
  fall_V = essereV (verboV (cadere_28 "cadere")) ;
  fear_V2 = dirV2 (verboV (temere_20 "temere")) ;
  fight_V2 = dirV2 (regV "lottare") ;
  float_V = regV "galleggiare" ;
  flow_V = verboV (finire_100 "fluire") ;
  fly_V = regV "volare" ;
  freeze_V = regV "gelare" ;
  give_V3 = dirdirV3 (verboV (dare_15 "dare")) ;
  hit_V2 = dirV2 (regV "colpire") ;
  hold_V2 = dirV2 (verboV (venire_110 "tenire")) ;
  hunt_V2 = dirV2 (regV "cacciare") ;
  kill_V2 = dirV2 (verboV (ridere_74 "uccidere")) ;
  laugh_V = verboV (ridere_74 "ridere") ;
  lie_V = verboV (piacere_64 "giacere") ;
  play_V = regV "giocare" ;
  pull_V2 = dirV2 (regV "tirare") ;
  push_V2 = dirV2 (verboV (cingere_31 "spingere")) ;
  rub_V2 = dirV2 (regV "strofinare") ;
  scratch_V2 = dirV2 (regV "graffiare") ;
  sew_V = verboV (cucire_103 "cucire") ;
  sing_V = regV "cantare" ;
  sit_V = reflV (verboV (sedere_84 "sedere")) ;
  smell_V = verboV (sentire_99 "sentire") ;
  spit_V = regV "sputare" ;
  split_V2 = dirV2 (verboV (ridere_74 "dividere")) ;
  squeeze_V2 = dirV2 (verboV (temere_20 "spremere")) ;
  stab_V2 = dirV2 (regV "pugnalare") ;
  stand_V = verboV (stare_16 "stare") ;   ---- in piedi
  suck_V2 = dirV2 (regV "succhiare") ;
  swell_V = regV "gonfiare" ;
  swim_V = regV "nuotare" ;
  think_V = regV "pensare" ;
  throw_V2 = dirV2 (regV "gettare") ;
  tie_V2 = dirV2 (regV "legare") ;
  turn_V = regV "girare" ;
  vomit_V = regV "vomitare" ;
  wash_V2 = dirV2 (regV "lavare") ;
  wipe_V2 = dirV2 (regV "asciugare") ;
    breathe_V = (regV "respirare") ;

  grammar_N = regN "grammatica" ;
  language_N = regN "lingua" ;
  rule_N = regN "regola" ;

  question_N = regN "domanda" ;
  today_Adv = mkAdv "oggi" ;

  ready_A = mkA "pronto" ;
  reason_N = mkN "ragione" feminine ;
  uncertain_A = mkA "insicuro" ;

} ;
