#lang sicp

(define (expt n b)
    (iter-expt n b 1))

(define (even? n)
  (= (remainder n 2) 0))

(define (iter-expt n b a)
  (cond ((= n 0) 1)
        ((even? n
          (iter-expt (/ n 2) (* b b) a)))
        (else 
          (iter-expt (- n 1) b (* a b)))))

#| 

when n is even:

a(b^2)^(n/2) -> a'b'^n'

where:
a' = a
b' = b^2
n' = n/2

---

when n is odd:

(ab)b^(n-1) = a'b'^n'

where:
a' = ab
b' = b
n' = n-1

|#
