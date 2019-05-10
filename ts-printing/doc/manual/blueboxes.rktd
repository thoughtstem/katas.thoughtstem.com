1203
((3) 0 () 1 ((q lib "ts-printing/common.rkt")) () (h ! (equal) ((c def c (c (? . 0) q all->Desktop)) q (745 . 2)) ((c def c (c (? . 0) q ts-battle-arena-asp-2019->Desktop)) q (77 . 2)) ((c def c (c (? . 0) q ts-battle-arena-starwars-summer-camp-2019->Desktop)) q (208 . 2)) ((c def c (c (? . 0) q ts-k2-sea-summer-camp-2019->Desktop)) q (535 . 2)) ((c def c (c (? . 0) q list->folder)) q (863 . 4)) ((c def c (c (? . 0) q FRONT-COLOR)) q (969 . 5)) ((c form c (c (? . 0) q begin-job)) q (0 . 2)) ((c def c (c (? . 0) q ts-k2-farm-summer-camp-2019->Desktop)) q (475 . 2)) ((c form c (c (? . 0) q begin-k2-identifier-job)) q (654 . 2)) ((c def c (c (? . 0) q ts-survival-asp-2019->Desktop)) q (282 . 2)) ((c def c (c (? . 0) q ts-survival-minecraft-summer-camp-2019->Desktop)) q (335 . 2)) ((c def c (c (? . 0) q FRONT-COLOR-FG)) q (1076 . 5)) ((c form c (c (? . 0) q begin-identifier-job)) q (781 . 2)) ((c def c (c (? . 0) q FRONT-TITLE)) q (1188 . 5)) ((c def c (c (? . 0) q ts-survival-pokemon-summer-camp-2019->Desktop)) q (406 . 2)) ((c def c (c (? . 0) q ts-battle-arena-fortnite-summer-camp-2019->Desktop)) q (134 . 2)) ((c def c (c (? . 0) q ts-k2-hero-summer-camp-2019->Desktop)) q (594 . 2))))
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
(begin-k2-identifier-job desktop-folder (collection [parameter val] ...) ...)
procedure
(all->Desktop) -> void?
syntax
(begin-identifier-job desktop-folder (lang [parameter val] ...) ...)
procedure
(list->folder card-list dest) -> void?
  card-list : (listof pict?)
  dest : path?
parameter
(FRONT-COLOR) -> color?
(FRONT-COLOR color) -> void?
  color : color?
 = "aquamarine"
parameter
(FRONT-COLOR-FG) -> color?
(FRONT-COLOR-FG color) -> void?
  color : color?
 = "palegreen"
parameter
(FRONT-TITLE) -> pict?
(FRONT-TITLE pict) -> void?
  pict : pict?
 = (blank)
