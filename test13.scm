(use gauche.test)
(add-load-path ".")
(load "13")

(test-start "chapter 13")
(test-section "intersect")
;; p37
(test* "(intersect '(tomatoes and macaroni) '(macaroni and cheese))"
       '(and macaroni)
       (intersect '(tomatoes and macaroni) '(macaroni and cheese)))

(test-end)