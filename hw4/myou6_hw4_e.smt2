(declare-sort group)
(declare-const e group)
(declare-const c group)
(declare-const d group)
(declare-fun f (group group) group)
(declare-fun g (group) group)

(assert (= (f (f (g c) c) d) (f (g c) (f c d))))
(assert (and (= (f c (g c)) e) (= (f (g c) c) e)))
(assert (and (= (f d e) d) (= (f e d) d)))
(assert (and (= (f (g c) e) (g c)) (= (f e (g c)) (g c))))

(assert (and (not (= d (g c))) (= (f c d) e) (= (f d c) e)))
