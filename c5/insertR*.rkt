#lang racket

(require racket/include)
(include "../lib/atom.rkt")

(define insertR*
    (lambda (new old l)
        (cond
            [(null? l) '()]
            [(atom? (car l))
                (cond
                    [(eq? old (car l))
                        (cons (car l)
                            (cons new
                                (insertR* new old
                                    (cdr l))))]
                    [else (cons (car l)
                            (insertR* new old
                                (cdr l)))])]
            [else (cons (insertR* new old
                            (car l))
                        (insertR* new old
                            (cdr l)))])))

; examples
(insertR* 'clanks 'rax (list 'rax (list 'lax 'rax) (list (list 'rax 'tax 'rax 'hax) (list 'jax)) (list 'fax 'rax 'kax) 'rax))
(insertR* 2 0 (list 1 0 (list (list (list 0 1 0))) (list 0 0 1) (list (list)) 0 1 1 0 (list 1)))
