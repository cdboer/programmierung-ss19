# Übung 05 - Programmierung TU Dresden
**Tutor:** Claas de Boer  
**Github:** [Link](https://github.com/cdboer/programmierung-ss19)
 
## Aufgabe 03
Zeigen Sie unter der Verwendung der folgenden Definitionen durch strukturelle Induktion die Gültigkeit der Gleichung für jedes `xs :: [Int]`:
```haskell
sum (foo xs) = 2 * sum xs - length xs
```
Induktionsanfang (IA):  
Sei `xs = []`.  
Zu zeigen: 
```haskell
sum (foo []) = 2 * sum [] - length []
```
```haskell
-- linke Seite
sum (foo []) = sum [] 
             = 0

-- rechte Seite
2 * sum [] - length [] = 2 * sum [] - 0
                       = 2 * 0 
                       = 0
```
Induktionsschritt (IS):  
Sei `xs :: [Int]`, sodass gilt: 
```haskell
sum (foo xs) = 2 * sum xs - length xs
```
Für alle `x :: Int` zeigen wir, dass
```haskell
sum (foo (x : xs)) = 2 * sum (x : xs) - length (x : xs)
```
gilt.

```haskell
sum (foo (x : xs)) = sum (x : x : (-1) : foo xs)           
                   = x + x + (-1) + sum (foo xs)
                   = x + x + (-1) + (2 * sum xs - length xs)
                   = 2 * (x + sum xs) - (1 + length xs)
                   = 2 * sum (x : xs) - (1 + length xs)
                   = 2 * sum (x : xs) - (length (x : xs))
```
