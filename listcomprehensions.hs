-- Math:

-- S = { 2 · x | x ∈ N, x ≤ 10 }

-- 2 · x  --> Output fuction
-- x      --> variable
-- x ∈ N  --> Input Set
-- x ≤ 10 --> Predicate

-- S = [2,4,6,8,10,12,14,16,18,20]

-- a way to achieve this specific case
take10fromNLessOrEqualThan10 = take 10 [2,4..]

-- using list comprehensions
getS = [ 2 * x | x <- [1..10]]
-- 2 * x        --> Output fuction
-- x            --> variable
-- x <- [1..10]      --> Input Set
-- No predicate

getSGreaterOrEqualThan12 = [ 2 * x | x <- [1..10], x * 2 >= 12]
-- 2 * x        --> Output fuction
-- x            --> variable
-- x <- [1..10] --> Input Set
-- x * 2 >= 12  --> Predicate


-- FILTERING
-- weeding out lists by predicates.

-- 1) Get all numbers from 50 to 100 whose remainder
-- when divided with the number 7 is 3.
getAllNumbers = [ x | x <- [50..100], x `mod` 7 == 3]
-- x              --> Output fuction
-- x              --> variable
-- x <- [50..100] --> Input Set
-- x `mod` 7 == 3 --> Predicate

-- 2) Replace each odd number greater than 10 with "BANG!",
-- each odd number that's less than 10 with "BOOM!".
-- If a number isn't odd, we throw it out of our list.
boomBangs xs = [ if x < 10 then "BANG!" else "BOOM!" | x <- xs, odd x ]
-- if x < 10 then "BANG!" else "BOOM!"  --> Output function
-- x <- xs                              --> Input set
-- odd x                                --> Predicate

-- 3) Get all numbers from 10 to 20 that are not 13, 15 or 19.
ex03 = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]

-- 4) Get the products of all the possible combinations
-- between numbers in 2 lists.
ex04 = [ x * y | x <- [2,5,10], y <- [8,10,11]]

-- 5) Combine a list of adjectives and a list of nouns
nouns = [ "zarigüella", "pergenio", "uzumakinarutó" ]
adjectives = ["vagoneta", "mentecato", "chinqui güenco"]
combinedLists = [ noun ++ " " ++ adjective | noun <- nouns, adjective <- adjectives ]

-- 6) Custom Length
-- _ --> we do not care about the value in the input list.
length' xs = sum [ 1 | _ <- xs ]

-- 7) Remove non uppercase
removeNonUppercase xs = [ x | x <- xs, x `elem` ['A'..'Z']]

-- 8) Remove all odd numbers without flattening the list
xxs = [
    [1,3,5,2,3,1,2,4,5],
    [1,2,3,4,5,6,7,8,9],
    [1,2,4,2,1,6,3,1,3,2,3,6]
  ]
removeOddNumbers xxs = [[ x | x <- xs, even x ] | xs <- xxs ]
