# Nett-to-know Übung 1

## Haskell List Syntax
```haskell
-- Listenelemente müssen vom gleichen Typ sein. 
a = [1, 2, 3, 4]                -- das ist eine Liste
b = ['a', 'b', 'c', 'd']        -- das ist eine Liste
c = [True, False]               -- das ist eine Liste
d = [1, 'foo', True, 42]        -- keine wohlgeformte Liste!

-- -------------------
-- Operatoren 
-- -------------------

-- ++ Operator - Listen konkatenieren/verketten
a = [1, 2]
b = [3, 4]
c = a ++ b -- c = [1, 2, 3, 4]
-- HINWEIS: Der ++ Operator verlangt, dass alle beteiligten Variablen eine Liste sind.

-- Cons Operator - Schnelles prependen/appenden
a = [3, 3, 7]
b = 1
c = b : a         -- c = [1, 3, 3, 7]
d = a : b         -- d = [3, 3, 7, 1]
e = b : b : a : b -- e = [1, 1, 3, 3, 7, 1]
-- HINWEIS: Der Cons Operator nimmt eine Liste sowie eine/n Zahl/Character.

-- !! Operator - Listenzugriffe via Index
l = ['a', 'b', 'c']
first = l !! 0   -- first = 'a'
second = l !! 1  -- second = 'b'
third = l !! 2   -- third = 'c'
-- HINWEIS: Index beginnt bei 0
```

