(use gauche.test)
(add-load-path ".")
(load "13")

(test-start "chapter 13")
(test-section "intersect")
;; p37
(test* "(intersect '(tomatoes and macaroni) '(macaroni and cheese))"
       '(and macaroni)
       (intersect '(tomatoes and macaroni) '(macaroni and cheese)))

(test-section "intersectall")
;; p39
(test* "(intersectall '((3 mangos and) (3 kiwis and) (3 hamburgers)))"
       '(3)
       (intersectall '((3 mangos and) (3 kiwis and) (3 hamburgers))))
;; p40
(test* "(intersectall '((3 steaks and) (no food and) (three baked potatoes) (3 diet hamburgers)))"
       '()
       (intersectall '((3 steaks and) (no food and) (three baked potatoes) (3 diet hamburgers))))
(test* "(intersectall '((3 mangoes and) () (3 diet hamburgers)))"
       '()
       (intersectall '((3 mangoes and) () (3 diet hamburgers))))

(test-end)