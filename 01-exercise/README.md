# Nett-To-Know | Übung 1

## Haskell Listen
In Haskell sind Listen homogene Daten Strukturen.  
Das bedeutet, dass eine Liste nur Elemente vom gleichen Datentyp enthalten darf.  
```haskell
a = [1, 2, 3, 4]                -- das ist eine Liste
b = ['a', 'b', 'c', 'd']        -- das ist eine Liste
c = [True, False]               -- das ist eine Liste
d = [1, 'foo', True, 42]        -- keine wohlgeformte Liste!
```
Listen konkatenieren/verketten.  
Dazu wird der ++ Operator verwendet.  
```haskell
a = [1]
b = [2, 3]
c = a ++ b -- c = [1, 2, 3]
-- HINWEIS: Der ++ Operator verlangt, dass alle beteiligten Variablen vom Typ Liste sind.
```
Einzelne Elemente an Listen prependen.  
Dazu wird der Cons Operator (:) genutzt.  
```haskell
a = [2]           -- Liste mit Listenelementen vom Typ Integer
b = 4             -- Zahl vom Typ Integer
c = b : a         -- c = [4, 2]
d = b : b : a     -- d = [4, 4, 2, 4]
-- HINWEIS: Der Cons Operator nimmt eine Liste sowie ein Listenelement.
```
