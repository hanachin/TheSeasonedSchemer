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

;; p50
(define intersectall
  (lambda (lset)
    (let/cc hop
      (letrec
          ((A (lambda (lset)
                (cond ((null? (car lset)) (hop '()))
                      ((null? (cdr lset)) (car lset))
                      (else (I (car lset)
                               (A (cdr lset)))))))
           (I (lambda (s1 s2)
                (letrec
                    ((J (lambda (s1)
                          (cond ((null? s1) '())
                                ((member? (car s1) s2)
                                 (cons (car s1) (J (cdr s1))))
                                (else (J (cdr s1)))))))
                  (cond ((null? s2) (hop '()))
                        (else (J s1)))))))
        (cond ((null? lset) '())
              (else (A lset)))))))

;; p52
(define rember
  (lambda (a lat)
    (letrec
        ((R (lambda (lat)
              (cond ((null? lat) '())
                    ((eq? (car lat) a) (cdr lat))
                    (else (cons (car lat)
                                (R (cdr lat))))))))
      (R lat))))

;; p54
(define rember-beyond-first
  (lambda (a lat)
    (letrec
        ((R (lambda (lat)
              (cond ((null? lat) '())
                    ((eq? (car lat) a) '())
                    (else (cons (car lat) (R (cdr lat))))))))
      (R lat))))
