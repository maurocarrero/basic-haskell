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
