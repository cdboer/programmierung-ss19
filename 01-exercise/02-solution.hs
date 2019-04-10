-- Übung 01 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

-- Aufgabe 02:
fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- Effizientere Lösung
fib' :: Int -> Int
fib' n = fib'' 1 1 n

fib'' :: Int -> Int -> Int -> Int
fib'' x _ 0 = x
fib'' x y n = fib'' y (x + y) (n - 1)
