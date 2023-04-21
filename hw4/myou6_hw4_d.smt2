(declare-sort group)
(declare-const e group)
(declare-const c group)
(declare-fun f (group group) group)
(declare-fun g (group) group)

(assert (and (= (f c e) c) (= (f e c) c)))

(assert (and (not (= e c)) (= (f c e) e) (= (f e c) e)))

(check-sat)