;; p109
(define sweet-tooth
  (lambda (food)
    (cons food (cons 'cake '()))))

(define sub1 (lambda (n) (- n 1)))

;; p112
(define deep
  (lambda (m)
    (cond ((zero? m) 'pizza)
          (else (cons (deep (sub1 m))
                      '())))))
