(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;; p81
(define leftmost
  (lambda (l)
    (letrec
        ((lm (lambda (l out)
               (cond ((null? l) '())
                     ((atom? (car l)) (out (car l)))
                     (else
                      (let ()
                        (lm (car l) out)
                        (lm (cdr l) out)))))))
      (let/cc skip
        (lm l skip)))))

(define eqlist? equal?)

(define add1
  (lambda (n)
    (+ n 1)))

;; p76
(define depth*
  (lambda (l)
    (cond ((null? l) 1)
          ((atom? (car l))
           (depth* (cdr l)))
          (else
           (max (add1 (depth* (car l)))
                (depth* (cdr l)))))))

;; p86
(define rm
  (lambda (a l oh)
    (cond ((null? l) (oh 'no))
          ((atom? (car l))
           (if (eq? (car l) a)
               (cdr l)
               (cons (car l)
                     (rm a (cdr l) oh))))
          (else
           (if (atom? (let/cc oh (rm a (car l) oh)))
               (cons (car l) (rm a (cdr l) oh))
               (cons (rm a (car l) 0) (cdr l)))))))

;; p88
(define rember1*
  (lambda (a l)
    (if (atom? (let/cc oh (rm a l oh)))
        l
        (rm a l '()))))
