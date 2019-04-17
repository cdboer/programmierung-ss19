-- Übung 02 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

-- Zusatzaufgabe 01
-- Eager evaluation:
-- f2 (f1 1) 2
-- => f2 2 ([1] ++ f1 (1+1))
-- => f2 2 ([1] ++ f1 2)
-- => f2 2 ([1] ++ ([2] ++ f1 (2+1)))
-- => f2 2 ([1] ++ ([2] ++ f1 3))
-- => f2 2 ([1] ++ ([2] ++ ([3] ++ f1 (3+1))))
-- => ... terminiert nicht!

-- Lazy evaluation:
-- f2 (f1 1) 2
-- => f2 2 ([1] ++ f1 (1+1))
-- => f2 2 (1 : f1 (1+1))
-- => f2 1 (f1 (1+1))
-- => f2 1 ([(1+1)] ++ f1 (1+1+1))
-- => f2 1 ((1+1) : f1 (1+1+1))
-- => (1+1)
-- => 2

-- Zusatzaufgabe 02A
-- Problem beim Einfügen am Ende:
--
-- Implementierung von ++:
-- (++) :: [a] -> [a] -> [a]
-- (++) []     ys = ys
-- (++) (x:xs) ys = x : xs ++ ys
-- 
-- Verwendung: xs ++ ys
-- xs wird komplett "durchlaufen". 
-- Daher O(n), wobei n die Anzahl der Elemente von xs ist.
-- Für den Cons Operator gilt aus offensichtlichen Gründen O(1).
-- O-Notation: https://de.wikipedia.org/wiki/Landau-Symbole

-- Zusatzaufgabe 02B
type Queue = ([Int],[Int])

isEmpty :: Queue -> Bool
isEmpty ([],[]) = True
isEmpty _ = False

{-
 - Die Funktion makeProper wird genutzt, um die Invariante
 - Queue (l, r) nicht leer <=> l nicht leer
 - zu realisieren
-}

makeProper :: Queue -> Queue
makeProper ([],rs) = (reverse rs, [])
makeProper q = q

enqueue :: Int -> Queue -> Queue
enqueue i (ls, rs) = makeProper (ls, i:rs)

first :: Queue -> Int
first ([],[]) = error "empty queue"
first (l:_,_) = l

rest :: Queue -> Queue
rest ([],[]) = error "empty queue"
rest (_:xs,ys) = makeProper (xs,ys)
