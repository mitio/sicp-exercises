(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; When using new-if instead of if, the usual applicative-order evaluation rules apply. Since the
; real if construct is not a procedure but a special construct, then applicative-order rules do not
; apply to its evaluation. However, with new-if, applicative-order evaluation causes an endless
; recursion to occur when trying to evaluate the last argument of the new-if, ie. the call to
; (sqrt-iter (improve guess x) x).
