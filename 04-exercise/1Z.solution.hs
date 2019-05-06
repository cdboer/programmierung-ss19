-- Übung 04 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19


data Tree a = Branch (Tree a) (Tree a) | Leaf a deriving (Show)

-- Aufgabe 1ZA
check :: Tree Bool -> Bool
check (Leaf a) = a == False
check (Branch l r) = check l || check r

-- Aufgabe 1ZB
toList :: Tree a -> [a]
toList = pack []
    where 
        pack xs (Leaf a) = xs ++ [a]
        pack xs (Branch l r) = (pack xs l) ++ (pack xs r)

-- Aufgabe 1ZC
toTree :: [Int] -> Tree Int
toTree [x] = Leaf x
toTree (x:y:zs) = Branch (Leaf x) (toTree (y:zs))

toTree' :: [Int] -> Tree Int
toTree' [x] = Leaf x
toTree' (x:y:zs) = Branch (toTree (y:zs)) (Leaf x)
