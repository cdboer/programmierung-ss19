-- Übung 04 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19


data Tree a = Branch a (Tree a) (Tree a) | Leaf a

-- Aufgabe 01A
-- _____

-- Aufgabe 01B
depth :: Tree a -> Int

-- Aufgabe 01C
paths :: Tree a -> Tree [a]

-- Aufgabe 01D
tmap :: (a -> b) -> Tree a -> Tree b
