(define (sum term a next b)
   (if (> a b)
       0
       (+ (term a)
          (sum term (next a) next b))))

; pi-sum procedure expressed without 
; defining any auxiliary procedure
(define (pi-sum a b)
   (sum (lambda (x) (/ 1.0 (* n (+ n 2))))
        a
        (lambda (x) (+  x 4))
        b))
