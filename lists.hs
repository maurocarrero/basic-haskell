lostNumbers = [1, 7, 27, 77, 11, 18, 24]
otherNumbers = [23, 11, 37, 411, 1024, 1333333]
concatenatedNumbers = lostNumbers ++ otherNumbers
concatStrings = "Hello " ++ "World"
concatChars = ['w', 'o'] ++ ['o', 't']
concatCharsAndStrings = 'A':" SMALL CAT"
concatNumbersAndNumLists = 2 : [0, 17]
getAt7 = "Steve Buschemi" !! 7
getAt11 = [ 9.4, 33.2, 96.2, 11.2, 23.25] !! 1
getHead = head "Mauro Carrero"
getTail = tail "Mauro Carrero"
getLast = last "Mauro Carrero"
getInit = init "Mauro Carrero" --
getLength = length [0,1,2,3,4,5,6] -- 13

-- receiving the list as param
isEmptyXS xs = null xs
reverseMe = reverse

-- currying
take3 = take 3
drop3 = drop 3

xs = [123, 456, 78, 77, 23]
family = ["Mauro", "Virginia", "Lucas", "Ignacio", "Facundo"]

getXSHead = head xs -- 123
getXSTail = tail xs -- [456, 78, 77, 23]
getXSInit = init xs -- [123, 456, 78, 77]
getXSLast = last xs -- 23
getXSMaximum = maximum xs -- 456
getXSMinimum = minimum xs -- 23
sumXS = sum xs -- 757
productXS = product xs -- 7747884144
is77InXS = 77 `elem` xs -- True
isMInMauro = 'M' `elem` "Mauro"
isFacundoInFamily = "Facundo" `elem` family
