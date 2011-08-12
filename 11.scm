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

;; p7
(define two-in-a-row-b?
  (lambda (preceding lat)
    (cond ((null? lat) #f)
          (else (or (eq? (car lat) preceding)
                    (two-in-a-row-b? (car lat) (cdr lat)))))))

;; p7
;; アトムが連続して2回現れるかどうかを調べる(改訂版)
(define two-in-a-row?
  (lambda (lat)
    (cond ((null? lat) #f)
          (else (two-in-a-row-b? (car lat) (cdr lat))))))

;; p10
(define sum-of-prefixes-b
  (lambda (sonssf tup)
    (cond ((null? tup) '())
          (else (cons (+ sonssf (car tup))
                      (sum-of-prefixes-b (+ sonssf (car tup))
                                         (cdr tup)))))))

;; p11
(define sum-of-prefixes
  (lambda (tup)
    (cond ((null? tup) '())
          (else (sum-of-prefixes-b 0 tup)))))

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
