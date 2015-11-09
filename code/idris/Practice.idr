module Practice

import bool
import pair
import Love

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
data type a b = mkType a b
data trio a b c = mkTrio a b c

t1: type bool Day
t1 = mkType true Thursday

t2: type People People
t2 = mkType Maurice Mary

t3: trio bool bool Day
t3 = mkTrio true false Wednesday

fst: type a b -> a
fst (mkType x y) = x

snd: type a b -> b
snd (mkType x y) = y

third: trio a b c -> c
third (mkTrio x y z) = z
