module friend

import bool

||| A friend is someone who is or isn't trustworthy, who
||| has a name, and who has an age in years
data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Sam" 18

f2: friend
f2 = mkFriend false "Jake" 18

getAge: friend -> Nat
getAge (mkFriend a b c) = c

getName: friend -> String
getName (mkFriend a b c) = b

getTrust: friend -> bool
getTrust (mkFriend a b c) = a
