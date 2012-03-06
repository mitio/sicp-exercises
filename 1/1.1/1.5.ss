(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; In applicative-order evaluation, the interpreter will first try to evaluate all of the arguments
; of (test) and will enter an infinite loop when evaluating (p).

; In normal-order evaluation, the interpretation will follow this path:
;   (test 0 (p))
;   (if (= 0 0) 0 (p))
;   0
; And the result will be 0.
