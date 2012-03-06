(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (sum-of-squares-of-the-two-larger-of a b c)
  (cond ((and (> a c) (> b c)) (sum-of-squares a b))
        ((and (> a c) (> c b)) (sum-of-squares a c))
        (else                  (sum-of-squares b c))))
