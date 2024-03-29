(declare-const r Real)
(declare-const s Real)
(assert (and (<= r 1) (>= r 0)))
(assert (and (<= s 1) (>= s 0)))
(assert (and (forall ((rp Real)) 
            (implies (and (<= rp 1) (>= rp 0))
                (>=
                    (+ (+ (+ (* 90 (* r s)) (* 20 (* r (- 1 s)))) (* 30 (* (- 1 r) s))) (* 60 (* (- 1 r) (- 1 s))))
                    (+ (+ (+ (* 90 (* rp s)) (* 20 (* rp (- 1 s)))) (* 30 (* (- 1 rp) s))) (* 60 (* (- 1 rp) (- 1 s))))
                )
            )
        ) (forall ((sp Real)) 
            (implies (and (<= sp 1) (>= sp 0))
                (>=
                    (+ (+ (+ (* 10 (* r s)) (* 80 (* r (- 1 s)))) (* 70 (* (- 1 r) s))) (* 40 (* (- 1 r) (- 1 s))))
                    (+ (+ (+ (* 10 (* r sp)) (* 80 (* r (- 1 sp)))) (* 70 (* (- 1 r) sp))) (* 40 (* (- 1 r) (- 1 sp))))
                )
            )
        )
    )
)
(check-sat)
(get-model)