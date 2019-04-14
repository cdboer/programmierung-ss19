-- Übung 01 - Programmierung Sommersemester 2019
-- Autor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

-- Aufgabe Z01
fibs :: [Int]
fibs = fibs' 0
    where
        fibs' x = fib x : fibs' (x + 1)

fibs'' :: [Int]
fibs'' = [fib i | i <- [1..]]

fib :: Int -> Int
fib n = fib' 1 1 n

fib' :: Int -> Int -> Int -> Int
fib' x _ 0 = x
fib' x y n = fib' y (x + y) (n - 1)

-- Aufgabe Z02
{- 
 - Es gibt genau einen Binärbaum mit einem Knoten.
 - Ein Binärbaum mit n + 1 Knoten, besteht aus einem Wurzelknoten
 - sowie zwei Teilbäumen, deren Knotensummen n = m + (n -1 - m) ergibt.
 - Dabei ist m die Größe des linken Teilbaums. 
 - Mit der Hilfsfunktion go (Haskell Namenskonvention für Hilfsfunktionen) 
 - summieren wir über alle Möglichkeiten für m auf.
 - (d.h. über alle möglichen Größen des linken Teilbaums).
-}

countBinTrees :: Int -> Int
countBinTrees 0 = 0
countBinTrees 1 = 1
countBinTrees n = go (n-1)
    where
        go 0 = 0
        go m = go (m-1) + countBinTrees (n-1-m) * countBinTrees m


-- Lösung unter Verwendung der Catalan-Zahlen
-- Wiki-Link: https://de.wikipedia.org/wiki/Catalan-Zahl
countBinTrees' :: Int -> Int
countBinTrees' n
    | even n = 0
    | otherwise =
        let m = (n-1)  `div` 2
        in (fac (2*m)) `div` (fac m * fac (m+1))
