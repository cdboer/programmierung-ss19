# Übung 05 - Programmierung TU Dresden
**Tutor:** Claas de Boer  
**Github:** https://github.com/cdboer/programmierung-ss19  

## Aufgabe 01A
Wenden Sie den Unifikationsalgorithmus auf t1 und t2 an.  
Verwenden Sie bei jedem Umformungsschritt nur eine Regelsorte an und geben Sie diese jeweils an.  
Geben Sie anschließend den von Ihnen bestimmten allgemeinsten Unifikator an.  

```
t1 = δ(α, σ(x1, α), σ(x2, x3))
t2 = δ(α, σ(x1, x2), σ(x2, γ(x2)))

M initialisieren
=> {(δ(α, σ(x1, α) , σ(x2, x3)))   }
   {(δ(α, σ(x1, x2), σ(x2, γ(x2))))}

Dekomposition
=> {(α), (σ(x1, α)) , (σ(x2, x3))   }
   {(α), (σ(x1, x2)), (σ(x2, γ(x2)))}

Dekomposition
=> {(x1), (α) , (x2), (x3)   }
   {(x1), (x2), (x2), (γ(x2))}

Elimination
=> {(α) , (x3)   }
   {(x2), (γ(x2))}

Vertauschung
=> {(x2), (x3)   }
   {(α) , (γ(x2))}

Substitution
=> {(x2), (x3)}
   {(α), (γ(α)}

Allgemeinster Unifikator:
φ: x1 → x1, x2 → α, x3 → γ(α)
```

## Aufgabe 01B
Gegeben seien die Haskell-Typterme t1, t2 und t3.  
Welche Paare dieser Terme sind unifizierbar?  
Geben Sie ggf. einen allgemeinsten Unifikator an!

```
t1 = (a, [a])
t2 = (Int, [Double])
t3 = (b, c)

t1 und t2: nicht unifizierbar

t1 und t3: unifizierbar
φ: a → a, b → a, c → [a]

t1 und t3: unifizierbar
φ: b → Int, c → [Double]
```
