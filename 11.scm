(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (x)
    (+ x 1)))

(define sub1
  (lambda (x)
    (- x 1)))

(define one?
  (lambda (x)
    (= x 1)))

;; p34 letrec version
(define two-in-a-row?
  (letrec
      ((W (lambda (a lat)
            (cond ((null? lat) #f)
                  (else (or (eq? (car lat) a)
                            (W (car lat) (cdr lat))))))))
    (lambda (lat)
      (cond ((null? lat) #f)
            (else (W (car lat) (cdr lat)))))))

;; p34
(define sum-of-prefixes
  (lambda (tup)
    (letrec
        ((S (lambda (sss tup)
              (cond ((null? tup) '())
                    (else (cons (+ sss (car tup))
                                (S (+ sss (car tup))
                                   (cdr tup))))))))
      (S 0 tup))))

;; p13
(define pick
  (lambda (n lat)
    (cond ((one? n) (car lat))
          (else (pick (sub1 n) (cdr lat))))))

;; p13
(define scramble-b
  (lambda (tup rev-pre)
    (cond ((null? tup) '())
          (else (cons (pick (car tup)
                            (cons (car tup)
                                  rev-pre))
                      (scramble-b (cdr tup)
                                  (cons (car tup)
                                        rev-pre)))))))

;; p14
(define scramble
  (lambda (tup)
    (scramble-b tup '())))
