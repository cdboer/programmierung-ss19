-- Übung 02 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

-- Aufgabe 01A
pack :: [Char] -> [[Char]]
pack [] = []
pack (x:xs) = unite x (x:xs) : find x xs

-- Verpacke Abschnitt zu Liste
unite :: Char -> [Char] -> [Char]
unite _ [] = []
unite y (x:xs)
    | y == x = x : unite y xs
    | otherwise = []

-- Finde nächsten Abschnitt
find :: Char -> [Char] -> [[Char]]
find _ [] = []
find y (x:xs)
    | y == x = find y xs
    | otherwise = pack (x:xs)

-- Lösung in einer Funktion
pack' :: [Char] -> [[Char]]
pack' [] = []
pack' (x:xs) = ys : pack' zs
    where 
        (ys, zs) = takeall x (x:xs)
        takeall _ [] = ([], [])
        takeall x (y:ys)
            | x == y = let (us, vs) = takeall x ys
                       in (y:us, vs)
            | otherwise = ([], (y:ys))

-- Aufgabe 01B
encode :: [Char] -> [(Int, Char)]
encode xs = measure (pack xs)
    where
        measure [] = []
        measure ((x:xs):ys) = (length (x:xs), x) : measure ys

-- Aufgabe 01C
decode :: [(Int, Char)] -> [Char]
decode [] = []
decode ((n, x):xs) = expand n x ++ decode xs
    where
        expand 0 _ = []
        expand n x = x : expand (n-1) x

-- Aufgabe 01D
rotate :: [Int] -> Int -> [Int]
rotate [] _ = []
rotate xxs @ (x:xs) n
    | n == 0 = xxs
    | n > 0 = rotate (xs ++ [x]) (n-1)
    | otherwise = rotate (last xxs: take (length xxs - 1) xxs) (n+1)


rotate' :: [Int] -> Int -> [Int]
rotate' [] _ = []
rotate' xxs @ (x:xs) n
    | n == 0 = xxs
    | n > 0 = rotate' (xs ++ [x]) (n-1)
    | otherwise = rotate' xxs (length xxs + n)


rotate'' :: [Int] -> Int -> [Int]
rotate'' xxs @ (x:xs) n
    | n `mod` length xxs == 0 = xxs
    | n > 0 = rotate'' (xs ++ [x]) (n `mod` length xxs - 1)
    | otherwise = rotate'' xxs (length xxs + n `mod` length xxs)
