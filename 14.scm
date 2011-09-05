(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;; p65
(define leftmost
  (lambda (l)
    (cond ((null? (car l)) '())
          ((atom? (car l)) (car l))
          (else (cond ((atom? (leftmost (car l))) (leftmost (car l)))
                      (else (leftmost (cdr l))))))))
