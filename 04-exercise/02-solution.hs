-- Übung 04 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

import Prelude hiding (unzip, map)

-- Aufgabe 02A
unzip :: [(a, b)] -> ([a], [b])
unzip [] = ([], [])
unzip ((x, y) : zs) = (x : xs, y : ys)
    where (xs, ys) = unzip zs

-- Aufgabe 02B
map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

uncurry :: (a -> b -> c) -> (a, b) -> c
uncurry f (x, y) = f x y

-- Werten sie den folgenden Term schrittweise aus.
-- Verwenden sie dabei sinnvolle Abkürzungen.

{-
map (uncurry (+)) [(1, 2), (3, 4)] 
= uncurry (+) (1, 2) : map (uncurry (+)) [(3, 4)]
= (+) 1 2 : uncurry (+) (3, 4) : map (uncurry (+)) []
= 3 : (+) 3 4 : []
= [3, 7]
-}










