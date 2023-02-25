(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(define-fun t1 () Bool
    (or (or (not q) r) p))
(define-fun t2 () Bool
    (or q (not r)))
(define-fun t3 () Bool
    (or (not p) r))
(define-fun t4 () Bool
    (or q (not p)))
(define-fun t5 () Bool
    (or (not q) r))
(define-fun txtra() Bool
    (or (or p q) (or (not q))))
(define-fun theory1 () Bool  (and (and (and (and t1 t2) t3) t4) t5))
(define-fun theory2 () Bool  (and (and (and (and t2 t3) t1) txtra) t2))

(assert (not (= theory1 theory2)))
(check-sat)
