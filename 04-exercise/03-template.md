# Übung 04 - Programmierung TU Dresden
**Tutor:** Claas de Boer  
**Github:** [Repository](https://github.com/cdboer/programmierung-ss19)   

## Aufgabe 03A
Ermitteln Sie den allgemeinsten Unifikator der folgenden Terme.  

```
t1 = σ(σ(x1, α)   , σ(γ(x3), x3))
t2 = σ(σ(γ(x2), α), σ(x2, x3))

Gesucht ist eine Abbildung φ mit folgender Eigenschaft (Unifikator):
φ(t1) = φ(t2)

Anfang 
{(σ(σ(x1, α), σ(γ(x3), x3)))}
{(σ(σ(γ(x2), α), σ(x2, x3)))}

Dekomposition
=> {(σ(x1, α))   , (σ(γ(x3), x3))}
   {(σ(γ(x2), α)), (σ(x2, x3))   }

Dekomposition
=> {(x1)   ,(α), (γ(x3)), (x3)}
   {(γ(x2)),(α), (x2)   , (x3)}

Dekomposition
=> {(x1)   , (γ(x3)), (x3)}
   {(γ(x2)), (x2)   , (x3)}

Elimination
=> {(x1)   , (γ(x3))}
   {(γ(x2)), (x2)   }

Vertauschen
=> {(x1)   , (x2)   }
   {(γ(x2)), (γ(x3))}

Substitution
=> {(x1)     , (x2)   }
   {(γ(γ(x3)), (γ(x3))}

Allgemeinster Unifikator
φ: x1 → γ(γ(x3)), x2 → γ(x3), x3 → x3
```

## Aufgabe 03B
Geben sie 2 weitere Unifikatoren für die Terme t1, t2 an.  

```
φ' : x1 → γ(γ(α)), x2 → γ(α), x3 → α
φ'': x1 → γ(γ(γ(α))), x2 → γ(γ(α)), x3 → γ(α)
```

## Aufgabe 03C
