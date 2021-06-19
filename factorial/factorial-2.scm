(define (factorial n)
	(define (fact-iter counter product)
		(define (increment) (+ counter 1))
		(if (> counter n)
			product
			(fact-iter (increment) (* counter product))))
	(fact-iter 1 1))
