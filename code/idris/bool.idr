module bool

import serialize

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

nand: bool -> bool -> bool
nand a b = not (and a b)

xor: bool -> bool -> bool
xor true false = true
xor false true =true
xor _ _ = false

eql_bool: bool -> bool -> bool
eql_bool a b = not (xor a b)

instance serialize bool where
  toString true = "True"
  toString false  = "False"
