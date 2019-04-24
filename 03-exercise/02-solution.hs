-- Übung 03 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

import Prelude hiding (even)

-- Aufgabe 02A
data Tree = Node Int [Tree]

nLeaves :: Tree -> Int
nLeaves (Node a []) = 1
nLeaves (Node a (x:xs)) = splitList (x:xs)

splitList :: [Tree] -> Int
splitList [] = 0
splitList (x:xs) = (nLeaves x) + (splitList xs)

-- Implementierung in einer Funktion
nLeaves' :: Tree -> Int
nLeaves' (Node a []) = 1
nLeaves' (Node a [x]) = nLeaves' x
nLeaves' (Node a (x:xs))
    = nLeaves' (Node a [x]) + nLeaves' (Node a xs)

-- Aufgabe 02B
-- Implementierung in einer Funktion
even :: Tree -> Bool
even (Node a []) = True
even (Node a [x]) = False
even (Node a (x:y:xs)) 
    = (even x) && (even y) && (even (Node a xs))

-- Implementierung mit Hilfsfunktion
even' :: Tree -> Bool
even' (Node a l) = (((length l) `mod` 2) == 0) && (everyEven l)

everyEven :: [Tree] -> Bool
everyEven [] = True
everyEven (a:l) = (even' a) && (everyEven l)


