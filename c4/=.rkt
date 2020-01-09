#lang racket

(define =
    (lambda (x y)
        (cond
            [(> x y) #f]
            [(< x y) #f]
            [else #t])))

; examples
(= 5 3)
(= 39 104)
(= 0 0)
(= 98 3)
(= 0 21)
(= 9 9)
