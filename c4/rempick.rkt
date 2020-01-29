#lang racket

(define one?
    (lambda (n)
        (= n 1)))

(define rempick
    (lambda (n lat)
        (cond
            [(one? n) (cdr lat)]
            [else (cons (car lat) (rempick (sub1 n) (cdr lat)))])))

; examples
(rempick 3 (list 1 2 3))
(rempick 2 (list 1 2 3))
(rempick 1 (list 1 2 3))
(rempick 2 (list 'sky 'is 'over))
