-- TypeClasses
-- A typeclass is a sort of interface that defines some behavior.

-- Eq
---- The Eq typeclass provides an interface for testing for equality.
---- All standard Haskell types except for IO functions
---- are a part of the Eq typeclass.

---- :t (==)
---- (==) :: Eq a => a -> a -> Bool

---- Eq a   --> class constraint
---- The equality function takes any two values
---- that are of the same type and returns a Bool.
---- The type of those two values must be a
---- member of the Eq class (class constraint).

---- elem
---- elem :: (Eq a, Foldable t) => a -> t a -> Bool
---- (Eq a, Foldable t) --> class constraint

-- Ord
---- For Types that have an ordering.
---- (>) :: Ord a => a -> a -> Bool
---- compare :: Ord a => a -> a -> Ordering
---- Ordering: GT, LT or EQ
