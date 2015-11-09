module Person

import bool
import list

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record person where
    constructor MkPerson
    name : String
    age : Nat
    gender : bool
    height : Nat
    weight : Nat

-- An example value of type Person
p: person
p = MkPerson "Tommy" 3 true 75 190

z: person
z = MkPerson "Bill" 59 true 71 175

m: person
m = MkPerson "Cinthy" 14 false 62 120

g: person
g = MkPerson "Alice" 21 false 60 105

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

people: list person
people = p :: z :: m :: g :: nil
