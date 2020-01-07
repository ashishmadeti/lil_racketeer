#lang racket

(define tup+
    (lambda (tup1 tup2)
        (cond
            [(null? tup1) tup2]
            [(null? tup2) tup1]
            [else
                (cons (+ (car tup1) (car tup2)) (tup+ (cdr tup1) (cdr tup2)))])))

; examples
(tup+ (list 1 2 3 4) (list 4 3 2 1))
(tup+ (list 0 0 0 1) (list 1 0 0 0))
(tup+ (list 123 456) (list 789 987))
(tup+ (list 1 2) (list 4 3 2 1))
(tup+ (list 4 3 9 0) (list 1 2))
