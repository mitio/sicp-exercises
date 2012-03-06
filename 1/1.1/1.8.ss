; Very similar to the (sqrt-iter x) implementation. Probably should improve abstraction
; by extracting good-enough? and improve and sharing the *iter code.

(define (cube-root-iter old-guess guess x)
  (if (good-enough? guess old-guess)
      guess
      (cube-root-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (* guess guess))) 3))

(define (good-enough? guess old-guess)
  (< (abs (- old-guess guess)) 0.001))

(define (cube-root x)
  (cube-root-iter 0.0 1.0 x))

(cube-root 8)
