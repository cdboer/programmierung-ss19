-- Übung 02 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19

-- "Verstecke" Prelude Implementierung von words, unwords
import Prelude hiding (words, unwords)

-- Aufgabe 02A
unwords :: [String] -> String
unwords [] = ""
unwords [x] = x
unwords (x:xs) = x ++ ' ' : unwords xs

-- Aufgabe 02B
words :: String -> [String]
words s = secede "" s
    where 
        secede ys "" = [ys]
        secede ys (x:xs)
            | x /= ' ' = secede (ys ++ [x]) xs
            | ys == "" = secede "" xs
            | otherwise = ys : secede "" xs

words' :: String -> [String]
words' [] = []
words' (' ':cs) = words' cs
words' cs = let (w, cs') = takeWord cs in w : words' cs'
    where
        takeWord [] = ([], [])
        takeWord (' ':cs) = ([], cs)
        takeWord (c:cs) = let (w, cs') = takeWord cs in (c:w, cs')
