-- Übung 01 - Programmierung Sommersemester 2019
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/prog-ss19

-- Aufgabe 01A:
fac :: Integer -> Integer
fac 0 = 1
fac n = n * fac (n-1)

-- Alternativ mit Funktionen der Standard Bibliothek
fac' :: Integer -> Integer
fac' n = product [1..n]

-- Aufgabe 01B:
sumFacs :: Integer -> Integer -> Integer
sumFacs n m
    | m < n = 0
    | otherwise = fac n + sumFacs (n+1) m

sumFacs' :: Integer -> Integer -> Integer
sumFacs' n m =
    if n <= m
    then fac n + sumFacs' (n+1) m
    else 0

sumFacs'' :: Integer -> Integer -> Integer
sumFacs'' n m
    | n <= m = fac n + sumFacs(n+1) m
    | otherwise = 0

-- Alternative Lösung mit Funktionen der Standart Bibliothek, List Comprehensions
sumFacs''' :: Integer -> Integer -> Integer
sumFacs''' n m = sum [fac' i | i <- [n..m]]
