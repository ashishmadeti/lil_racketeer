#lang racket

(define no-nums
    (lambda (lat)
        (cond
            [(null? lat) '()]
            [(number? (car lat)) (no-nums (cdr lat))]
            [else (cons (car lat) (no-nums (cdr lat)))])))

; examples
(no-nums (list 'car 'has '4 'tyres))
(no-nums (list 'this 'should 'remain 'as 'it 'is))
(no-nums (list 2 'apples 4 'oranges))
(no-nums (list 1 2 3 4 990))
