#lang sicp

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(define (count-p angle count)
  (if (not (< (abs angle) 0.1))
      (count-p (/ angle 3.0) (+ count 1)) 
      count))

(count-p 12.15 1) 

#|

a. 6 steps for 12.15

b. O(log(n))

|#

