(define (sum-integers a b)
   (if (> a b)
       0
       (+ a (sum-integers (+ a 1) b))))

(define (sum-cubes a b)
   (if (> a b)
       0
       (+ (cube a)
          (sum-cubes (+ a 1) b))))

(define (pi-sum a b)
   (if (> a b)
       0
       (+ (/ 1.0 (* a (+ a 2)))
          (pi-sum (+ a 4) b))))

; These three procedure share a common underlying pattern.
; (define (<name> a b)
;    (if (> a b)
;        0
;        (+ (<term> a)
;           (<name> (<next> a) b))))
; from above template we can form the sum procedure into more general.

(define (sum term a next b)
   (if (> a b)
       0
       (+ (term a)
          (sum term (next a) next b))))

; EXAMPLE: sum-cubes procedure
; (define (inc n) (+ n 1))       ; <next>
; (define (cube n) (* n n n))    ; <term>
; (define (sum-cubes a b)
;    (sum cube a inc b))

; EXAMPLE: sum-integers procedure
; (define (inc n) (+ n 1))       ; <next>
; (define (indentity n) n)       ; <term>
; (define (sum-integers a b)
;    (sum indentity a inc b))

; EXAMPLE: pi-sum procedure
; (define (inc n) (+ n 4))       ; <next>
; (define (pi-term n) 
;    (/ 1.0 (* n (+ n 2))))      ; <term>
; (define (pi-sum a b)
;    (sum pi-term a inc b))
