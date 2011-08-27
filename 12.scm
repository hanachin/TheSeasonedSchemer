;; Y combinator
(define Y
  (lambda (le)
    ((lambda (f) (f f))
     (lambda (f) (le (lambda (x) ((f f) x)))))))

;; p18 letrec version
(define multirember
  (lambda (a lat)
    ((letrec
         ((mr (lambda (lat)
                (cond ((null? lat) '())
                      ((eq? a (car lat)) (mr (cdr lat)))
                      (else (cons (car lat)
                                  (mr (cdr lat))))))))
       mr)
     lat)))
