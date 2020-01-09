#lang racket

(define pick
    (lambda (n lat)
        (cond
            [(= 1 n) (car lat)]
            [else (pick (sub1 n) (cdr lat))])))

; examples
(pick 2 (list 100 'hundred 'naught))
(pick 3 (list 100 (list 'one 'o 'one) (list 'eggs 'milk) 'glass 'stove))
