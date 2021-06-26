; RECURSIVE PROCEDURE & LINEAR RECURSIVE PROCESS
; REQUIRES Θ(n) STEPS AND Θ(n) SPACE.
; b^n = b * b^(n-1), b^0 = 1
(define (expt b n)
   (if (= n 0)
       1
       (* b (expt b (- n 1)))))
