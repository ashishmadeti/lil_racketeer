#lang racket

(define pow
    (lambda (x y)
        (cond
            [(zero? y) 1]
            [else (* x (pow x (sub1 y)))])))

; examples
(pow 2 3)
(pow 5 2)
(pow 98 0)
(pow 13 4)
