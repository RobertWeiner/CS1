module natTest

import nat
import pair
import bool
import serialize

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

--four
f: nat
f = S r

--five
v: nat
v = S f

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb r

e: bool
e = evenb (S r)

y: nat
y = succ O

x: bool
x = isZero r

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = addp (mkPair (S (S O)) (S (S (S O))))

n1: pair nat nat
n1 = (mkPair t r)

n2: pair nat nat
n2 = (mkPair r t)

n3: pair nat nat
n3 = (mkPair t t)

n4: nat
n4 = exp n1

n16: nat
n16 = exp (mkPair (S (S O)) O)

n5: bool
n5 = lep n2

n6: bool
n6 = lep n1

n17: bool
n17 = lep n3

n18: bool
n18 = eqp (mkPair O O)

n19: bool
n19 = eqp (mkPair O o)

n20: bool
n20 = eqp (mkPair t O)

n7: bool
n7 = eqp n1

n8: bool
n8 = eqp n3

n9: bool
n9 = gtp n2

n10: bool
n10 = gtp n1

n11: bool
n11 = gep n2

n12: bool
n12 = gep n3

n13: bool
n13 = gep n1

n14: bool
n14 = ltp n1

n15: bool
n15 = ltp n2

n21: nat
n21 = fibp (O)

n22: nat
n22 = fibp (S O)

n23: nat
n23 = fibp (S (S O))

n24: nat
n24 = fibp (S (S (S O)))

m1: nat
m1 = add O (S O)

m2: nat
m2 = add (S (S O)) (S (S (S O)))

m3: nat
m3 = mult O (S O)

m4: nat
m4 = mult (S (S O)) (S (S (S O)))

m5: nat
m5 = fact (S O)

m6: nat
m6 = sub O (S O)

m7: nat
m7 = sub (S O) O

m8: nat
m8 = sub (S O) (S (S O))

m9: nat
m9 = exp (S O) O

m10: nat
m10 = exp (S (S O)) (S (S O))

m11: bool
m11 = le O (S O)

m12: bool
m12 = le (S O) O

m13: bool
m13 = le (S O) (S O)

m14: bool
m14 = eq O O

m15: bool
m15 = eq O (S O)

m16: bool
m16 = eq (S O) O

m17: bool
m17 = eq (S O) (S (S O))

m18: bool
m18 = gt (S O) (S (S O))

m19: bool
m19 = ge (S O) O

m20: bool
m20 = ge O (S O)

m21: bool
m21 = ge (S O) (S O)

m22: bool
m22 = lt (S O) (S (S O))

m23: nat
m23 = fib O

m24: nat
m24 = fib (S O)

m24: nat
m24 = fib (S (S (S (S O))))

a1: String
a1 = toString m24
