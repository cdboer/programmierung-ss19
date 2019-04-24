-- Übung 03 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

import Prelude hiding (even)

-- Aufgabe 02A
data Tree = Node Int [Tree] 

nLeaves :: Tree -> Int

-- Aufgabe 02B
even :: Tree -> Bool
