(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (x)
    (+ x 1)))

(define sub1
  (lambda (x)
    (- x 1)))

;; p5
;; aとlatの最初の要素が同じかどうかを判定する補助関数
(define is-first?
  (lambda (a lat)
    (cond ((null? lat) #f)
          (else (eq? (car lat) a)))))

;; p6
(define is-first-b?
  (lambda (a lat)
    (cond ((null? lat) #f)
          (else (or (eq? (car lat) a)
                    (two-in-a-row? lat))))))

;; アトムが連続して2回現れるかどうかを調べる(改訂版)
(define two-in-a-row?
  (lambda (lat)
    (cond ((null? lat) #f)
          (else (is-first-b? (car lat) (cdr lat))))))
