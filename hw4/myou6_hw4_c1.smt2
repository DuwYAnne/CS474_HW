(declare-const a1 Real)
(declare-const a2 Real)
(declare-const a3 Real)
(declare-const a4 Real)
(declare-const b1 Real)
(declare-const b2 Real)
(declare-const b3 Real)
(declare-const b4 Real)
(declare-const r Real)
(declare-const s Real)
(assert 
    (and
        (and (and (<= r 1) (>= r 0)) (and (<= s 1) (>= s 0)))
        (and (forall ((rp Real)) 
                (implies (and (<= rp 1) (>= rp 0))
                    (>=
                        (+ (+ (+ (* a1 (* r s)) (* a2 (* r (- 1 s)))) (* a3 (* (- 1 r) s))) (* a4 (* (- 1 r) (- 1 s))))
                        (+ (+ (+ (* a1 (* rp s)) (* a2 (* rp (- 1 s)))) (* a3 (* (- 1 rp) s))) (* a4 (* (- 1 rp) (- 1 s))))
                    )
                )
            ) (forall ((sp Real)) 
                (implies (and (<= sp 1) (>= sp 0))
                    (>=
                        (+ (+ (+ (* b1 (* r s)) (* b2 (* r (- 1 s)))) (* b3 (* (- 1 r) s))) (* b4 (* (- 1 r) (- 1 s))))
                        (+ (+ (+ (* b1 (* r sp)) (* b2 (* r (- 1 sp)))) (* b3 (* (- 1 r) sp))) (* b4 (* (- 1 r) (- 1 sp))))
                    )
                )
            )
        )
    )
)
(apply qe)