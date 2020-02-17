#lang racket

(define atom?
    (lambda (x)
        (and (not (pair? x)) (not (null? x)))))

(define rember*
    (lambda (a l)
        (cond
            [(null? l) '()]
            [(atom? (car l))
                (cond
                    [(eq? a (car l)) (rember* a (cdr l))]
                    [else (cons (car l) (rember* a (cdr l)))])]
            [else (cons (rember* a (car l)) (rember* a (cdr l)))])))

; examples
(rember* 'rax (list 'rax (list 'lax 'rax) (list (list 'rax 'tax 'rax 'hax) (list 'jax)) (list 'fax 'rax 'kax) 'rax))
(rember* 0 (list 1 0 (list (list (list 0 1 0))) (list 0 0 1) (list (list)) 0 1 1 0 (list 1)))
