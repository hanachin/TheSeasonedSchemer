;; p27
(define member?
  (lambda (a lat)
    (letrec
        ((yes? (lambda (l)
                 (cond ((null? l) #f)
                       ((eq? a (car l)) #t)
                       (else (yes? (cdr l)))))))
         (yes? lat))))

;; p48
(define intersect
  (lambda (set1 set2)
    (letrec
        ((I (lambda (set1)
              (cond ((null? set1) '())
                    ((member? (car set1) set2)
                     (cons (car set1) (I (cdr set1))))
                    (else (I (cdr set1)))))))
      (cond ((null? set2) '())
            (else (I set1))))))

;; p41
(define intersectall
  (lambda (lset)
    (let/cc hop
      (letrec
          ((A (lambda (lset)
                (cond ((null? (car lset)) (hop '()))
                      ((null? (cdr lset)) (car lset))
                      (else (intersect (car lset)
                                       (A (cdr lset))))))))
        (cond ((null? lset) '())
              (else (A lset)))))))
