module listExample

import list
import bool
import Soccer
import nat
import relation

listA: list Soccer
listA = a :: b :: c :: d :: e ::  nil

mapA: list bool
mapA = map not (true :: false :: nil)

mapB: list Nat
mapB = map wins listA

mapC: list String
mapC = map name listA

filterA: list Soccer
filterA = filter good listA

-- Returns number of wins of Manchester United
w: Nat
w = wins a

-- Returns name of b
n: String
n = name b

totalWinsGoodTeams: Nat
totalWinsGoodTeams = query2 listA good wins plus 0

namesOfGoodTeams: String
namesOfGoodTeams = query2 listA good name (++) ""
