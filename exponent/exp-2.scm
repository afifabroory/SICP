; RECURSIVE PROCEDURE & LINEAR ITERATION PROCESS
; REQUIRES Θ(n) STEPS AND Θ(1) SPACE.
(define (expt b n)
   (define (expt-iter counter product)
       (if (= counter 0)
           product
           (expt-iter (- counter 1) (* product b))))
   (expt-iter n 1))
