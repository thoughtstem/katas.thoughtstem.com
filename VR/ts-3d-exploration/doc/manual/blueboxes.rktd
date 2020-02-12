33
((3) 0 () 0 () () (h ! (equal)))
procedure
(exploration-scene [#:speed speed                        
                    #:fly-mode? fly-mode                 
                    #:environment environment            
                    #:ocean ocean                        
                    #:stars stars                        
                    #:sky-objects sky-objects            
                    #:ground-objects ground-objects]     
                    more-objects ...)                -> any/c
  speed : positive? = 300
  fly-mode : boolean? = #t
  environment : any/c
              = (basic-environment#:basic?#f#:preset'default)
  ocean : any/c = #f
  stars : any/c = #f
  sky-objects : any/c = '()
  ground-objects : any/c = '()
  more-objects : any/c
procedure
(basic-environment [#:basic? basic?                  
                    #:preset preset                  
                    #:dressing dressing              
                    #:dressing-amount amount         
                    #:dressing-color color           
                    #:dressing-scale scale           
                    #:dressing-variance variance     
                    #:fog fog                        
                    #:ground ground                  
                    #:ground-color-1 color-1         
                    #:ground-color-2 color-2         
                    #:ground-texture texture         
                    #:horizon-color horizon          
                    #:sky-color sky])            -> entity?
  basic? : boolean? = #t
  preset : (or/c preset?) = 'default
  dressing : (or/c #f dressing?) = #f
  amount : (or/c #f real?) = #f
  color : (or/c string? symbol? object?) = #f
  scale : (or/c #f real?) = #f
  variance : (or/c #f object?) = #f
  fog : (or/c between-0-1-inclusive?) = 0
  ground : (or/c #f ground?) = #f
  color-1 : (or/c string? symbol? object?) = #f
  color-2 : (or/c string? symbol? object?) = #f
  texture : (or/c #f texture?) = #f
  horizon : (or/c string? symbol? object?) = #f
  sky : (or/c string? symbol? object?) = #f
procedure
(basic-box [#:position posn                  
            #:rotation rota                  
            #:scale sca                      
            #:depth dep                      
            #:height hei                     
            #:width wid                      
            #:color col                      
            #:opacity opac                   
            #:texture tex                    
            #:on-mouse-enter mouse-enter     
            #:on-mouse-leave mouse-leave     
            #:on-mouse-click mouse-click     
            #:animations-list a-list         
            #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c number? object?) = (make-scale1.01.01.0)
  dep : real? = 1.0
  hei : real? = 1.0
  wid : real? = 1.0
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-cone [#:position posn                  
             #:rotation rota                  
             #:scale sca                      
             #:radius-bottom radb             
             #:radius-top radt                
             #:height hei                     
             #:color col                      
             #:opacity opac                   
             #:texture tex                    
             #:on-mouse-enter mouse-enter     
             #:on-mouse-leave mouse-leave     
             #:on-mouse-click mouse-click     
             #:animations-list a-list         
             #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  radb : real? = 1.0
  radt : real? = 0.01
  hei : real? = 1.0
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-cylinder [#:position posn                  
                 #:rotation rota                  
                 #:scale sca                      
                 #:height hei                     
                 #:radius r                       
                 #:color col                      
                 #:opacity opac                   
                 #:texture tex                    
                 #:on-mouse-enter mouse-enter     
                 #:on-mouse-leave mouse-leave     
                 #:on-mouse-click mouse-click     
                 #:animations-list a-list         
                 #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  hei : real? = 1.0
  r : real? = 0.5
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-dodecahedron [#:position posn                  
                     #:rotation rota                  
                     #:scale sca                      
                     #:radius r                       
                     #:color col                      
                     #:opacity opac                   
                     #:texture tex                    
                     #:on-mouse-enter mouse-enter     
                     #:on-mouse-leave mouse-leave     
                     #:on-mouse-click mouse-click     
                     #:animations-list a-list         
                     #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  r : real? = 0.5
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-icosahedron [#:position posn                  
                    #:rotation rota                  
                    #:scale sca                      
                    #:radius r                       
                    #:color col                      
                    #:opacity opac                   
                    #:texture tex                    
                    #:on-mouse-enter mouse-enter     
                    #:on-mouse-leave mouse-leave     
                    #:on-mouse-click mouse-click     
                    #:animations-list a-list         
                    #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  r : real? = 0.5
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-octahedron [#:position posn                  
                   #:rotation rota                  
                   #:scale sca                      
                   #:radius r                       
                   #:color col                      
                   #:opacity opac                   
                   #:texture tex                    
                   #:on-mouse-enter mouse-enter     
                   #:on-mouse-leave mouse-leave     
                   #:on-mouse-click mouse-click     
                   #:animations-list a-list         
                   #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  r : real? = 0.5
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-sphere [#:position posn                  
               #:rotation rota                  
               #:scale sca                      
               #:radius r                       
               #:color col                      
               #:opacity opac                   
               #:texture tex                    
               #:shader sha                     
               #:on-mouse-enter mouse-enter     
               #:on-mouse-leave mouse-leave     
               #:on-mouse-click mouse-click     
               #:animations-list a-list         
               #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  r : real? = 1.0
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  sha : (or/c string? symbol?) = "standard"
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-tetrahedron [#:position posn                  
                    #:rotation rota                  
                    #:scale sca                      
                    #:radius r                       
                    #:color col                      
                    #:opacity opac                   
                    #:texture tex                    
                    #:on-mouse-enter mouse-enter     
                    #:on-mouse-leave mouse-leave     
                    #:on-mouse-click mouse-click     
                    #:animations-list a-list         
                    #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  r : real? = 0.5
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-torus [#:position posn                  
              #:rotation rota                  
              #:scale sca                      
              #:radius r                       
              #:radius-tubular rt              
              #:color col                      
              #:opacity opac                   
              #:texture tex                    
              #:on-mouse-enter mouse-enter     
              #:on-mouse-leave mouse-leave     
              #:on-mouse-click mouse-click     
              #:animations-list a-list         
              #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  r : real? = 0.5
  rt : real? = 0.3
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-text [#:position posn                  
             #:rotation rota                  
             #:scale sca                      
             #:value val                      
             #:align ali                      
             #:baseline bas                   
             #:font font                      
             #:letter-spacing space           
             #:color col                      
             #:opacity opac                   
             #:side side                      
             #:on-mouse-enter mouse-enter     
             #:on-mouse-leave mouse-leave     
             #:on-mouse-click mouse-click     
             #:animations-list a-list         
             #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  val : string? = "Hello, World!"
  ali : (or/c 'center 'left 'right) = 'center
  bas : (or/c 'top 'center 'bottom) = 'center
  font : symbol? = 'roboto
  space : real? = 1
  col : (or/c string? symbol? object?) = (make-color255255255)
  opac : between-0-1-inclusive? = 1.0
  side : (or/c 'front 'back 'double) = 'double
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-circle [#:position posn                  
               #:rotation rota                  
               #:scale sca                      
               #:radius r                       
               #:color col                      
               #:opacity opac                   
               #:texture tex                    
               #:on-mouse-enter mouse-enter     
               #:on-mouse-leave mouse-leave     
               #:on-mouse-click mouse-click     
               #:animations-list a-list         
               #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  r : real? = 0.5
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-plane [#:position posn                  
              #:rotation rota                  
              #:scale sca                      
              #:color col                      
              #:opacity opac                   
              #:texture tex                    
              #:on-mouse-enter mouse-enter     
              #:on-mouse-leave mouse-leave     
              #:on-mouse-click mouse-click     
              #:animations-list a-list         
              #:height hei                     
              #:width wid                      
              #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  hei : real? = 1.0
  wid : real? = 1.0
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-ring [#:position posn                  
             #:rotation rota                  
             #:scale sca                      
             #:color col                      
             #:radius-inner radi              
             #:radius-outer rado              
             #:opacity opac                   
             #:texture tex                    
             #:shader sha                     
             #:on-mouse-enter mouse-enter     
             #:on-mouse-leave mouse-leave     
             #:on-mouse-click mouse-click     
             #:animations-list a-list         
             #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  col : (or/c string? symbol? object?) = (make-color128128128)
  radi : real? = 0.8
  rado : real? = 1.2
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  sha : (or/c string? symbol?) = "standard"
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-triangle [#:position posn                  
                 #:rotation rota                  
                 #:scale sca                      
                 #:color col                      
                 #:opacity opac                   
                 #:texture tex                    
                 #:on-mouse-enter mouse-enter     
                 #:on-mouse-leave mouse-leave     
                 #:on-mouse-click mouse-click     
                 #:animations-list a-list         
                 #:components-list c])        -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  col : (or/c string? symbol? object?) = (make-color128128128)
  opac : between-0-1-inclusive? = 1.0
  tex : (or/c string? h:image?) = ""
  mouse-enter : (or/c #f (listof object?)) = #f
  mouse-leave : (or/c #f (listof object?)) = #f
  mouse-click : (or/c #f (listof object?)) = #f
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(3d-model [#:position posn              
           #:rotation rota              
           #:scale sca                  
           #:model model                
           #:animations-list a-list     
           #:components-list c])    -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  model : string? = ""
  a-list : (or/c empty? (listof object?)) = '()
  c : (or/c empty? (listof entity?)) = '()
procedure
(basic-stars [#:position posn      
              #:rotation rota      
              #:scale sca          
              #:color col          
              #:count count        
              #:depth depth        
              #:radius rad         
              #:star-size size     
              #:texture tex])  -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  col : (or/c string? symbol? object?) = "white"
  count : real? = 10000
  depth : real? = 180
  rad : real? = 180
  size : real? = 1.0
  tex : (or/c string? h:image?) = ""
procedure
(basic-ocean [#:position posn                  
              #:rotation rota                  
              #:scale sca                      
              #:amplitude amp                  
              #:amplitude-variance amp-var     
              #:color col                      
              #:density den                    
              #:depth dep                      
              #:opacity opac                   
              #:speed spe                      
              #:speed-variance spe-var         
              #:width wid])                -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation-90.00.00.0)
  sca : (or/c object? number?) = (make-scale1.01.01.0)
  amp : real? = 0.1
  amp-var : real? = 0.3
  col : (or/c string? symbol? object?)
      = (make-color(random256)(random256)(random256))
  den : real? = 10
  dep : real? = 10
  opac : between-0-1-inclusive? = 0.8
  spe : real? = 1.0
  spe-var : real? = 2.0
  wid : real? = 10
procedure
(basic-particles [#:position posn         
                  #:rotation rota         
                  #:scale scale           
                  #:preset preset         
                  #:image img             
                  #:size size             
                  #:speed spe             
                  #:age age               
                  #:color col             
                  #:count count           
                  #:posn-spread spr]) -> entity?
  posn : object? = (position0.00.00.0)
  rota : object? = (rotation0.00.00.0)
  scale : object? = (make-scale1.01.01.0)
  preset : (or/c 'default 'dust 'snow 'rain) = 'default
  img : (or/c #f h:image?) = #f
  size : (or/c #f real?) = #f
  spe : (or/c #f real?) = #f
  age : (or/c #f real?) = #f
  col : (or/c #f string? symbol? object?) = #f
  count : (or/c #f real?) = #f
  spr : (or/c #f object?) = #f
