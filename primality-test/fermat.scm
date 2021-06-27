; Fermat's Little Theorem: If {n} is a prime number and {a}
; is any positive integer less than {n}, then {a} raised to the
; {n}^{th} power is congruent to {a} modulo {n}

; RECURSIVE PROCEDURE & RECURSIVE PROCESS
; REQUIRES 

(define (even? n)
   (= (remainder n 2) 0))

(define (expmod base exp m)
   (cond ((= exp 0) 1)
         ((even? exp)
           (remainder
               (square (expmod base (/ exp 2) m))
            m))
         (else
           (remainder
               (* base (expmod base (- exp 1) m))
            m))))

(define (fermat-test n)
   (define (try-it a)
       (= (expmod a n n) a))
   (try-it (+ 1 (random (- n 1)))))
