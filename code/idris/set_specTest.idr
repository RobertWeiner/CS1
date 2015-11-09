module set_specTest

import set_adt_hw
import list
import bool
import option
import pair
import nat
import eq
import serialize
import ite

a: set bool
a = mkSet nil

b: set bool
b = mkSet (true :: false :: true :: false :: nil)

c: set bool
c = mkSet (false::true::false::nil)

t1: bool
t1 = isEmpty a

t2: bool
t2 = isEmpty b

t3: set bool
t3 = set_insert true b

t4: set bool
t4 = set_insert true (mkSet (false::false::false::nil))

t5: set bool
t5 = set_remove true b

t6: nat
t6 = set_cardinality b

t7: bool
t7 = set_member true b

t8: bool
t8 = set_member true (mkSet (false::false::nil))

t9: set bool
t9 = set_union b c

t10: set bool
t10 = set_intersection b c

t11: set bool
t11 = set_difference b (mkSet (true::nil))

t12: bool
t12 = set_forall not b

t13: bool
t13 = set_forall not (mkSet (false::nil))

t14: bool
t14 = set_exists not b

t15: bool
t15 = set_exists not (mkSet (true::true::true::true::nil))

t16: option bool
t16 = set_witness not b

t17: set (pair bool bool)
t17 = set_product b c

t18: bool
t18 = eql_set b c

t19: bool
t19 = eql_set b b

t20: String
t20 = set_toString b
