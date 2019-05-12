# Übung 05 - Programmierung TU Dresden
**Tutor:** Claas de Boer  
**Github:** https://github.com/cdboer/programmierung-ss19  

## Aufgabe 02A
Wenden Sie den Unifikationsalgorithmus auf t1 und t2 an.  
Geben Sie den allgemeinsten Unifikator an.  

```
t1 = σ(γ(x2), σ(γ(α), x3))
t2 = σ(x1, σ(γ(α), σ(α, x1)))

M initialisieren.
=> {(σ(γ(x2), σ(γ(α), x3)))      }
   {(σ(x1   , σ(γ(α), σ(α, x1))))}

Dekomposition
=> {(γ(x2)), (σ(γ(α), x3))      }
   {(x1)   , (σ(γ(α), σ(α, x1)))}

Dekomposition
=> {(γ(x2)), (γ(α)), (x3)      }
   {(x1)   , (γ(α)), (σ(α, x1))}

Dekomposition
=> {(γ(x2)), (x3)      }
   {(x1)   , (σ(α, x1))}

Vertauschen
=> {(x1)   , (x3)      }
   {(γ(x2)), (σ(α, x1))}

Substitution
=> {(x1)   , (x3)         }
   {(γ(x2)), (σ(α, γ(x2)))}

Allgemeinster Unifikator:
φ: x1 → γ(x2), x2 → x2, x3 → σ(α, γ(x2))
```

## Aufgabe 02B
Geben Sie zwei weitere Unifikatoren an.
```
φ' : x1 → γ(α)   , x2 → α   , x3 → σ(α, γ(α))
φ'': x1 → γ(γ(α)), x2 → γ(α), x3 → σ(α, γ(γ(α)))
```
