## Übung 06 - Programmierung TU Dresden
**Tutor:** Claas de Boer
**Github:** [Link](https://github.com/cdboer/programmierung-ss19)

## Aufgabe 01
Gegeben:
```haskell
reverse [x] = [x]
reverse (xs ++ ys) = reverse ys ++ reverse xs
```
---
#### Induktionsanfang (IA):
Sei `x :: [Int]`.

zu zeigen: `reverse (yield (Leaf x)) = yield (mirror (Leaf x))`

linke Seite: `reverse (yield (Leaf x)) = reverse [x] = [x]`

rechte Seite: `yield (mirror (Leaf x)) = yield (Leaf x) = [x]`

---
#### Induktionsschritt (IS):
Sei `t1 :: Tree a` sowie `t2 :: Tree a`, sodass gilt:
```haskell
reverse (yield t1) = yield (mirror t1)
reverse (yield t2) = yield (mirror t2)
```

Für alle `x :: a` zeigen wir dass folgendes gilt:
```haskell
reverse (yield (Node x t1 t2)) = yield (mirror (Node x t1 t2))
```
```haskell
reverse (yield (Node x t1 t2)) = reverse (yield t1 ++ t2)
                               = reverse (yield t2) ++ reverse (yield t1)
                               = reverse (yield t2) ++ yield (mirror t1)
                               = yield (mirror t2) ++ yield (mirror t1)
                               = yield (node x (mirror t2) (mirror t1))
                               = yield (mirror (Node x t1 t2))
```
