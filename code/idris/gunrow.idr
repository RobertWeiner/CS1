module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death
||| rate per 10,000,000 by gun for homicides, suicides,
||| unintentional, and other
data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

australia: gunrow
australia = mkGunrow Australia 11 62 5 8

austria: gunrow
austria = mkGunrow Austria 18 268 1 8

honduras: gunrow
honduras = mkGunrow Honduras 648 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow a b c d e) = a

hom: gunrow -> Nat
hom (mkGunrow a b c d e) = b

sui: gunrow -> Nat
sui (mkGunrow a b c d e) = c

uni: gunrow -> Nat
uni (mkGunrow a b c d e) = d

oth: gunrow -> Nat
oth (mkGunrow a b c d e) = e

listG: list gunrow
listG = cons argen (cons australia (cons austria (cons honduras (cons usa nil))))
