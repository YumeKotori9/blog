---
title: 'No set contain his own power set'
published: 2026-06-20
draft: true
description: 'A proof on the propertie that no power set is a subset of his own set'
tags: ['math', 'set theory', 'notes']
---

## Proposition

There is no set $X$ such that $\cP(X) \subset X$.

## Proof

By contradiction, suppose that $\cP(X) \subset X$. This means that if $U
\subset X$ then $U \in X$. So let's consider the next set:

$$
  R = \{ x \in X : x \notin x\}.
$$

This set, is sometimes called the _Russell's set_ over $X$. It's pretty common
in some proofs.

Since $R \subset X$ then $R \in X$. This way, if $R \in R$ then by definition of
$R$ we have that $R \notin R$. But if $R \notin R$ then, again by definition of
$R$ we have that $R \in R$. So we have contradiction!

Thus, by contradiction $\cP(X) \subset X$ is false.
