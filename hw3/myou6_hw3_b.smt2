(assert (not (exists ((l1 Int) (l2 Int) (l3 Int) (l4 Int) (u1 Int) (u2 Int) (u3 Int) (u4 Int))
            (and
                (and (< l1 u2) (< l2 u1))
                (and
                    (and (< l2 u3) (< l3 u2))
                    (and
                        (and (< l3 u4) (< l4 u3))
                        (and
                            (and (< l4 u1) (< l1 u4))
                            (and
                                (not (and (< l1 u3) (< l3 u1)))
                                (not (and (< l2 u4) (< l4 u2)))
                            )
                        )
                    )
                )
            )
        ))
)
(check-sat)