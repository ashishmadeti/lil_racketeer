#lang racket

(define insertL
    (lambda (new old lat)
        (cond
            [(null? lat) '()]
            [(eq? (car lat) old) (cons new (cons old (cdr lat)))]
            [else (cons (car lat) (insertL new old (cdr lat)))])))

; examples
(insertL 'pie 'apple (list 'I 'want 'apple 'and 'milk))

(insertL 'tube 'light (list 'No 'electricity 'today))

(insertL 'not 'does (list 'Ron 'does 'believe 'in 'government))

(insertL 'a 'b '())
