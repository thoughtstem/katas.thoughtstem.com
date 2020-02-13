33
((3) 0 () 0 () () (h ! (equal)))
procedure
(orbit-scene [#:fly-speed speed           
              #:fly-mode? fly-mode        
              #:start-position start      
              #:universe universe         
              #:star star                 
              #:objects-list objects]     
              more-objects ...)       -> any/c
  speed : positive? = 750
  fly-mode : boolean? = #t
  start : position-attribute? = (position 0 1.6 30)
  universe : (listof entity?) = (basic-universe)
  star : entity? = '()
  objects : list? = '()
  more-objects : any/c
procedure
(basic-universe [#:universe-color bg-color     
                 #:star-color star-color       
                 #:star-count count            
                 #:star-depth dep              
                 #:star-radius rad             
                 #:star-size size              
                 #:star-texture texture])  -> (listof entity?)
  bg-color : (or/c string? symbol? object?) = 'black
  star-color : (or/c string? symbol? object?) = 'white
  count : real? = 10000
  dep : real? = 250
  rad : real? = 250
  size : real? = 1.0
  texture : any/c = ""
procedure
(basic-star [#:position pos                        
             #:rotation rota                       
             #:scale sca                           
             #:color col                           
             #:texture texture                     
             #:radius r                            
             #:light-distance ld                   
             #:opacity opac                        
             #:show-orbits? orbits?                
             #:label l                             
             #:label-color lc                      
             #:label-position lp                   
             #:label-scale ls                      
             #:animations-list animations-list     
             #:planets-list p-list                 
             #:on-mouse-enter mouse-enter          
             #:on-mouse-leave mouse-leave          
             #:on-mouse-click mouse-click          
             #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 0)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c
          = (first (shuffle (list (tint-img 'brown sun-tex)
                                  (tint-img 'red sun-tex)
                                  (tint-img 'darkred sun-tex)
                                  (tint-img 'lightred sun-tex)
                                  (tint-img 'orange sun-tex)
                                  (tint-img 'darkorange sun-tex)
                                  (tint-img 'lightorange sun-tex)
                                  (tint-img 'yellow sun-tex)
                                  (tint-img 'darkyellow sun-tex)
                                  (tint-img 'lightyellow sun-tex)
                                  (tint-img 'salmon sun-tex)
                                  (tint-img 'purple sun-tex)
                                  (tint-img 'white sun-tex)
                                  sun-tex)))
  r : real? = (random 8 15)
  ld : real? = (* r 35.0)
  opac : between-0-1-inclusive? = 1.0
  orbits? : boolean? = #f
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many (y-rotation))
  p-list : (or/c empty? (listof entity?)) = '()
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(basic-ring [#:tilt tilt           
             #:radius rad          
             #:thickness rt        
             #:opacity opa         
             #:color c             
             #:texture texture     
             #:shader sha])    -> entity?
  tilt : object? = (tilt 0 0 0)
  rad : real? = (random-float 0.25 1.5 #:factor 100)
  rt : real? = (random-float 0.2 2.0 #:factor 1000)
  opa : between-0-1-inclusive?
      = (random-float 0.25 1.0 #:factor 100)
  c : (or/c #f string? symbol? object?) = #f
  texture : any/c = #f
  sha : string? = "standard"
procedure
(basic-planet [#:position pos                        
               #:rotation rota                       
               #:scale sca                           
               #:color col                           
               #:texture texture                     
               #:radius r                            
               #:opacity opac                        
               #:rings-list r-list                   
               #:moons-list m-list                   
               #:label l                             
               #:label-color lc                      
               #:label-position lp                   
               #:label-scale ls                      
               #:show-orbits? orbits?                
               #:animations-list animations-list     
               #:on-mouse-enter mouse-enter          
               #:on-mouse-leave mouse-leave          
               #:on-mouse-click mouse-click          
               #:objects-list c-list])           -> entity?
  pos : object?
      = (position (random-range 25 75) 0 (random-range 25 75))
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = (first (shuffle (list mercury-tex
                                          venus-tex
                                          earth-tex
                                          earthnight-tex
                                          mars-tex
                                          jupiter-tex
                                          saturn-tex
                                          uranus-tex
                                          neptune-tex)))
  r : real? = (random 1 5)
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(basic-moon [#:position pos                        
             #:rotation rota                       
             #:scale sca                           
             #:color col                           
             #:texture texture                     
             #:radius r                            
             #:opacity opac                        
             #:label l                             
             #:label-color lc                      
             #:label-position lp                   
             #:label-scale ls                      
             #:animations-list animations-list     
             #:on-mouse-enter mouse-enter          
             #:on-mouse-leave mouse-leave          
             #:on-mouse-click mouse-click          
             #:objects-list c-list])           -> entity?
  pos : object?
      = (position 0 (random-range 7 12) (random-range 7 12))
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = moon-tex
  r : real? = (random-float 0.25 0.75 #:factor 100)
  opac : between-0-1-inclusive? = 1.0
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many (y-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(basic-asteroid [#:position pos                        
                 #:rotation rota                       
                 #:scale sca                           
                 #:color col                           
                 #:texture texture                     
                 #:radius r                            
                 #:opacity opac                        
                 #:label l                             
                 #:label-color lc                      
                 #:label-position lp                   
                 #:label-scale ls                      
                 #:animations-list animations-list     
                 #:on-mouse-enter mouse-enter          
                 #:on-mouse-leave mouse-leave          
                 #:on-mouse-click mouse-click          
                 #:objects-list c-list])           -> entity?
  pos : object?
      = (position 0 (random-range 7 12) (random-range 7 12))
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c
          = (first (shuffle (list (tint-img 'brown asteroid-tex)
                                  (tint-img 'black asteroid-tex)
                                  (tint-img 'grey asteroid-tex)
                                  (tint-img 'white asteroid-tex)
                                  asteroid-tex)))
  r : real? = (random-float 0.1 0.3 #:factor 100)
  opac : between-0-1-inclusive? = 1.0
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many (y-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(star-sun [#:position pos                        
           #:rotation rota                       
           #:scale sca                           
           #:color col                           
           #:texture texture                     
           #:radius r                            
           #:light-distance ld                   
           #:opacity opac                        
           #:show-orbits? orbits?                
           #:label l                             
           #:label-color lc                      
           #:label-position lp                   
           #:label-scale ls                      
           #:animations-list animations-list     
           #:planets-list p-list                 
           #:on-mouse-enter mouse-enter          
           #:on-mouse-leave mouse-leave          
           #:on-mouse-click mouse-click          
           #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 -250)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = sun-tex
  r : real? = 109
  ld : real? = (* r 35.0)
  opac : between-0-1-inclusive? = 1.0
  orbits? : boolean? = #f
  l : (or/c boolean? string?) = "Sun"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many (y-rotation))
  p-list : (or/c empty? (listof entity?)) = '()
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-mercury [#:position pos                        
                 #:rotation rota                       
                 #:scale sca                           
                 #:color col                           
                 #:texture texture                     
                 #:radius r                            
                 #:opacity opac                        
                 #:rings-list r-list                   
                 #:moons-list m-list                   
                 #:label l                             
                 #:label-color lc                      
                 #:label-position lp                   
                 #:label-scale ls                      
                 #:show-orbits? orbits?                
                 #:animations-list animations-list     
                 #:on-mouse-enter mouse-enter          
                 #:on-mouse-leave mouse-leave          
                 #:on-mouse-click mouse-click          
                 #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 2)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = mercury-tex
  r : real? = 0.38
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Mercury"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-venus [#:position pos                        
               #:rotation rota                       
               #:scale sca                           
               #:color col                           
               #:texture texture                     
               #:radius r                            
               #:opacity opac                        
               #:rings-list r-list                   
               #:moons-list m-list                   
               #:label l                             
               #:label-color lc                      
               #:label-position lp                   
               #:label-scale ls                      
               #:show-orbits? orbits?                
               #:animations-list animations-list     
               #:on-mouse-enter mouse-enter          
               #:on-mouse-leave mouse-leave          
               #:on-mouse-click mouse-click          
               #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 3)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = venus-tex
  r : real? = 0.95
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Venus"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-earth [#:position pos                        
               #:rotation rota                       
               #:scale sca                           
               #:color col                           
               #:texture texture                     
               #:radius r                            
               #:opacity opac                        
               #:rings-list r-list                   
               #:moons-list m-list                   
               #:label l                             
               #:label-color lc                      
               #:label-position lp                   
               #:label-scale ls                      
               #:show-orbits? orbits?                
               #:animations-list animations-list     
               #:on-mouse-enter mouse-enter          
               #:on-mouse-leave mouse-leave          
               #:on-mouse-click mouse-click          
               #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 3)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = earth-tex
  r : real? = 1
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Earth"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(moon-moon [#:position pos                        
            #:rotation rota                       
            #:scale sca                           
            #:color col                           
            #:texture texture                     
            #:radius r                            
            #:opacity opac                        
            #:label l                             
            #:label-color lc                      
            #:label-position lp                   
            #:label-scale ls                      
            #:animations-list animations-list     
            #:on-mouse-enter mouse-enter          
            #:on-mouse-leave mouse-leave          
            #:on-mouse-click mouse-click          
            #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 2)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = moon-tex
  r : real? = 0.27
  opac : between-0-1-inclusive? = 1.0
  l : (or/c boolean? string?) = "Moon"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many (y-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-mars [#:position pos                        
              #:rotation rota                       
              #:scale sca                           
              #:color col                           
              #:texture texture                     
              #:radius r                            
              #:opacity opac                        
              #:rings-list r-list                   
              #:moons-list m-list                   
              #:label l                             
              #:label-color lc                      
              #:label-position lp                   
              #:label-scale ls                      
              #:show-orbits? orbits?                
              #:animations-list animations-list     
              #:on-mouse-enter mouse-enter          
              #:on-mouse-leave mouse-leave          
              #:on-mouse-click mouse-click          
              #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 3)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = mars-tex
  r : real? = 0.53
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Mars"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 10)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-jupiter [#:position pos                        
                 #:rotation rota                       
                 #:scale sca                           
                 #:color col                           
                 #:texture texture                     
                 #:radius r                            
                 #:opacity opac                        
                 #:rings-list r-list                   
                 #:moons-list m-list                   
                 #:label l                             
                 #:label-color lc                      
                 #:label-position lp                   
                 #:label-scale ls                      
                 #:show-orbits? orbits?                
                 #:animations-list animations-list     
                 #:on-mouse-enter mouse-enter          
                 #:on-mouse-leave mouse-leave          
                 #:on-mouse-click mouse-click          
                 #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 23)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = jupiter-tex
  r : real? = 11.19
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Jupiter"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-saturn [#:position pos                        
                #:rotation rota                       
                #:scale sca                           
                #:color col                           
                #:texture texture                     
                #:radius r                            
                #:opacity opac                        
                #:rings-list r-list                   
                #:moons-list m-list                   
                #:label l                             
                #:label-color lc                      
                #:label-position lp                   
                #:label-scale ls                      
                #:show-orbits? orbits?                
                #:animations-list animations-list     
                #:on-mouse-enter mouse-enter          
                #:on-mouse-leave mouse-leave          
                #:on-mouse-click mouse-click          
                #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 21)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = saturn-tex
  r : real? = 9.4
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?))
         = (list (basic-ring #:tilt (tilt 45 90 0)
                             #:opacity 0.8
                             #:texture saturnring-tex
                             #:radius (- (* r 1.55) r)
                             #:thickness (* r 0.9)))
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Saturn"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-uranus [#:position pos                        
                #:rotation rota                       
                #:scale sca                           
                #:color col                           
                #:texture texture                     
                #:radius r                            
                #:opacity opac                        
                #:rings-list r-list                   
                #:moons-list m-list                   
                #:label l                             
                #:label-color lc                      
                #:label-position lp                   
                #:label-scale ls                      
                #:show-orbits? orbits?                
                #:animations-list animations-list     
                #:on-mouse-enter mouse-enter          
                #:on-mouse-leave mouse-leave          
                #:on-mouse-click mouse-click          
                #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 9)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = uranus-tex
  r : real? = 4.04
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Uranus"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
procedure
(planet-neptune [#:position pos                        
                 #:rotation rota                       
                 #:scale sca                           
                 #:color col                           
                 #:texture texture                     
                 #:radius r                            
                 #:opacity opac                        
                 #:rings-list r-list                   
                 #:moons-list m-list                   
                 #:label l                             
                 #:label-color lc                      
                 #:label-position lp                   
                 #:label-scale ls                      
                 #:show-orbits? orbits?                
                 #:animations-list animations-list     
                 #:on-mouse-enter mouse-enter          
                 #:on-mouse-leave mouse-leave          
                 #:on-mouse-click mouse-click          
                 #:objects-list c-list])           -> entity?
  pos : object? = (position 0 0 9)
  rota : object? = (rotation 0.0 0.0 0.0)
  sca : (or/c number? object?) = (scale 1.0 1.0 1.0)
  col : (or/c string? symbol? object?) = (color 255 255 255)
  texture : any/c = neptune-tex
  r : real? = 3.88
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Neptune"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position 0 r 0)
  ls : (or/c number? object?) = (scale (* 2 r) (* 2 r) 1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many (x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
