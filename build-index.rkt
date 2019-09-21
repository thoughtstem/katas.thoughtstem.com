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
          (collection-link 'VR "VR" #:link-path "VR/index.html")
          (collection-link 'GE "GE" #:link-path "GE/index.html"))))))
