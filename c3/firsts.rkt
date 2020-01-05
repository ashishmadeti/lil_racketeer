#lang racket

(define firsts
    (lambda (l)
        (cond
            [(null? l) '()]
            [else (cons (car (car l))
                (firsts (cdr l)))])))

; examples
(firsts (list
    (list 'a 'b 'c)
    (list 'z 'y 'x)
    (list 'mercury 'venus 'earth)))

(firsts '())

(firsts (list
    (list (list 'hive 'queen) 'jungle 'leaves)
    (list 'lion 'cubs (list 'hunt 'rivalry))))
