module pair

import eq
import bool

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair f s) = f

snd: pair a b -> b
snd (mkPair f s) = s

instance (eq a, eq b) => eq (pair a b) where
  eql (mkPair x1 x2) (mkPair z1 z2) = (and (eql x1 z1) (eql x2 z2))
