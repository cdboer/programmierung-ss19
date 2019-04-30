-- Übung 04 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19


-- Aufgabe 02A
unzip :: [(a, b)] -> ([a], [b])

-- Aufgabe 02B
map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

uncurry :: (a -> b -> c) -> (a, b) -> c
uncurry f (x, y) = f x y

-- Werten sie den folgenden Term schrittweise aus.
-- Verwenden sie dabei sinnvolle Abkürzungen.
map (uncurry (+)) [(1, 2), (3, 4)] = ...
