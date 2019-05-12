# Übung 05 - Programmierung TU Dresden
**Tutor:** Claas de Boer  
**Github:** [Link](https://github.com/cdboer/programmierung-ss19)

## Aufgabe 1Z
Wenden Sie den Unifikationsalgorithmus auf die Terme t1 und
t2 an und ermitteln Sie deren allgemeinsten Unifikator. 
Wenden Sie bei jedem Umformungsschritt nur eine Regelsorte an und geben Sie diese jeweils an.

```
Rangalphabet Σ = {δ, σ, γ, α)

t1 = δ(σ(γ(x3), x2)     , γ(γ(α)), γ(x1))
t2 = δ(σ(γ(α), γ(γ(x3))), γ(x1)  , γ(x1)) 

M initalisieren.

=> {(δ(σ(γ(x3), x2)     , γ(γ(α)), γ(x1)))}
   {(δ(σ(γ(α), γ(γ(x3))), γ(x1)  , γ(x1)))}

Dekomposition
=> {(σ(γ(x3), x2))     , (γ(γ(α))), (γ(x1))}
   {(σ(γ(α), γ(γ(x3)))), (γ(x1))  , (γ(x1))}

Dekomposition
=> {(γ(x3)), (x2)      , (γ(α)), (x1)}
   {(γ(α)) , (γ(γ(x3))), (x1)  , (x1)}

Dekomposition
=> {(x3), (x2)      , (γ(α)), (x1)}
   {(α) , (γ(γ(x3))), (x1)  , (x1)}

Elimination
=> {(x3), (x2)      , (γ(α))}
   {(α) , (γ(γ(x3))), (x1)  }

Vertauschen
=> {(x3), (x2)      , (x1)  }
   {(α) , (γ(γ(x3))), (γ(α))}

Substiton
=> {(x3), (x2)      , (x1) }
   {(α) , (γ(γ(α))), (γ(α))}

Allgemeinster Unifikator
φ: x1 → γ(α), x2 → γ(γ(α)), x3 → α
```
