#lang sicp

(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (even? n)
  (= (remainder n 2) 0))

(define (double n)
  (* n 2))

(define (halve n)
  (/ n 2))

(define (iter-mult a b)
  (cond ((= b 0)
         0)
        ((even? b)
         (iter-mult (double a) (halve b)))
        (else
          (+ a (iter-mult a (- b 1))))))

#|

a * b = a * (2 * b/2) = 2a * b/2 = a' * b'

where:

a' = 2a
b' = b/2

|#
