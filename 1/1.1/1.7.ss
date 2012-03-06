; TODO: Discuss problems with good-enough? for small numbers. (Limited precision. Error proofs.)
; TODO: Discuss problems with good-enough? for large numbers. (Slow and inefficient.)

(define (sqrt-iter old-guess guess x)
  (if (good-enough? guess old-guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess old-guess)
  (< (abs (- old-guess guess)) 0.001))

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))

; This implementation is more efficient. This still works on my PC, but the other one (using
; squares in good-enough?) just hangs and never completes.
;
; (sqrt 1000000000000000000000000000000000000000000000000000000000)
