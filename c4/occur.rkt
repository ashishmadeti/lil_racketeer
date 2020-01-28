#lang racket

(define occur
    (lambda (a lat)
        (cond
            [(null? lat) 0]
            [(eq? a (car lat)) (add1 (occur a (cdr lat)))]
            [else (occur a (cdr lat))])))

; examples
(occur 'sea (list 'she 'sells 'sea 'shells 'on 'the 'sea 'shore))
(occur 'ram (list 'ram 'likes 'to 'see 'ram 'ram 'ram 'ram 'show))
(occur 'god (list 'jesus 'ishwar 'allah 'ram 'raheem 'sai))
