module list

import nat
import pair
import bool
import ite
import eq
import serialize

infixr 7 ::,++

data list a = nil | (::) a (list a)

isEmpty: list a -> bool
isEmpty nil = true
isEmpty _ = false

-- returns length of list
length: list a -> nat
length nil = O
length (n :: a) = S (length a)

-- appends lists with infix operator
(++): list a -> list a -> list a
(++) nil x = x
(++) (n :: x) b = n :: (x ++ b)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h) :: (map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h)
                        (h :: (filter f t))
                              (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true (member v t)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql l nil = false
  eql nil l = false
  eql (h1::t1) (h2::t2) =
      and (eql h1 h2) (eql t1 t2)

listString: (serialize a, eq a) => list a -> String
listString nil = ""
listString (h::nil) = (toString h)
listString (h::t) = (toString h) ++ ", " ++ (listString t)

instance (serialize a, eq a) => serialize (list a) where
  toString l = "[" ++ (listString l) ++ "]"
