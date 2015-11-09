module listTest

import list
import nat
import bool

li: list bool
li = true :: false :: true :: nil

lO: list nat
lO = nil

l1: list nat
l1 = O :: nil

l2: list nat
l2 = (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil

l3: list nat
l3 = (S O) :: (S (S O)) :: (S (S (S O))) :: nil

tO: nat
tO = length lO

t1: nat
t1 = length l2

t2: list nat
t2 = lO ++ l1

t3: list nat
t3 = l2 ++ l3

t4: list bool
t4 = map evenb (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

t5: list nat
t5 = filter evenb (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)
