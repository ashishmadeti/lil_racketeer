#lang racket

(define *
    (lambda (x y)
        (cond
            [(eq? 0 y) 0]
            [else (+ x (* x (sub1 y)))])))

; examples
(* 5 10)
(* 5 0)
(* 0 100)
(* 14 3)
(* 4 13)
