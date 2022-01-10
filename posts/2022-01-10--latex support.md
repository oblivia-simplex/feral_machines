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

Let's see if this renders properly. $\frac{1}{52}$

$$\mathbb{B}^n \rightarrow \mathbb{B}^m$$

$$R_{\mu \nu} - {1 \over 2}R \, g_{\mu \nu} + \Lambda g_{\mu \nu}= {8 \pi G \over c^4} T_{\mu \nu}$$


## Example: The Axioms of ZFC

### Extensionality

$$\forall X\,\forall Y\,[\,X=Y\quad\Leftrightarrow\quad\forall z(z\in X\ \Leftrightarrow\ z\in Y)\,]$$

### Pairing
 $$\forall x\,\forall y\,\exists Z\,\forall z\,[\,z\in Z\quad\Leftrightarrow\quad z=x \vee z=y\,]$$
### Union

$$\forall X\,\exists Y\,\forall y\,[\,y\in Y\quad\Leftrightarrow\quad\exists Z(Z\in X \wedge y\in Z)\,]$$
### Empty Set

$$\exists X\,\forall y\,[\,y\notin X\,]$$


### Infinity

$$\exists X\,[\,\emptyset\in X \wedge \forall x(x\in X\Rightarrow x\cup\{ x\}\in X)\,]$$

### Power Set

$$\forall X\,\exists Y\,\forall Z\,[\,Z\in Y\quad\Leftrightarrow\quad
\forall z(z\in Z\ \Rightarrow\ z\in X)\,]$$

### Replacement

$$\forall x\in X\,\exists!y\,P(x,y)\quad\Rightarrow
\quad [\,\exists Y\,\forall y\,(y\in Y\ \Leftrightarrow\ \exists x\in X\,(P(x,y)))\,]$$

### Foundation

$$\forall X\,[\,X\ne\emptyset\quad\Rightarrow\quad\exists Y\in X\,(X\cap Y=\emptyset)\,]$$

### Choice

$$\forall X\, [\emptyset \notin X  \quad\Rightarrow\quad \exists f : X \rightarrow \bigcup X\quad [\,\forall A \in X\,\left(f(A) \in A\right)\,)\,]$$