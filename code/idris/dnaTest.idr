module dnaTest

import dna
import list

compA: base
compA = complement_base A

compT: base
compT = complement_base T

compC: base
compC = complement_base C

compG: base
compG = complement_base G

baseList1: list base
baseList1 = (A::T::C::G::T::C::G::A::A::C::G::T::G::T::C::C::A::A::G::G::T::G::A::T::C::C::C::G::A::T::G::A::T::C::C::A::T::T::G::A::nil)
