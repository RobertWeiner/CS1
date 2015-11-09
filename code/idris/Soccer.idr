module Soccer

import bool
import relation

||| A record type where a soccer team in the Premier League has a name, a number of wins, and whether or not the team is good.

record Soccer where
    constructor mkTeam
    name : String
    wins : Nat
    good : bool

a: Soccer
a = mkTeam "Manchester United" 6 true

b: Soccer
b = mkTeam "Newcastle United" 0 false

c: Soccer
c = mkTeam "Southampton" 3 false

d: Soccer
d = mkTeam "Crystal Palace" 5 true

e: Soccer
e = mkTeam "Chelsea" 2 false
