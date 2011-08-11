(use gauche.test)
(add-load-path ".")
(load "1")

(test-start "chapter 1")

(test-section "two-in-a-row?")
;; p3
(test* "(two-in-a-row? '(Italian sardines spaghetti parsley))"
       #f
       (two-in-a-row? '(Italian sardines spaghetti parsley)))
;; p4
(test* "(two-in-a-row? '(Italian sardines sardines spaghetti parsley))"
       #t
       (two-in-a-row? '(Italian sardines sardines spaghetti parsley)))
(test* "(two-in-a-row? '(Italian sardines more sardines spaghetti parsley))"
       #f
       (two-in-a-row? '(Italian sardines more sardines spaghetti parsley)))
;; p9
(test* "(two-in-a-row? '(b d e i i a g))" #t (two-in-a-row? '(b d e i i a g)))

(test-end)
