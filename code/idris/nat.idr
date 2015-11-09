module nat

import bool
import pair
import eq
import serialize

-- Here's our data type definition.

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

{-(S r) is reduced to (S (S t)) which is, in turn, reduced to (S (S (S O))).
the evenb function is then applied to this value, which reduces to
evenb (S O). This value returns true.-}

||| given a pair of natural numbers, return its sum

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

||| given a pair of natural numbers, return its product

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

||| given a natural number, return its factorial

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

||| given a pair of natural numbers, return the difference

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

{- given a pair of natural numbers, return the result
of the first to the power of the second -}
exp: nat -> nat -> nat
exp x O = (S O)
exp x (S n) = mult x (exp x n)

{- given a pair of natural numbers, return true if the first is less than or
equal to the second, else return false -}

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

{- given a pair of natural numbers, return true if they are equal,
else return false -}
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O (S n) = false
eql_nat (S n) O = false
eql_nat (S n) (S m) = eql_nat n m

{- given a pair of natural numbers, return true if the first is greater
than the second, else return false -}

gt: nat -> nat -> bool
gt n m = not (gt n m)

{- given a pair of natural numbers, return true if the first is greater than
or equal to the second, else return false -}
ge: nat -> nat -> bool
ge n O = true
ge O (S n) = false
ge (S n) (S m) = ge n m

{- given a pair of natural numbers, return true if the first is less than
the second, else return false -}

lt: nat -> nat -> bool
lt n m = not (ge n m)

{- given a natural number, return the fibbonaci number
of that term in the sequence -}

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql b1 b2 = eql_nat b1 b2

instance serialize nat where
  toString O = "Z"
  toString (S n) = "s " ++ (toString n)
