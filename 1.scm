(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (x)
    (+ x 1)))

(define sub1
  (lambda (x)
    (- x 1)))

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
