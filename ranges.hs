-- range
between1And20 = [1..20]
is7Between1And20 = 7 `elem` between1And20

-- inverse range
between20And1 = [20, 19 .. 1]

-- defining step
evenBetween2And20 = [2, 4 .. 20]
oddBetween1And21 = [1, 3 .. 21]
threeBetween3And130 = [3, 6 .. 130]

-- characters range, since letters are enumerable
fromAToZmin = ['a'..'z']
fromAToZmay = ['A'..'Z']

lowerMInAZmay = 'm' `elem` fromAToZmay -- False
upperMInAZmay = 'M' `elem` fromAToZmay -- True
lowerMInAZmin = 'm' `elem` fromAToZmin -- True
upperMInAZmin = 'M' `elem` fromAToZmin -- False

-- Beware of floats in range, funky results, do not use them.
-- [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]
floatsRange = [0.1, 0.3 .. 1]

-- infinite lists
infiniteList = [2, 6 ..]
take24FromInfiniteList = take 24 infiniteList

-- cycle
takeCycle123 = take 10 (cycle [1, 2, 3]) -- [1, 2, 3, 1, 2, 3, 1]
take12LOL = take 12 (cycle "LOL ") -- "LOL LOL LOL "

-- repeat
take10Repeat5 = take 10 (repeat 5) -- [5,5,5,5,5,5,5,5,5,5]
-- better use replicate instead of repeat
replicate10fives = replicate 10 5 -- [5,5,5,5,5,5,5,5,5,5]
