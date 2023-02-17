(declare-const p00 Bool)
(declare-const p01 Bool)
(declare-const p02 Bool)
(declare-const p10 Bool)
(declare-const p11 Bool)
(declare-const p12 Bool)
(declare-const p20 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)
(declare-const p30 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)
(declare-const p40 Bool)
(declare-const p41 Bool)
(declare-const p42 Bool)
; these are forcing specific color
(assert ((_ at-least 1) p00 p01 p02))
(assert ((_ at-most 1) p00 p01 p02))
(assert ((_ at-least 1) p10 p11 p12))
(assert ((_ at-most 1) p10 p11 p12))
(assert ((_ at-least 1) p20 p21 p22))
(assert ((_ at-most 1) p20 p21 p22))
(assert ((_ at-least 1) p30 p31 p32))
(assert ((_ at-most 1) p30 p31 p32))
(assert ((_ at-least 1) p40 p41 p42))
(assert ((_ at-most 1) p40 p41 p42))


;edge definitions 

(assert (=> p00 (not p10)))
(assert (=> p01 (not p11)))
(assert (=> p02 (not p12)))
(assert (=> p00 (not p20)))
(assert (=> p01 (not p21)))
(assert (=> p02 (not p22)))

(assert (=> p10 (not p20)))
(assert (=> p11 (not p21)))
(assert (=> p12 (not p22)))
(assert (=> p10 (not p30)))
(assert (=> p11 (not p31)))
(assert (=> p12 (not p32)))
(assert (=> p10 (not p40)))
(assert (=> p11 (not p41)))
(assert (=> p12 (not p42)))

(assert (=> p20 (not p30)))
(assert (=> p21 (not p31)))
(assert (=> p22 (not p32)))
(assert (=> p20 (not p40)))
(assert (=> p21 (not p41)))
(assert (=> p22 (not p42)))

(check-sat)
