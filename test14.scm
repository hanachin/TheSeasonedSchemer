(use gauche.test)
(add-load-path ".")
(load "14")

(test-start "chapter 14")
(test-section "leftmost")
;; p65
(test* "(leftmost '(((a) b) (c d)))" 'a (leftmost '(((a) b) (c d))))
(test* "(leftmost '(((a) ()) () (e)))" 'a (leftmost '(((a) ()) () (e))))
(test* "(leftmost '(((() a) ())))" 'a (leftmost '(((() a) ()))))
(test* "(leftmost '(((a)) b (c)))" 'a (leftmost '(((a)) b (c))))

(test-section "rember1*")
;; p67
(test* "(rember1* 'salad '((Swedish rye) (French (mustard salad turkey)) salad))"
       '((Swedish rye) (French (mustard turkey)) salad)
       (rember1* 'salad '((Swedish rye) (French (mustard salad turkey)) salad)))
(test* "(rember1* 'meat '((pasta meat) pasta (noodles meat sauce) meat tomatoes))"
       '((pasta) pasta (noodles meat sauce) meat tomatoes)
       (rember1* 'meat '((pasta meat) pasta (noodles meat sauce) meat tomatoes)))

(test-section "depth*")
;; p69
(test* "(depth* '((pickled) peppers (peppers pickled)))"
       2
       (depth* '((pickled) peppers (peppers pickled))))
;; p70
(test* "(depth* '(margarine ((bitter butter) (makes) (batter (bitter))) butter))"
       4
       (depth* '(margarine ((bitter butter) (makes) (batter (bitter))) butter)))
(test* "(depth* '(c (b (a b) a) a))"
       3
       (depth* '(c (b (a b) a) a)))
;; p71
(test* "(depth* '(() ((bitter butter) (makes) (batter (bitter))) butter))"
       4
       (depth* '(() ((bitter butter) (makes) (batter (bitter))) butter)))

(test-end)
