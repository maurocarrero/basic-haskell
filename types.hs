-- TYPES
-- Explicit type declaration
-- removeNonUppercase has a type of [Char] -> [Char]
-- it maps from a String to a String
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase xs = [ x | x <- xs, x `elem` ['A'..'Z']]

-- Common types

-- Int: bounded Integer type
-- 32-bit machines, maximum: 2147483647, minimum: -2147483648.
-- more efficient
addThree :: Int -> Int -> Int -> Int
addThree x y z = sum [x,y,z]

-- Integer: unbounded Integer type
-- can represent really huge numbers
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Float: real floating point with single precision
-- C = π · d = 2π · r
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double: real floating point with double precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- circumference 0.5 --> 3.1415927 (Float) --> pi
-- circumference' 0.5 --> 3.141592653589793 (Double) --> pi

-- Bool: boolean type
-- True or False
trueOrFalse :: Bool -> Bool
trueOrFalse x = not x

-- Char: represents a character
-- denoted by single quotes
-- a list of Char is a String
-- getFirstChar :: [Char] -> Char
getFirstChar xs = head xs

-- Which is the type of head function
-- :t head
-- head :: [a] -> a
-- a is not a type (not on capital letters), is a TYPE VARIABLE
-- it can be of any type
-- functions that have type variables are called POLYMORPHIC FUNCTIONS.
-- head takes a list of any type and returns one element of that type.

-- fst :: (a, b) -> a
-- snd :: (a, b) -> b
