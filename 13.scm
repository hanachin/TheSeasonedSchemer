;; p27
(define member?
  (lambda (a lat)
    (letrec
        ((yes? (lambda (l)
                 (cond ((null? l) #f)
                       ((eq? a (car l)) #t)
                       (else (yes? (cdr l)))))))
         (yes? lat))))

;; p37
(define intersect
  (lambda (set1 set2)
    (letrec
        ((I (lambda (set)
              (cond ((null? set) '())
                    ((member? (car set) set2)
                     (cons (car set) (I (cdr set))))
                    (else (I (cdr set)))))))
      (I set1))))

;; p38
(define intersectall
  (lambda (lset)
    (cond ((null? lset) '())
          ((null? (cdr lset)) (car lset))
          (else (intersect (car lset)
                           (intersectall (cdr lset)))))))
