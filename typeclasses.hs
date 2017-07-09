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
compare12and7 = compare 12 7 -- GT
compare5and7 = compare 5 7 -- LT
compare7and7 = compare 7 7 -- EQ

-- Show
---- show :: Show a => a -> String
show3 = show 3
showFalse = show False
showTuple = show (1,2,3)

-- Read
---- read :: Read a => String -> a
readTrueOrFalse = read "True" || False -- True
readFloat = read "27.7" + 12.12 -- 39.82
readInt = read "5" - 2 -- 3
readConcat = read "[1,2,3,4]" ++ [5] -- [1,2,3,4,5]

---- read "4" -- ERROR: because it does not know which type return, it
----             could be any type.
---- use TYPE ANNOTATIONS
read4 = read "4" :: Int   -- 4
read5 = read "5" :: Float -- 5.0

read5AndMultiplyBy4 = (read "5" :: Float) * 4     -- 20.0
readAList = read "[1,2,3,4,5]" :: [Int]           -- [1,2,3,4,5]
readTuple = read "(27,\"Mauro\")" :: (Int,[Char]) -- (27,"Mauro")

-- Enum
-- Members are sequentially ordered types — they can be enumerated.
-- Main advantage: we can use its types in list ranges.
-- They have defined succesors and predecesors (succ, pred)
-- Types in this class: (), Bool, Char, Ordering, Int, Integer, Float and Double
getABCDE = ['a'..'e'] -- abcde
getOrderings = [(LT)..(GT)] -- [LT,EQ,GT]

-- Bounded
-- Have an upper and a lower bound.
-- minBound :: Bounded a => a
-- maxBound :: Bounded a => a
minInt = minBound :: Int -- -9223372036854775808
maxInt = maxBound :: Int -- 9223372036854775807
minChar = minBound :: Char -- '\NUL'
maxChar = maxBound :: Char -- '\1114111'
minBool = minBound :: Bool -- False
maxBool = maxBound :: Bool -- True
minTuple = minBound :: (Bool,Int,Char) -- (False,-9223372036854775808,'\NUL')
maxTuple = maxBound :: (Bool,Int,Char) -- (True,9223372036854775807,'\1114111')

-- Num
---- Numeric typeclass, it acts like a number.
---- Need Show and Eq.
---- Includes all numbers, real numbers and integral numbers.
---- 20 :: Num t => t
int20 = 20 :: Int     -- 20
integer20 = 20 :: Integer -- 20
float20 = 20 :: Float   -- 20.0
double20 = 20 :: Double -- 20.0

---- (*) :: Num a => a -> a -> a

-- Integral
---- Numeric typeclass.
---- Includes only integral numbers (Int and Integer).

-- Floating
---- Numeric typeclass.
---- Includes floating point numbers (Float and Double).

-- fromIntegral
-- fromIntegral :: (Num b, Integral a) => a -> b
fromIntegralLengthBy2etc = fromIntegral (length [1,2,3,4]) * 2.2 -- 8.8

-- length
-- length :: Foldable t => t a -> Int
