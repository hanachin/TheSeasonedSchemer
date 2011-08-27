;; Y combinator
(define Y
  (lambda (le)
    ((lambda (f) (f f))
     (lambda (f) (le (lambda (x) ((f f) x)))))))

;; p22 letrec version
(define multirember
  (lambda (a lat)
    (letrec
        ((mr (lambda (lat)
               (cond ((null? lat) '())
                     ((eq? a (car lat)) (mr (cdr lat)))
                     (else (cons (car lat)
                                 (mr (cdr lat))))))))
      (mr lat))))

;; p27
(define member?
  (lambda (a lat)
    (letrec
        ((yes? (lambda (l)
                 (cond ((null? l) #f)
                       ((eq? a (car l)) #t)
                       (else (yes? (cdr l)))))))
         (yes? lat))))

;; p28 letrec version
(define union
  (lambda (set1 set2)
    (letrec
        ((U (lambda (set)
              (cond ((null? set) set2)
                    ((member? (car set) set2) (U (cdr set)))
                    (else (cons (car set)
                                (U (cdr set))))))))
      (U set1))))
