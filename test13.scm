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

(test-section "rember-beyond-first")
;; p52
(test* "(rember-beyond-first 'roots '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice))"
       '(noodles spaghetti spatzle bean-thread)
       (rember-beyond-first 'roots '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice)))
;; p53
(test* "(rember-beyond-first 'others '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice))"
       '(noodles spaghetti spatzle bean-thread roots potatoes yam)
       (rember-beyond-first 'others '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice)))
(test* "(rember-beyond-first 'sweetthing '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice))"
       '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice)
       (rember-beyond-first 'sweetthing '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice)))
(test* "(rember-beyond-first 'desserts '(cookies chocolate mints caramel delight ginger snaps desserts \
chocolate mousse vanilla ice cream German chocolate cake more desserts \
gingerbreadman chocolate chip brownies))"
       '(cookies chocolate mints caramel delight ginger snaps)
       (rember-beyond-first 'desserts '(cookies chocolate mints caramel delight ginger snaps desserts
                                                chocolate mousse vanilla ice cream German chocolate cake more desserts
                                                gingerbreadman chocolate chip brownies)))

(test-section "rember-upto-last")
;; p54
(test* "(rember-upto-last 'roots '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice))"
       '(potatoes yam others rice)
       (rember-upto-last 'roots '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice)))
(test* "(rember-upto-last 'sweetthing '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice))"
       '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice)
       (rember-upto-last 'sweetthing '(noodles spaghetti spatzle bean-thread roots potatoes yam others rice)))
;; p55
(test* "(rember-upto-last 'cookies '(cookies chocolate mints caramel delight ginger snaps desserts \
chocolate mousse vanilla ice cream German chocolate cake more cookies \
gingerbreadman chocolate chip brownies))"
       '(gingerbreadman chocolate chip brownies)
       (rember-upto-last 'cookies '(cookies chocolate mints caramel delight ginger snaps desserts
                                            chocolate mousse vanilla ice cream German chocolate cake more cookies
                                            gingerbreadman chocolate chip brownies)))

(test-end)
