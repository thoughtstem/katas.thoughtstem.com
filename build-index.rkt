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
          (collection-link 'K2 "Winter K-2nd" #:link-path "K2/index.html")
          (collection-link 'GE "2D Games (Fall 2019)" #:link-path "GE/index.html")     
          (collection-link 'VR "3D Games" #:link-path "VR/index.html")
          (collection-link 'MISC "MISC Languages" #:link-path "MISC/index.html")
          )))))
