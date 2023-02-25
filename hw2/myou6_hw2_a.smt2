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
(define-fun theory1 () Bool  (and (and (and (and t1 t2) t3) t4) t5))

(assert (and theory1 true))
(check-sat)
