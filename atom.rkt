#lang racket
(define atom?
    (lambda (x)
        (and (not (pair? x)) (not (null? x)))))


(atom? (quote ()))
(atom? 'asd)
(atom? 299)
