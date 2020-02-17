#lang racket

(require racket/include)
(include "../lib/atom.rkt")

(define occur*
    (lambda (a l)
        (cond
            [(null? l) 0]
            [(atom? (car l))
                (cond
                    [(eq? a (car l))
                        (add1 (occur* a (cdr l)))]
                    [else (occur* a (cdr l))])]
            [else (+ (occur* a (car l))
                    (occur* a (cdr l)))])))

; examples
(occur* 'a (list))
(occur* 'a (list 'a (list 'a) (list) (list 'b 'a 'c) (list 'c 'd) 'a (list 'a 'a)))
(occur* 0 (list 1 0 (list 0 0 1)))
