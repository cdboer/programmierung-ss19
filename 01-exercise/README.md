# Nett-To-Know 

## Haskell Listen
Haskell betrachtet Listen als homogenen Datentyp.  
Listen dürfen also nur Elemente vom gleichen Typ enthalten.  
ὁμός-homόs "gleich" und γένεσις-genesis "Erzeugung, Geburt", also etwa: "von gleicher Beschaffenheit".  
```haskell
a = [1, 2, 3, 4]                -- das ist eine Liste
b = ['a', 'b', 'c', 'd']        -- das ist eine Liste
c = [True, False]               -- das ist eine Liste
d = [[1, 2], [3, 4]]            -- das ist eine Liste
e = [1, 'foo', True, 42]        -- keine wohlgeformte Liste!
```
**++ - Operator**  
Listen konkatenieren/verketten.  
```haskell
a = [1]
b = [2, 3]
c = a ++ b -- c = [1, 2, 3]
-- HINWEIS: Der ++ Operator verlangt, dass alle beteiligten Variablen vom Typ Liste sind.
```
**Cons - Operator (:)**  
Einzelne Elemente an Listen prependen.  
```haskell
a = [2]           -- Liste mit Listenelementen vom Typ Integer
b = 4             -- Zahl vom Typ Integer
c = b : a         -- c = [4, 2]
d = b : b : a     -- d = [4, 4, 2, 4]
-- HINWEIS: Der Cons Operator nimmt eine Liste sowie ein Listenelement.
```
