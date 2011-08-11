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

(test-section "sum-of-prefixes")
(test* "(sum-of-prefixes '(2 1 9 17 0))"
       '(2 3 12 29 29)
       (sum-of-prefixes '(2 1 9 17 0)))
(test* "(sum-of-prefixes '(1 1 1 1 1))"
       '(1 2 3 4 5)
       (sum-of-prefixes '(1 1 1 1 1)))

(test-section "scramble")
(test* "(scramble '(1 1 1 3 4 2 1 1 9 2))"
       '(1 1 1 1 1 4 1 1 1 9)
       (scramble '(1 1 1 3 4 2 1 1 9 2)))
(test* "(scramble '(1 2 3 4 5 6 7 8 9))"
       '(1 1 1 1 1 1 1 1 1)
       (scramble '(1 2 3 4 5 6 7 8 9)))

(test-end)
