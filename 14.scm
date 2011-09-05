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

;; p67
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
                     (cond ((eqlist? (R (car l))
                                     (car l))
                            (cons (car l)
                                  (R (cdr l))))
                           (else (cons (R (car l))
                                       (cdr l)))))))))
      (R l))))
