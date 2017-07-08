-- TUPLES
-- Are used when you know exactly how many values you want to combine
-- and its type depends on how many components it has
-- and the types of the components.
-- They are denoted with parentheses and
-- their components are separated by commas.
-- Unlike a list, a tuple can contain a combination of several types.

-- CORRECT
-- 3 pairs (tuple of size two)
correctTuple = [(1,2),(3,4),(5,6)]

-- ERROR --> 2 pairs and a triple (tuple of size three)
-- [(1,2),(3,4,5),(6,7)]
-- Couldn't match expected type ‘(t1, t)’
--                with actual type ‘(Integer, Integer, Integer)’

-- Tuples can contain Lists --> [Char] --> String

-- CORRECT
-- 5 triples of type ([Char], [Char], Integer)
family = [
    ("Mauro", "Carrero", 40),
    ("Virginia", "Aniano", 39),
    ("Lucas", "Dominguez", 13),
    ("Ignacio", "Carrero", 8),
    ("Facundo", "Carrero", 2)
  ]

-- ERROR --> a Pair (Integer, [Char]) and a pair (Integer, Integer)
-- [(1, "Nice"), (2, 7)]

-- Use tuples when you know in advance how many components
-- some piece of data should have.
-- Rigid: each different size of tuple is its own type

-- They can be compared with each other if their components can be compared:

-- FST
-- takes a pair and returns its first component.
fstOfPair = fst (1,2) -- 1

-- SND
-- takes a pair and returns its second component.
sndOfPair =  snd (1,2) -- 2

-- ZIP
-- Produces a list of pairs
zipPairs = zip [1,2,3,4,5][5,5,5,5,5]

-- it adjusts to shorter list
zipWithNames = zip [1,2,3,4,5,6,7,8]["Uno", "Dos", "Tres", "Cuatro", "Cinco"]

-- it adjusts to finite lists - due to Haskell lazyness
zipFinite = zip [1,2..] ["Mauro", "Vichy", "Lucas", "Ignacio", "Facundo"]

-- TRIANGLE
-- which right triangle that has integers for all sides
-- and all sides equal to or smaller than 10
-- has a perimeter of 24?
trianglesWithSidesEqualOrLessThan10 = [(a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10]]

-- [Pythagorean theorem]
-- In any right triangle, the area of the square
-- whose side is the hypotenuse (the side opposite the right angle)
-- is equal to the sum of the areas of the squares
-- whose sides are the two legs (the two sides that meet at a right angle).
-- a² + b² = c²
rightTrianglesWithSidesEqualOrLessThan10 = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

withPerimeter24rightTrianglesWithSidesEqualOrLessThan10 =
  [(a,b,c) | (a,b,c) <- rightTrianglesWithSidesEqualOrLessThan10, a+b+c == 24 ]
