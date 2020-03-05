33
((3) 0 () 0 () () (h ! (equal)))
procedure
(make-entity [s                             
              #:scale scale                 
              #:font-size f-size            
              #:font-face f-face            
              #:font-family f-family        
              #:font-style f-style          
              #:font-weight f-weight        
              #:color color                 
              #:underlined? underlined?     
              #:position pos                
              #:direction dir               
              #:speed spd])             -> any/c
  s : any/c = "[META-SPRITE]"
  scale : number? = 1
  f-size : positive? = 13
  f-face : any/c = MONOSPACE-FONT-FACE
  f-family : symbol? = 'modern
  f-style : symbol? = 'normal
  f-weight : symbol? = 'normal
  color : (or/c symbol? object? string?) = 'yellow
  underlined? : boolean? = #f
  pos : any/c = (posn 400 300)
  dir : number? = 0
  spd : positive? = 0
procedure
(story-cutscene [#:width w       
                 #:height h]     
                 rest ...)   -> any/c
  w : positive? = 800
  h : positive? = 600
  rest : any/c
procedure
(make-text [str                             
            #:scale scale                   
            #:font-size f-size              
            #:font-face f-face              
            #:font-family f-family          
            #:font-style f-style            
            #:font-weight f-weight          
            #:color color                   
            #:underlined? underlined?]) -> any/c
  str : string? = "META-TEXT"
  scale : number? = 1
  f-size : number? = 13
  f-face : any/c = MONOSPACE-FONT-FACE
  f-family : symbol? = 'modern
  f-style : symbol? = 'normal
  f-weight : symbol? = 'normal
  color : (or/c symbol? object? string?) = 'yellow
  underlined? : boolean? = #f
procedure
(page [#:width w                       
       #:height h                      
       #:position p                    
       #:relative-position rp          
       #:bg bg                         
       #:bg-color bg-color             
       #:border-color border-color     
       #:duration dur                  
       #:line-padding line-padding     
       #:mode mode                     
       #:scroll-speed spd]             
       items ...)                  -> any/c
  w : (or/c positive? boolean?) = #f
  h : (or/c positive? boolean?) = #f
  p : any/c = #f
  rp : any/c = #f
  bg : any/c = #f
  bg-color : (or/c symbol? object? string?) = (color 50 50 50)
  border-color : (or/c symbol? object? string?) = 'white
  dur : (or/c positive? boolean?) = #f
  line-padding : positive? = 4
  mode : symbol? = 'still
  spd : positive? = 100
  items : any/c
