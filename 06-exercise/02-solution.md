## Übung 06 - Programmierung TU Dresden
**Tutor:** Claas de Boer
**Github:** [Link](https://github.com/cdboer/programmierung-ss19)

## Aufgabe 02
#### Induktionsanfang (IA):  
Sei `t = Leaf a` und `i,a :: Int`.  

zu zeigen: `add (neg i t) = i * (sub t)`  

linke Seite: `add (neg i (Leaf a)) = add (Leaf (a * i)) = a * i`  

rechte Seite: `i * sub (Leaf a) = i * a = a * i`  

---
#### Induktionsschritt (IS):  
Seien `t1, t2 :: Tree`, sodass für beliebige `i :: Int` gilt:  
```haskell
add (neg i 1) = i * sub t1
add (neg i t2) = i * sub t2
```

Für alle `t = IntTree t1 t2` zeigen wir, dass folgendes gilt:
```haskell
add (neg i (IntTree t1 t2)) = i * sub (IntTree t1 t2)
```
```haskell
add (neg i (IntTree t1 t2)) = add (IntTree (neg i t1) (neg (-i) t2))
                            = add (neg i t1) + add (neg (-i) t2)
                            = i * sub t1 + add (neg (-i) t2)
                            = i * sub t1 + (-i) * sub t2
                            = i * (sub t1 - sub t2)
                            = i * sub (IntTree t1 t2)
```
