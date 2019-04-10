-- Übung 01 - Programmierung Sommersemester 2019
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

-- Aufgabe 03A:
prod :: [Int] -> Int
prod [] = 1
prod (x : xs) = x * prod xs

-- Aufgabe 03B:
rev :: [Int] -> [Int]
rev [] = []
rev (x : xs) = rev xs ++ [x]

-- Verbesserte Implementierung
rev' :: [Int] -> [Int]
rev' xs = aux xs []
    where
        aux [] ys = ys
        aux (x : xs) ys = aux xs (x : ys)

-- Aufgabe 03C:
rem' :: Int -> [Int] -> [Int]
rem' _ [] = []
rem' x (y : ys)
    | x == y = rem' x ys
    | otherwise = y : rem' x ys

-- Aufgabe 03D:
isOrd :: [Int] -> Bool
isOrd [] = True
isOrd [_] = True
isOrd (x : y : xs) = x <= y && isOrd (y : xs)

isOrd' :: [Int] -> Bool
isOrd' [] = True
isOrd' [_] = True
isOrd' (x:y:ys)
    | x <= y = isOrd'(y:ys)
    | otherwise = False

-- Aufgabe 03E:
merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
    | x < y = x : merge xs (y : ys)
    | otherwise = y : merge (x : xs) ys
