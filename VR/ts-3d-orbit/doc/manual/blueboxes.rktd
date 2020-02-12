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
  start : position-attribute? = (position01.630)
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
  pos : object? = (position000)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c
          = (first(shuffle(list(tint-img'brownsun-tex)(tint-img'redsun-tex)(tint-img'darkredsun-tex)(tint-img'lightredsun-tex)(tint-img'orangesun-tex)(tint-img'darkorangesun-tex)(tint-img'lightorangesun-tex)(tint-img'yellowsun-tex)(tint-img'darkyellowsun-tex)(tint-img'lightyellowsun-tex)(tint-img'salmonsun-tex)(tint-img'purplesun-tex)(tint-img'whitesun-tex)sun-tex)))
  r : real? = (random815)
  ld : real? = (*r35.0)
  opac : between-0-1-inclusive? = 1.0
  orbits? : boolean? = #f
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many(y-rotation))
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
  tilt : object? = (tilt000)
  rad : real? = (random-float0.251.5#:factor100)
  rt : real? = (random-float0.22.0#:factor1000)
  opa : between-0-1-inclusive?
      = (random-float0.251.0#:factor100)
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
      = (position(random-range2575)0(random-range2575))
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c
          = (first(shuffle(listmercury-texvenus-texearth-texearthnight-texmars-texjupiter-texsaturn-texuranus-texneptune-tex)))
  r : real? = (random15)
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position0(random-range712)(random-range712))
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = moon-tex
  r : real? = (random-float0.250.75#:factor100)
  opac : between-0-1-inclusive? = 1.0
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many(y-rotation))
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
  pos : object? = (position0(random-range712)(random-range712))
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c
          = (first(shuffle(list(tint-img'brownasteroid-tex)(tint-img'blackasteroid-tex)(tint-img'greyasteroid-tex)(tint-img'whiteasteroid-tex)asteroid-tex)))
  r : real? = (random-float0.10.3#:factor100)
  opac : between-0-1-inclusive? = 1.0
  l : (or/c boolean? string?) = #f
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many(y-rotation))
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
  pos : object? = (position00-250)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = sun-tex
  r : real? = 109
  ld : real? = (*r35.0)
  opac : between-0-1-inclusive? = 1.0
  orbits? : boolean? = #f
  l : (or/c boolean? string?) = "Sun"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many(y-rotation))
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
  pos : object? = (position002)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = mercury-tex
  r : real? = 0.38
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Mercury"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position003)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = venus-tex
  r : real? = 0.95
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Venus"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position003)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = earth-tex
  r : real? = 1
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Earth"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position002)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = moon-tex
  r : real? = 0.27
  opac : between-0-1-inclusive? = 1.0
  l : (or/c boolean? string?) = "Moon"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  animations-list : (or/c empty? (listof object?))
                  = (do-many(y-rotation))
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
  pos : object? = (position003)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = mars-tex
  r : real? = 0.53
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Mars"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)10)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position0023)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = jupiter-tex
  r : real? = 11.19
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Jupiter"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position0021)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = saturn-tex
  r : real? = 9.4
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?))
         = (list(basic-ring#:tilt(tilt45900)#:opacity0.8#:texturesaturnring-tex#:radius(-(*r1.55)r)#:thickness(*r0.9)))
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Saturn"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position009)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = uranus-tex
  r : real? = 4.04
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Uranus"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
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
  pos : object? = (position009)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (scale1.01.01.0)
  col : (or/c string? symbol? object?) = (color255255255)
  texture : any/c = neptune-tex
  r : real? = 3.88
  opac : between-0-1-inclusive? = 1.0
  r-list : (or/c empty? (listof entity?)) = '()
  m-list : (or/c empty? (listof entity?)) = '()
  l : (or/c boolean? string?) = "Neptune"
  lc : (or/c string? symbol? object?) = 'white
  lp : object? = (position0r0)
  ls : (or/c number? object?) = (scale(*2r)(*2r)1)
  orbits? : boolean? = #f
  animations-list : (or/c empty? (listof object?))
                  = (do-many(x-rotation))
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  c-list : (or/c empty? (listof entity?)) = '()
