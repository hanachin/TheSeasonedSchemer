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
