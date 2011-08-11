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

;; アトムが連続して2回現れるかどうかを調べる
(define two-in-a-row?
  (lambda (lat)
    (cond ((null? lat) #f)
          (else (or (is-first? (car lat) (cdr lat))
                    (two-in-a-row? (cdr lat)))))))
