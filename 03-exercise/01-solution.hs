-- Übung 03 - Programmierung TU Dresden
-- Tutor: Claas de Boer
-- Github: https://github.com/cdboer/programmierung-ss19


-- Aufgabe 01A
data Tree = Node Int Tree Tree | NIL

insert :: Tree -> [Int] -> Tree
insert t [] = t
insert NIL (x:xs) = insert (Node x NIL NIL) xs
insert (Node a t1 t2) (x:xs)
    | x < a = insert (Node a (insert t1 [x]) t2) xs
    | otherwise = insert (Node a t1 (insert t2 [x])) xs

-- Aufgabe 01B
treeEqual :: Tree -> Tree -> Bool
treeEqual NIL NIL = True
treeEqual NIL (Node x t1 t2) = False
treeEqual (Node x t1 t2) NIL = False
treeEqual (Node x t1 t2) (Node y ta tb) 
    = (x == y) && (treeEqual t1 ta) && (treeEqual t2 tb)
