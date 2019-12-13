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
          (collection-link 'COACH "Coach Resources" #:link-path "COACH/index.html")
          (collection-link 'K2 "K-2nd Games" #:link-path "K2/index.html")
          (collection-link 'GE "2D Games (GE)" #:link-path "GE/index.html")
          (collection-link 'ME "2D Games (ME)" #:link-path "ME/index.html")     
          (collection-link 'VR "3D Games" #:link-path "VR/index.html")
          (collection-link 'MISC "Misc Languages" #:link-path "MISC/index.html")
          )))))
