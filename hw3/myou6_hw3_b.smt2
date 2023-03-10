(assert (not (exists ((l1 Real) (l2 Real) (l3 Real) (l4 Real) (u1 Real) (u2 Real) (u3 Real) (u4 Real))
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