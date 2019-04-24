-- Übung 03 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

-- Aufgabe 03
f :: [Int] -> Int
f xs = foldr (*) 1 (map (\x -> x * x) (filter even xs))

f' :: [Int] -> Int
f' xs = foldr (*) 1 ((map square) (filter even xs))
    where square x = x * x

-- Etwas schöner mit Funktionskomposition. 
-- (a->b) -> (b->c) -> (a->c)
f'' :: [Int] -> Int
f'' = foldr (*) 1 . map square . filter even
    where square x = x * x
