---
title: 'Natural numbers and inductive sets'
published: 2026-06-21
draft: true
description: 'Some properties about inductive sets, natural numbers and finiteness conditions'
tags: ['math', 'set theory', 'notes']
---

## Natural numbers

There are many ways to define natural numbers. In next posts, we are gonna
define using ordinal sets. Both are related, but for now we are gonna present
the easies considering infinity axiom.

Remember that $X$ is an inductive set if $\emptyset \in X$ and for all $x \in X$
we have that $x \cup \{x\} \in X$. By infinity axiom, there is at least one
inductive set, thus, using separation scheme, we can define the _natural numbers_
as follows:

$$
  \N = \bigcap \{X : X \ \text{is indcutive}\}.
$$

Technically, natural numbers is any set $N$ that satisfies the Peano axioms. Peano
axioms are the most common way to define natural numbers, for this we need a
special symbol $0 \in N$, a unary operation $S\colon N \to N$ called _successor_,
and that satisfies the following axioms:

- $S$ is one-to-one and $0 \notin \ran(S)$
- If $K \subset N$ is such that $0 \in K$ and for all $n \in K$ implies that
  $S(n) \in K$, then $K = N$.

In our case, we define the constant $0$ and unary operation $S$ as follows:

$$
  0 \coloneqq \emptyset \Eqand n+1 = S(n) \coloneqq n \cup \{n\}.
$$

This way, we can define the rest of natural numbers with his common notation:
$1 = 0+1$, $2 = 1+1$, $3 = 2+1$, etc. If we expand those sets, we can see that:

$$
  n = \{0, 1, \ldots, n-1\}
$$

Where $n-1$ is the number which $n = (n-1) +1$, latter are gonna explain more on
those notations. The important thing is that, this allows us to define the next
relation:

$$
  n < m \iff n \in m.
$$

### Transitivity of natural numbers

To show that $\N$ satisfies Peano axioms, we are gonna need various
propositions. But more importantly we need the definition of transitive sets.

**Definition.** A set $T$ is _transitive_ if for every $x \in T$ implies $x
\subset T$.
