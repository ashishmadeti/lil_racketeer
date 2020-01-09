#lang racket

(define length
    (lambda (lat)
        (cond
            [(null? lat) 0]
            [else (add1 (length (cdr lat)))])))

; examples
(length (list))
(length (list 'ham 'cheese 'rye 'radish))
(length (list 5 12 221))
(length (list 100 (list 'one 'o 'one) (list 'eggs 'milk) 'glass 'stove))
