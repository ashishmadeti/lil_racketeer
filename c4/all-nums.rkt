#lang racket

(define all-nums
    (lambda (lat)
        (cond
            [(null? lat) '()]
            [(number? (car lat)) (cons (car lat) (all-nums (cdr lat)))]
            [else (all-nums (cdr lat))])))

; examples
(all-nums (list 'car 'has '4 'tyres))
(all-nums (list 'this 'should 'remain 'as 'it 'is))
(all-nums (list 2 'apples 4 'oranges))
(all-nums (list 1 2 3 4 990))
