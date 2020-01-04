#lang racket

(define atom?
    (lambda (x)
        (and (not (pair? x)) (not (null? x)))))

; lat
; returns true for an empty list or a list consisting only of atoms
; otherwise, returns false

(define lat?
    (lambda (l)
        (cond
            [(null? l) #t]
            [(atom? (car l)) (lat? (cdr l))]
            [else #f])))
