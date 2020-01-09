#lang racket

(define <
    (lambda (x y)
        (cond
            [(zero? y) #f]
            [(zero? x) #t]
            [else (< (sub1 x) (sub1 y))])))

; examples
(< 5 3)
(< 39 104)
(< 0 0)
(< 98 3)
(< 0 21)
(< 9 9)
