-- Übung 01 - Programmierung Sommersemester 2019
-- Autor: Claas de Boer
-- Github: git-link

-- Aufgabe ad01
-- Implementieren Sie die (unendliche) Liste der Fibonacci-Zahlen f0, f1, ...
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

-- Die Lösung der Binärbaum Aufgabe gibt es zum Wochenende (12.04-14.04)
