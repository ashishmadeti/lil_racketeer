#lang racket

(define multirember
    (lambda (a lat)
        (cond
            [(null? lat) '()]
            [(eq? (car lat) a) (multirember a (cdr lat))]
            [else (cons (car lat) (multirember a (cdr lat)))])))

; examples
(multirember 'door (list 'door 'in 'front 'of 'a 'door))

(multirember 'door '())

(multirember 'meat (list 'no 'pudding 'for 'you))
