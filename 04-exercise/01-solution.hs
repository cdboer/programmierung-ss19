-- Übung 04 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19


data Tree a = Branch a (Tree a) (Tree a) | Leaf a deriving (Show)

-- Aufgabe 01A
--
{- Branch 1
 - 	(Branch (Branch  (Leaf 1) 
 - 			(Leaf 2))
 - 		(Leaf 3))
 - 	(Branch (Leaf 4) 
 - 		(Leaf 5))
 -}




-- Aufgabe 01B
depth :: Tree a -> Int
depth (Leaf _) = 1
depth (Branch _ l r) = (depth l `min` depth r) + 1

-- Aufgabe 01C
paths :: Tree a -> Tree [a]
paths = paths' []
    where
        paths' p (Leaf a) = Leaf (p ++ [a])
        paths' p (Branch a l r) = 
            let p' = p ++ [a] in 
            Branch p' (paths' p' l) (paths' p' r)

-- Aufgabe 01D
tmap :: (a -> b) -> Tree a -> Tree b
tmap f (Leaf a) = Leaf (f a)
tmap f (Branch a l r) = Branch (f a) (tmap f l) (tmap f r)
