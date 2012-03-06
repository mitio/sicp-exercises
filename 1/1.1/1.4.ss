(define (a-plus-abs-b a b)
        ((if (> b 0) + -) a b))

; The result (the value) of (if (> b 0) + -) is either + or -.
; This value is then used to form one of these two function bodies:
;   (+ a b)
;   (- a b)
