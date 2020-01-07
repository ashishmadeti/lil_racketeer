#lang racket

(define +
    (lambda (x y)
        (cond
            [(zero? y) x]
            [else (+ (add1 x) (sub1 y))])))

; examples
(+ 10 201)
(+ 1 0)
(+ 0 0)
(+ 0 1)
(+ 38 11)
