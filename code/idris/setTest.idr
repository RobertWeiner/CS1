module setTest

import set
import nat
import eq

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S (S O)) s2

s4: set nat
s4 = set_insert (S (S (S O))) s3

s5: set nat
s5 = set_insert (S (S O)) s4
