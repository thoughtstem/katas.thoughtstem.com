2473
((3) 0 () 1 ((q lib "ts-printing/k2-identifier-cards/print-jobs.rkt")) () (h ! (equal) ((c form c (c (? . 0) q begin-identifier-job)) q (2467 . 2) (2385 . 2)) ((c def c (c (? . 0) q survival-pokemon->Desktop)) q (2795 . 2)) ((c def c (c (? . 0) q blank-bg)) q (176 . 2)) ((c def c (c (? . 0) q VERSION)) q (1314 . 5)) ((c def c (c (? . 0) q all->Desktop)) q (2968 . 2) (2549 . 2)) ((c def c (c (? . 0) q hero->Desktop)) q (3113 . 2)) ((c def c (c (? . 0) q battlearena-fortnite->Desktop)) q (2638 . 2)) ((c def c (c (? . 0) q ts-survival-pokemon-summer-camp-2019->Desktop)) q (2137 . 2)) ((c def c (c (? . 0) q BACK-MARGIN)) q (496 . 5)) ((c def c (c (? . 0) q battlearena-starwars->Desktop)) q (2691 . 2)) ((c def c (c (? . 0) q FRONT-MARGIN)) q (392 . 5)) ((c def c (c (? . 0) q farm->Desktop)) q (3076 . 2)) ((c form c (c (? . 0) q begin-job)) q (1731 . 2)) ((c def c (c (? . 0) q ts-survival-asp-2019->Desktop)) q (2013 . 2)) ((c def c (c (? . 0) q battlearena-avengers->Desktop)) q (2585 . 2)) ((c def c (c (? . 0) q HEIGHT)) q (299 . 5)) ((c def c (c (? . 0) q zoo->Desktop)) q (3040 . 2)) ((c def c (c (? . 0) q ts-k2-hero-summer-camp-2019->Desktop)) q (2325 . 2)) ((c def c (c (? . 0) q FRONT-META-FUNCTION)) q (905 . 5)) ((c def c (c (? . 0) q FRONT-TITLE)) q (1633 . 5)) ((c def c (c (? . 0) q PADDING)) q (598 . 5)) ((c def c (c (? . 0) q ts-battle-arena-starwars-summer-camp-2019->Desktop)) q (1939 . 2)) ((c def c (c (? . 0) q list->folder)) q (0 . 5)) ((c def c (c (? . 0) q survival-minecraft->Desktop)) q (2744 . 2)) ((c def c (c (? . 0) q sea->Desktop)) q (3004 . 2)) ((c def c (c (? . 0) q ts-survival-minecraft-summer-camp-2019->Desktop)) q (2066 . 2)) ((c def c (c (? . 0) q BACK-META-FUNCTION)) q (1064 . 5)) ((c def c (c (? . 0) q ts-battle-arena-fortnite-summer-camp-2019->Desktop)) q (1865 . 2)) ((c def c (c (? . 0) q assets->Desktop)) q (2844 . 2)) ((c def c (c (? . 0) q FRONT-FG-COLOR)) q (1525 . 5)) ((c def c (c (? . 0) q ts-battle-arena-asp-2019->Desktop)) q (1808 . 2)) ((c def c (c (? . 0) q STARTING-CARD-NUMBER)) q (1407 . 5)) ((c def c (c (? . 0) q TOTAL)) q (1226 . 5)) ((c def c (c (? . 0) q FRONT-BG-COLOR)) q (691 . 5)) ((c def c (c (? . 0) q BACK-BG-COLOR)) q (799 . 5)) ((c form c (c (? . 0) q begin-k2-identifier-job)) q (2883 . 2)) ((c def c (c (? . 0) q ts-k2-farm-summer-camp-2019->Desktop)) q (2206 . 2)) ((c def c (c (? . 0) q ts-k2-sea-summer-camp-2019->Desktop)) q (2266 . 2)) ((c def c (c (? . 0) q WIDTH)) q (208 . 5))))
procedure
(list->folder card-list [folder-name dest]) -> void?
  card-list : (listof pict?)
  folder-name : string? = "my-cards"
  dest : path? = DESKTOP
procedure
(blank-bg) -> pict?
parameter
(WIDTH) -> number?
(WIDTH number) -> void?
  number : number?
 = 1200
parameter
(HEIGHT) -> number?
(HEIGHT number) -> void?
  number : number?
 = 1200
parameter
(FRONT-MARGIN) -> number?
(FRONT-MARGIN number) -> void?
  number : number?
 = 200
parameter
(BACK-MARGIN) -> number?
(BACK-MARGIN number) -> void?
  number : number?
 = 200
parameter
(PADDING) -> number?
(PADDING number) -> void?
  number : number?
 = 10
parameter
(FRONT-BG-COLOR) -> color?
(FRONT-BG-COLOR color) -> void?
  color : color?
 = "white"
parameter
(BACK-BG-COLOR) -> color?
(BACK-BG-COLOR color) -> void?
  color : color?
 = "white"
parameter
(FRONT-META-FUNCTION) -> (-> number? pict?)
(FRONT-META-FUNCTION procedure) -> void?
  procedure : (-> number? pict?)
 = default-meta
parameter
(BACK-META-FUNCTION) -> (-> number? pict?)
(BACK-META-FUNCTION procedure) -> void?
  procedure : (-> number? pict?)
 = (thunk* (blank))
parameter
(TOTAL) -> number?
(TOTAL number) -> void?
  number : number?
 = 0
parameter
(VERSION) -> string?
(VERSION string) -> void?
  string : string?
 = ""
parameter
(STARTING-CARD-NUMBER) -> number?
(STARTING-CARD-NUMBER number) -> void?
  number : number?
 = 0
parameter
(FRONT-FG-COLOR) -> color?
(FRONT-FG-COLOR color) -> void?
  color : color?
 = "white"
parameter
(FRONT-TITLE) -> pict?
(FRONT-TITLE pict) -> void?
  pict : pict?
 = (blank)
syntax
(begin-job desktop-folder (collection [parameter val] ...) ...)
procedure
(ts-battle-arena-asp-2019->Desktop) -> void?
procedure
(ts-battle-arena-fortnite-summer-camp-2019->Desktop) -> void?
procedure
(ts-battle-arena-starwars-summer-camp-2019->Desktop) -> void?
procedure
(ts-survival-asp-2019->Desktop) -> void?
procedure
(ts-survival-minecraft-summer-camp-2019->Desktop) -> void?
procedure
(ts-survival-pokemon-summer-camp-2019->Desktop) -> void?
procedure
(ts-k2-farm-summer-camp-2019->Desktop) -> void?
procedure
(ts-k2-sea-summer-camp-2019->Desktop) -> void?
procedure
(ts-k2-hero-summer-camp-2019->Desktop) -> void?
syntax
(begin-identifier-job desktop-folder (lang [parameter val] ...) ...)
syntax
(begin-identifier-job desktop-folder (lang [parameter val] ...) ...)
procedure
(all->Desktop) -> void?
procedure
(battlearena-avengers->Desktop) -> void?
procedure
(battlearena-fortnite->Desktop) -> void?
procedure
(battlearena-starwars->Desktop) -> void?
procedure
(survival-minecraft->Desktop) -> void?
procedure
(survival-pokemon->Desktop) -> void?
procedure
(assets->Desktop) -> void?
syntax
(begin-k2-identifier-job desktop-folder (lang [parameter val] ...) ...)
procedure
(all->Desktop) -> void?
procedure
(sea->Desktop) -> void?
procedure
(zoo->Desktop) -> void?
procedure
(farm->Desktop) -> void?
procedure
(hero->Desktop) -> void?
