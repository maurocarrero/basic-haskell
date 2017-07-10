-- PATTERN MATCHING
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

-- recursive factorial
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Mauro"
charName 'b' = "Ignacio"
charName 'c' = "Virginia"

-- charName 'f'
-- ---> ERROR: Non-exhaustive patterns in function charName

-- Patter matching can also be used on tuples
-- Takes two vectors in a 2D space (that are in the form of pairs)
-- and adds them together.
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

-- Improving the latter with pattern matching
addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Make our fst and snd (and trd) for triples
first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

main = do
  putStrLn "Peteco was here"
  putStrLn (show "addVectors: " ++ show (addVectors (1, 2) (3, 4)))
  putStrLn (show "First (1, 2, 3): " ++ show (first (1, 2, 3)))
  putStrLn (show "Second (1, 2, 3): " ++ show (second (1, 2, 3)))
  putStrLn (show "Third (1, 2, 3): " ++ show (third (1, 2, 3)))
