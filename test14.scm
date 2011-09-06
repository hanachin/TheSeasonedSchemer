(use gauche.test)
(add-load-path ".")
(load "14")

(test-start "chapter 14")
(test-section "leftmost")
;; p65
(test* "(leftmost '(((a) b) (c d)))" 'a (leftmost '(((a) b) (c d))))
(test* "(leftmost '(((a) ()) () (e)))" 'a (leftmost '(((a) ()) () (e))))
(test* "(leftmost '(((() a) ())))" 'a (leftmost '(((() a) ()))))

(test-section "rember1*")
;; p67
(test* "(rember1* 'salad '((Swedish rye) (French (mustard salad turkey)) salad))"
       '((Swedish rye) (French (mustard turkey)) salad)
       (rember1* 'salad '((Swedish rye) (French (mustard salad turkey)) salad)))
(test* "(rember1* 'meat '((pasta meat) pasta (noodles meat sauce) meat tomatoes))"
       '((pasta) pasta (noodles meat sauce) meat tomatoes)
       (rember1* 'meat '((pasta meat) pasta (noodles meat sauce) meat tomatoes)))

(test-end)