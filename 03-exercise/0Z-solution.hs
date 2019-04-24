-- Übung 03 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

import Prelude hiding (foldl)

-- Aufgabe Z01A
-- Aufruf:
-- maxLength [[1,2,3], [2,3], [4]] = 3 

-- Aufgabe Z01B
maxLength :: [[Int]] -> Int
maxLength [] = -1
maxLength (x:xs) = max' (length' x) (maxLength xs)

length' :: [Int] -> Int
length' [] = 0
length' (x:xs) = 1 + (length' xs)

max' :: Int -> Int -> Int
max' x y 
    | x > y = x
    | otherwise = y

-- Aufgabe Z02B
foldl :: (Int -> Int -> Int) -> Int -> [Int] -> Int
foldl f a [] = a
foldl f a (b:bs) = foldl f (f a b) bs

-- mit foldr
foldl' :: (Int -> Int -> Int) -> Int -> [Int] -> Int
foldl' f a bs = foldr (\b g x -> g (f x b)) id bs a
