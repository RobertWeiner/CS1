module boolTest

import bool
import pair

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

b7: pair bool bool
b7 = mkPair true true

b8: pair bool bool
b8 = mkPair false true

b9: pair bool bool
b9 = mkPair false false

b10: bool
b10 = andp (b7)

b11: bool
b11 = andp (b8)

b12: bool
b12 = orp (b9)

b13: bool
b13 = orp (b8)

b14: bool
b14 = nandp (b7)

b15: bool
b15 = nandp (b9)

b16: bool
b16 = xorp b8

b17: bool
b17 = xorp b9

b18: bool
b18 = xorp (mkPair true false)

pand_t_t: bool
pand_t_t = pand true true

pand_t_f: bool
pand_t_f = pand true false

pand_f_t: bool
pand_f_t = pand false true

pand_f_f: bool
pand_f_f = pand false false

por_t_t: bool
por_t_t = por true true

por_t_f: bool
por_t_f = por true false

por_f_t: bool
por_f_t = por false true

por_f_f: bool
por_f_f = por false false

pxor_t_t: bool
pxor_t_t = pxor true true

pxor_t_f: bool
pxor_t_f = pxor true false

pxor_f_t: bool
pxor_f_t = pxor false true

pxor_f_f: bool
pxor_f_f = pxor false false

pnand_t_t: bool
pnand_t_t = pnand true true

pnand_t_f: bool
pnand_t_f = pnand true false

pnand_f_t: bool
pnand_f_t = pnand false true

pnand_f_f: bool
pnand_f_f = pnand false false

c1: bool
c1 = and true true

c2: bool
c2 = and true false

c3: bool
c3 = or false false

c4: bool
c4 = or true true

c5: bool
c5 = nand true false

c6: bool
c6 = xor true false

c7: bool
c7 = xor false true

c8: bool
c8 = xor false false
