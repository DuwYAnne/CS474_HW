(assert (not (exists ((x Int)) (forall ((y Int))
            (and
                (< (* 3 x) (* 2 y))
                (< (* 4 y) (+ (* 8 x) 10))
            )
        )))
)
(check-sat)