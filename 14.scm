(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;; p66
(define leftmost
  (lambda (l)
    (cond ((null? l) '())
          ((atom? (car l)) (car l))
          (else
           (let ((a (leftmost (car l))))
             (cond ((atom? a) a)
                   (else (leftmost (cdr l)))))))))

(define eqlist? equal?)

;; p68
(define rember*
  (lambda (a l)
    (letrec
        ((R (lambda (l)
              (cond ((null? l) '())
                    ((atom? (car l))
                     (cond ((eq? (car l) a) (cdr l))
                           (else (cons (car l)
                                       (R (cdr l))))))
                    (else
                     (let ((av (R (car l))))
                       (cond ((eqlist? (car l) av)
                              (cons (car l) (R (cdr l))))
                             (else (cons av (cdr l))))))))))
      (R l))))
