#lang racket

(define insertR
    (lambda (new old lat)
        (cond
            [(null? lat) '()]
            [(eq? (car lat) old) (cons old (cons new (cdr lat)))]
            [else (cons (car lat) (insertR new old (cdr lat)))])))

; examples
(insertR 'pie 'apple (list 'I 'want 'apple 'and 'milk))

(insertR 'tube 'light (list 'No 'electricity 'today))

(insertR 'not 'does (list 'Ron 'does 'believe 'in 'government))

(insertR 'a 'b '())
