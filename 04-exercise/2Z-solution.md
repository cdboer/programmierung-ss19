# Übung 04 - Programmierung TU Dresden
**Tutor:** Claas de Boer  
**Github:** [Repository](https://github.com/cdboer/programmierung-ss19)   

## Zusatzaufgabe 02
Ermitteln Sie den allgemeinsten Unifikator der folgenden Terme.  

```
t1 = σ(α, σ(γ(α), σ(x2, x3)))
t2 = σ(α, σ(x1, σ(x2, σ(x2, x1))))

Dekomposition
=> {(α), (σ(γ(α), σ(x2, x3)))     }
   {(α), (σ(x1, σ(x2, σ(x2, x1))))}

Dekomposition
=> {(γ(α)), (σ(x2, x3))       }
   {(x1)  , (σ(x2, σ(x2, x1)))}

Dekomposition
=> {(γ(α)), (x2), (x3)       }
   {(x1)  , (x2), (σ(x2, x1))}

Vertauschen
=> {(x1)  , (x2), (x3)       }
   {(γ(α)), (x2), (σ(x2, x1))}

Elimination
=> {(x1)  , (x3)       }
   {(γ(α)), (σ(x2, x1))}

Substitution
=> {(x1)  , (x3)         }
   {(γ(α)), (σ(x2, γ(α)))}

Allgemeinster Unifikator:
φ: x1 → γ(α), x2 → x2, x3 → σ(x2, γ(α))
```













