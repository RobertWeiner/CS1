module set

import list
import bool
import ite
import eq

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting point for building any set
new_set: set a
new_set = mkSet nil

set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l) (mkSet l) (mkSet (v::l))

subset_elements: (eq a) => list a -> list a -> bool
subset_elements t1 nil = false
subset_elements nil t1 = true
subset_elements (h1::t1) l2 = and (member h1 l2) (subset_elements t1 l2)

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = (same_elements l1 l2)

instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2
