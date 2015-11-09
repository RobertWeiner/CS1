module colors

import pair
import bool

%default total

data color = red | blue | green | yellow | cyan | magenta

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement cyan = red
complement magenta = green
complement _ = blue

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive b = not (additive b)

complements: pair color color -> bool
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue
