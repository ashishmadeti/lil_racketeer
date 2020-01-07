#lang racket

(define -
    (lambda (x y)
        (cond
            [(zero? y) x]
            [else (sub1 (- x (sub1 y)))])))

; examples
(- 10 2)
(- 2 8)
(- 0 7)
(- 13 0)
(- 25 11)
