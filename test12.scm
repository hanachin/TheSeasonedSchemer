(use gauche.test)
(add-load-path ".")
(load "12")

(test-start "chapter 12")
(test-section "multirember")
;; p17
(test* "(multirember 'tuna '(shrimp salad tuna salad and tuna))"
       '(shrimp salad salad and)
       (multirember 'tuna '(shrimp salad tuna salad and tuna)))
;; p20
(test* "(multirember 'pie '(apple custard pie linzer pie torte))"
       '(apple custard linzer torte)
       (multirember 'pie '(apple custard pie linzer pie torte)))

(test-end)