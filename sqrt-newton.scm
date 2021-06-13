(define (square x)
    (* x x))

(define (abs x)
    (if (< x 0) (- x) x))

(define (average x y)
    (/ (+ x y) 2))

(define (enough? guess x)
    (< 
        (abs (- (square guess) x)) 
	0.001))

(define (approx guess x)
    (if (enough? guess x)
        guess
	(approx (average guess (/ x guess)) x)))

(define (sqrt-newton x)
    (approx 1.0 x))
