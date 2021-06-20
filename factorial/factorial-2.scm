(define (factorial n)
	(define (fact-iter counter product)
		(define (increment) (+ counter 1))
		(if (> counter n)
			product
			(fact-iter (increment) (* counter product))))
	(fact-iter 1 1))

; SUBSTITUION MODEL (Linear iterative process)
; (factorial 6)
; (fact-iter 1 1 6)
; (fact-iter 2 1 6)
; (fact-iter 3 2 6)
; (fact-iter 4 6 6)
; (fact-iter 5 24 6)
; (fact-iter 6 120 6)
; (fact-iter 7 720 6)
; 720
