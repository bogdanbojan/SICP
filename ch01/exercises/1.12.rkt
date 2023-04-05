#lang sicp

(define (pascal row col)
    (cond ((= row 0) 1)
          ((= col 0) 1)
          ((= row col) 1)
          (else (+ (pascal (- row 1) (- col 1))
                   (pascal (- row 1) col)))))

                          

(pascal 3 2)
