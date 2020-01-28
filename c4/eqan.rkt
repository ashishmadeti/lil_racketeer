#lang racket

(define eqan?
    (lambda (x y)
        (cond
            [(and (number? x) (number? y)) (= x y)]
            [(or (number? x) (number? y)) #f]
            [else (eq? x y)])))

; examples
(eqan? 'x 'y)
(eqan? 'x 'x)
(eqan? 100 'hundred)
(eqan? 'hundred 100)
(eqan? 10 56)
(eqan? 420 420)
