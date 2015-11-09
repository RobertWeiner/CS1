module soccer

import list
import pair

data team = ManchesterCity  | Arsenal | ManchesterUnited | CrystalPalace | LeicesterCity

--Defines Team Name, Wins, Draws, Losses, and Points
data table = mkTable team Nat Nat Nat Nat

mancity: table
mancity = mkTable ManchesterCity 6 0 2 18

arsenal: table
arsenal = mkTable Arsenal 5 1 2 16

manunited: table
manunited = mkTable ManchesterUnited 5 1 2 16

crystal: table
crystal = mkTable CrystalPalace 5 0 3 15

leicester: table
leicester = mkTable LeicesterCity 4 3 1 15

TopFiveTeams: list table
TopFiveTeams = cons mancity (cons arsenal (cons manunited (cons crystal (cons leicester nil))))

updateWins: table -> Nat -> table
updateWins (mkTable a b c d e) f = mkTable a f c d e

updateDraws: table -> Nat -> table
updateDraws (mkTable a b c d e) f = mkTable a b f d e

updateLosses: table -> Nat -> table
updateLosses (mkTable a b c d e) f = mkTable a b c f e

updatePoints: table -> Nat -> table
updatePoints (mkTable a b c d e) f = mkTable a b c d f
