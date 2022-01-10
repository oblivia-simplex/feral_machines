---
title: Support for LaTeX-style math expressions
author: me
date: 2022-01-10
tags:
- plog
- typography
- draft
abstract: "Let's see if this works."
---

$\LaTeX$-style math expressions are now supported by P'log, thanks to [MathJax](https://www.mathjax.org/). This feature depends on javascript, and is the first feature of the P'log platform to do so. P'log sites can still be viewed perfectly well with javascript disabled, however. You'll just see unrendered $\LaTeX$ expressions where a javascript-enabled browser displays rendered expressions.

Display-style math expressions should be enclosed in double-dollar-sign delimiters. Inline expressions should be enclosed between single-dollar-sign delimiters. If you want to make other uses of `$` in your posts, escape them like `\$` just to be safe. (MathJax seems to be clever enough to avoid interpreting something like, "oh boy, I just found a $20 bill in my jacket pocket!" as a math expression. But if another dollar sign were to appear in the same paragraph, there'd be trouble.) 


Here are a few examples, arbitrarily chosen and without any context.

# $\LaTeX$ Examples

## Dirichlet Energy on a Graph

```
$$\frac{\sum_{v,v' \in V(\mathbb{G})}\left\{( d(v) - d(v'))^2\, :\, v' \text{ is a neighbour of } v \text{ in }\mathbb{G}\right\}}{| V(\mathbb{G}) |}$$
```

$$\frac{\sum_{v,v' \in V(\mathbb{G})}\left\{( d(v) - d(v'))^2\, :\, v' \text{ is a neighbour of } v \text{ in } \mathbb{G}\right\}}{| V(\mathbb{G}) |}$$

## Axioms of Zermelo-Fraenkel Set Theory

```
1. **Extensionality**:  $\forall X\,\forall Y\,[\,X=Y\Leftrightarrow\forall z(z\in X\ \Leftrightarrow\ z\in Y)\,]$
2. **Pairing**: $\forall x\,\forall y\,\exists Z\,\forall z\,[\,z\in Z\Leftrightarrow z=x \vee z=y\,]$
3. **Union**: $\forall X\,\exists Y\,\forall y\,[\,y\in Y\Leftrightarrow\exists Z(Z\in X \wedge y\in Z)\,]$
4. **Empty Set**: $\exists X\,\forall y\,[\,y\notin X\,]$
5. **Infinity**: $\exists X\,[\,\emptyset\in X \wedge \forall x(x\in X\Rightarrow x\cup\{ x\}\in X)\,]$
6. **Power Set**:  $\forall X\,\exists Y\,\forall Z\,[\,Z\in Y\Leftrightarrow
\forall z(z\in Z \Rightarrow z\in X)\,]$
7. **Replacement**: $\forall x\in X\,\exists!y\,P(x,y)\Rightarrow
 [\,\exists Y\,\forall y\,(y\in Y \Leftrightarrow \exists x\in X\,(P(x,y)))\,]$
8. **Foundation**: $\forall X\,[\,X\ne\emptyset\Rightarrow\exists Y\in X\,(X\cap Y=\emptyset)\,]$
9. **Choice**: $\forall X\, [\emptyset \notin X  \Rightarrow \exists f : X \rightarrow \bigcup X [\,\forall A \in X\,\left(f(A) \in A\right)\,)\,]$
```

1. **Extensionality**:  $\forall X\,\forall Y\,[\,X=Y\Leftrightarrow\forall z(z\in X\ \Leftrightarrow\ z\in Y)\,]$
2. **Pairing**: $\forall x\,\forall y\,\exists Z\,\forall z\,[\,z\in Z\Leftrightarrow z=x \vee z=y\,]$
3. **Union**: $\forall X\,\exists Y\,\forall y\,[\,y\in Y\Leftrightarrow\exists Z(Z\in X \wedge y\in Z)\,]$
4. **Empty Set**: $\exists X\,\forall y\,[\,y\notin X\,]$
5. **Infinity**: $\exists X\,[\,\emptyset\in X \wedge \forall x(x\in X\Rightarrow x\cup\{ x\}\in X)\,]$
6. **Power Set**:  $\forall X\,\exists Y\,\forall Z\,[\,Z\in Y\Leftrightarrow
\forall z(z\in Z \Rightarrow z\in X)\,]$
7. **Replacement**: $\forall x\in X\,\exists!y\,P(x,y)\Rightarrow
 [\,\exists Y\,\forall y\,(y\in Y \Leftrightarrow \exists x\in X\,(P(x,y)))\,]$
8. **Foundation**: $\forall X\,[\,X\ne\emptyset\Rightarrow\exists Y\in X\,(X\cap Y=\emptyset)\,]$
9. **Choice**: $\forall X\, [\emptyset \notin X  \Rightarrow \exists f : X \rightarrow \bigcup X [\,\forall A \in X\,\left(f(A) \in A\right)\,)\,]$

