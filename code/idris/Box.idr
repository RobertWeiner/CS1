module Box

import eq
import bool
import serialize

data Box t = mkBox t
--Box becomes a type constructor and takes type of "t". --This can stand for any type of value

unbox: Box t -> t
--polymorphic function : it can operate on values of different types
unbox (mkBox b) = b

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2

instance (serialize a) => serialize (Box a) where
  toString (mkBox v1) = "(" ++ (toString v1) ++ ", )"
