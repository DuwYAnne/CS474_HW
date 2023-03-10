(declare-const l1 Real)
(declare-const l2 Real)
(declare-const u1 Real)
(declare-const u2 Real)
(assert (forall ((z Real)) (implies 
                        (and 
                            (and 
                                (and 
                                    (< z u2) (< z u1)
                                ) (< l1 z)
                            ) (< l2 z)
                        )
                        (
                            exists ((w Real))
                            (and 
                                (and 
                                    (and 
                                        (and 
                                            (< w u2) (< w u1)
                                        ) (< l1 w)
                                    ) (< l2 w)
                                ) (or (< w z) (< z w))
                            )
                        )
                    )
        )
)
(apply qe)