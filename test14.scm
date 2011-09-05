(use gauche.test)
(add-load-path ".")
(load "14")

(test-start "chapter 14")
(test-section "leftmost")
;; p65
(test* "(leftmost '(((a) b) (c d)))" 'a (leftmost '(((a) b) (c d))))
(test* "(leftmost '(((a) ()) () (e)))" 'a (leftmost '(((a) ()) () (e))))
(test* "(leftmost '(((() a) ())))" 'a (leftmost '(((() a) ()))))

(test-end)