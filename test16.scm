(use gauche.test)
(add-load-path ".")
(load "16")

(test-start "chapter 16")
(test-section "sweet-tooth")
;; p109
(test* "(sweet-tooth 'chocolate)" '(chocolate cake) (sweet-tooth 'chocolate))
(test* "(sweet-tooth 'fruit)" '(fruit cake) (sweet-tooth 'fruit))

(test-section "deep")
;; p112
(test* "(deep 3)" '(((pizza))) (deep 3))
(test* "(deep 7)" '(((((((pizza))))))) (deep 7))
(test* "(deep 0)" 'pizza (deep 0))

(test-end)
