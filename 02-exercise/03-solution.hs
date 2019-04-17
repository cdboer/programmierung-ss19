-- Übung 02 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

data Tree = Node String [Tree]

-- Aufgabe 03A
-- Geben Sie das entsprechende Element des Typs Tree an:
-- Node "Wurzel" [Node "l" [], Node "m" [Node "lu" [], Node "ru" []], Node "r" []]

-- Aufgabe 03B
level :: Int -> Tree -> [String]
level 0 (Node x _ ) = [x]
level n (Node _ ts) = concatMap (level (n-1)) ts
    where
        concatMap :: (a -> [b]) -> [a] -> [b]
        concatMap _ [] = []
        concatMap f (x:xs) = f x ++ concatMap f xs
