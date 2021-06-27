; RECURSIVE PROCEDURE & ITERATIVE PROCEDURE
; REQUIRES Θ(log n) STEP
(define (gcd a b)
	(if (= b 0)
		a
		(gcd b (remainder a b))))
