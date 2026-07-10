---
title: 'The Zermelo–Fraenkel-Choice Set Theory Theory - Part 4'
published: 2026-06-19
draft: false
description: 'Description and formulation of ZFC set theory axioms'
tags: ['set theory', 'math', 'notes']
---

## Infinity

**Axiom.** There exists an infinite set:

$$
\exists S \bigl(\emptyset \in S \land \forall x (x \in S
  \lthen x \cup \{x\} \in S)\bigr).
$$

The formulation of this axiom is curious. How the properties given in the
symbolic formulation shows that $S$ is infinite? To talk about this we need to
give a formal definition about what is exactly a infinite set.

A second thing that is curious, is that the empty set is part of the axiom, but,
as we say in previous post, the empty set requires at least a set to exists. So
the first known set requires the empty set, but empty set set requires first
another set to exists. This sounds cyclic.

Well, there exists four ways to fix this. First one, create a new axiom that
says that exists at least one set:

$$
\exists x (x = x).
$$

Many authors use this as an axiom, the first one in many cases. I mean, sounds
obvious enough to be an axiom. But sounds redundant, if we say that exists an
infinite set, why need a previous set that says that exists at least one set.
The simple existence should be derived from the existence of the infinite set.

The second way to think this is that, since it's an axiom the part $\emptyset in
S$ should be true, so automatically make that the $\emptyset$ exists. Simple and
elegant. But a little bit cheat if I'm honest.

The third way is my favorite. Why the empty set should be there, why not another
set, if we only care that exists a set that has infinite sets, not necessary
needs to be the first set the empty set. In symbolic way this can be written as:

$$
  \exists S \bigl( \exists u (u \in S) \land \forall x \in S (x \cup \{x\}
  \in S) \bigr).
$$

This approach is very elegant, but has a tiny flawless. We need more work to
define natural numbers. We need to rely in the next axiom, and some
mathematicians don't like that some properties depend of others. This was the
reason why the axioms that I give in previous post are not the most "smaller"
possible. The important part, is that the formulation has two existence, so we
can think that we are only combining the existence axiom with the infinity
axiom.

So, to be really formal, and to make the axiom the most useful and independent
possible, we need to combine all those ideas in the next formulation of the
infinity axiom:

$$
  \exists S \bigl( \exists u (u \in S \land \forall x(x \notin u)) \land
  \forall x \in S (x \cup \{x\} \in S) \bigr).
$$

This is the formal version of the infinity axiom given at the beginning of the
section. Literally says two things: the empty set exists and its part of the
infinite set, for every set that is inside $S$ then $x \cup \{x\}$ is also in
$S$. So, in reality we are just inserting the axiom of existence inside the
axiom of infinity.

Some people can think that if we can combine axioms, why not combine every ZFC
in only one axiom? Technically is possible, but the axiom would be extremely long.
The second problem is that this approach, would make less obvious what
properties are necessary to define certain propositions or definitions. I'm not
a formal logistician, but I think that is better have various independent axioms
that give incremental structure, than just few axioms that can build the same
but using various at same time. It's like the saying goes: don't put all your
eggs in one nest.

To continue with the infinity axiom. The property that has the set given by the
infinite axiom is special. Specifically, we say that $S$ is a _inductive set_ if
satisfies that $\emptyset \in S$ and for all $x\in S$ the set $x \cup \{x\} \in
S$.

So technically the infinity axiom can be rewritten as: there exists an
inductive set. Not necessary there exists a unique inductive set, in next post,
we're gonna show that there exists a lot of different inductive sets.

The only final part is to answer, why the inductive property makes a set
infinite. Well, when a mathematician says that something is _inductive_, they is
referring to a certain kind of argument. The idea is like the fall of a domino
chain, we have a first step, in this case $\emptyset \in S$, and a condition
that says that every step makes the next valid, and in this case is the $\forall
x \in S (x \cup \{x\} \in S)$. This can be seen as follows:

$$
  \emptyset \in S \implies \emptyset \cup \{\emptyset \} = \{\emptyset \}\in S \implies
  \{\emptyset \} \cup \{\{\emptyset \}\} \in S \implies \cdots
$$

This is a infinite chain of inclusion of different sets. That is why $S$ is infinite.

## Replacement Schema

If $\phi(x,y)$ is a formula such that $F = \{(x,y) : \phi(x,y)\}$ is a class
function then for every set $X$, the class $F(X)$ is a set:

$$
  \forall x \, \forall y \, \forall z (\phi(x,y) \land \phi(x,z) \lthen y = z)
  \lthen \forall X \, \exists Y \, \forall y \bigl(y \in Y \liff
  \exists x (x \in X \land \phi(x,y)\bigr)
$$

This axiom feels like the separation scheme, both have various similarities. For
example both are schemes, for every formula $\phi$ we have a different axiom, so
it's in reality a infinite amount of axioms. Second, since we have a formula inside
the axiom, technically we need to include a parameters to the formula, so the
full formula axiom would be any of those:

$$
\begin{align*}
  \forall x \, \forall p \, \forall y \, \forall z (\phi(x,y,p) \land
  \phi(x,y,p) \lthen y = z)
    &\lthen \forall X \, \forall p \,\exists Y \,\forall y \bigl(y \in Y \liff
    \exists x (x \in X \land \phi(x,y,p)\bigr)\\
  \forall x \, \forall p_1 \cdots \forall p_n \, \forall y \, \forall z
  (\psi(x,y,p_1, \ldots, p_n) \land \psi(x,y,p_1, \ldots, p_n) \lthen y = z)
    &\lthen \forall X \, \forall p_1 \cdots \forall p_n \,\exists Y \,\forall y
    \bigl(y \in Y \liff \exists x (x \in X \land \psi(x,y,p_1, \ldots, p_n)\bigr)\\
\end{align*}
$$

Are too big that are hard to read. So as I say before, don't worry too much
about those fine details. If can be understood, then is enough. Thus, maybe
those versions are more easy to follow:

- If $F$ is a class function and $\dom(F)$ is a set, then $\ran(F)$ is a set.
- If $F$ is a class function, then $\forall X \exists f (F \restriction X = f)$.

This axiom is very useful, and indeed is more "bigger" than separation scheme.
In next posts we are gonna check some properties that we're missing to not make
those post too long.

There missing two axioms of ZFC, regularity and choice. But we are gonna state
them latter. For now those axioms are more than enough to develop serious math.
