(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;; p63
(define leftmost
  (lambda (l)
    (cond ((atom? (car l)) (car l))
          (else (leftmost (car l))))))