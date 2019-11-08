#lang racket

(require TS-HomeSite/widgets)

(with-output-to-file 
  "index.html" #:exists 'replace
  (thunk
    (display
      (render-normal-page  
        #:absolute-links? #t
        "Kata Collections"
        (~a 
          (collection-link 'GE "2D Games" #:link-path "GE/index.html")     
          (collection-link 'VR "3D (coming soon)" #:link-path "VR/index.html")
          )))))
