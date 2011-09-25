(define add1 (cut + <> 1))

(define U (lambda (f) (f f)))

(define Y
  (lambda (le)
    (U (lambda (f)
         (le (lambda (arg) ((f f) arg)))))))

(define Y!
  (lambda (f)
    (let ((h (lambda (l) 0)))
      (set! h (f (lambda (arg) (h arg))))
      h)))

(define Y-bang
  (lambda (f)
    (letrec ((h (f (lambda (arg) (h arg))))) h)))

(define biz
  (let ((x 0))
    (lambda (f)
      (set! x (add1 x))
      (lambda (a)
        (if (= a x)
            0
            (f a))))))

((Y biz) 5)
((Y! biz) 5)
((Y-bang biz) 5)
