(use gauche.test)
(add-load-path ".")
(load "16")

(test-start "chapter 16")
(test-section "sweet-tooth")
;; p109
(test* "(sweet-tooth 'chocolate)" '(chocolate cake) (sweet-tooth 'chocolate))
(test* "(sweet-tooth 'fruit)" '(fruit cake) (sweet-tooth 'fruit))

(test-end)