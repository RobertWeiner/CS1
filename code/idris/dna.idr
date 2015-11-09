module dna

import pair
import list
import bool
import nat
import ite

data base = A | T | G | C

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base C = G

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair a b)::t) = a::(strand1 t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair a b)::t) = map complement_base (strand1 ((mkPair a b)::t))

basePair: base -> pair base base
basePair a = mkPair a (complement_base a)

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = map basePair (h::t)

{-
complete: list base -> list (pair base base)
complete nil = nil
complete (a::t) = (mkPair a (complement_base a))::(complete t) -}

baseMatch: base -> base -> bool
baseMatch A A = true
baseMatch T T = true
baseMatch C C = true
baseMatch G G = true
baseMatch _ _ = false

baseChange: list base -> base -> list nat
baseChange nil a = nil
baseChange (h::t) a = (ite (baseMatch h a) ((S O)::(baseChange t a)) (O::(baseChange t a)))

countBase: list base -> base -> nat
countBase nil _ = O
countBase (h::t) a = list.foldr add O (baseChange (h::t) a)
