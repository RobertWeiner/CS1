module relationTest

import relation
import bool
import list
import Person

years': Nat
years' = query plus 0 age gender people

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = query plus 0 height gender people

names: String
names = query (++) "" name gender people

years'': Nat
years'' = query2 people gender age plus 0

totalInches'': Nat
totalInches'' = query2 people gender height mult 1

names'': String
names'' = query2 people gender name (++) ""

totalWeight: Nat
totalWeight = query plus 0 weight gender people

totalWeight': Nat
totalWeight' = query2 people gender weight plus 0
