---
title: 'Axioms of Set Theory'
published: 2026-06-08
draft: false
description: "Notes on Jech's Set Theory book"
tags: ['math', 'set theory', 'notes']
---

## The Russell's paradox

A old story says that in a kingdom the king order that every man must be shaved.
To help man that cannot shave themself, the king designed official barbers that
can offer free shaves with the only condition that an official barber cannot shave
a man with the capacity of shave himself.

Some days after the lay passed and one of the official barbers noted that he needed
a shaves, but a problem arose. Since he is capable of shave himself the normal
decision would be shave himself, but as a official barber he cannot shave a man
that can shave himself, so he cannot shave himself. He cannot go to another official
barber due the same reason. He is trapped in a old logical paradox that put math
upside down.

This paradox, belongs to a group of paradox known as the name of Russell paradox.
In logical terms, imagine that the man has the name of $B$, I know is not the most
creative name, but works; and $S$ is the set of people that $B$ can shave. Since
he needs a shave and he can shave himself then $B \in S$, but since he is a official
barber (and he can shave himself) then $B \notin S$.

This is the normal form of a Russell paradox, a set and a element that belongs and
not belongs to the set. The classic formulation is this

**Russell's Paradox.** Let $S$ the set of all sets that don't belong in himself,
i.e., $S = \{ x : x \notin x \}$, then

$$
S \in S \Eqand S \notin S.
$$

This paradox is easy to understand, if we assume that $S \notin S$ then by
definition $S \in S$, but also if we assume that $S \in S$ then $ S \notin S$ by
the same definition.

This clearly must be an error. How a set can contain and not contain a element.
The math cannot be broken... Right?

## The solution

So, how can we "repair" the paradox? Well the thing is that we usually think about
sets as a collection of things that has something in common. The numbers that
satisfies a condition. The letters in a word. The people that the barber can shave.
Etc. But this approach creates a lot of problems. Like the Russell's paradox.
Specifically we cannot use the next property.

**The (false) axiom schema of comprehension** If $P$ is a property, then there exists
a set $Y$ of all sets that satisfies $P$, i.e, the next set exists

$$
Y = \{x : P(x) \}
$$

For solve this, we need a more strict system to create and manage sets.
There exists many systems. But in this case we use the most popular. The
axioms of Zermelo-Fraenkel-Choice set theory, or for its acronym: ZFC.

## The language

Define a axiomatic set is not easy, its like a bakery recipe. We need specific things
with very specific purposes, and a proper language. This language is called first
order language, but for now we only need to understand that is just: a set of
atomic relations, logical connectives and quantifiers; and finally a set of axioms.

In ZFC we only have two atomic relations, the equal $=$ and belongs $\in$ relations.
Those are called atomic since are the most primitive part that a proposition can
be decomposed. They don't have an explanation, are things that we need to assume
that exists. The axioms tell how those relations work. Usually the equal relation
don't need explanation or extra axioms, work as we normally assume that work. But
if we are too formal, we need to consider the next two extra axioms:

- **Law of identity.** For every $x$ satisfies that $x = x$. Or in symbolic form

  $$
  \forall x (x = x)
  $$

- **Substitution property.** For every $x$ and $y$ and property $\phi$ if
  $\phi(x)$ then $\phi(y)$. Or in symbolic form
  $$
  \forall x \forall y \bigl((x = y) \land \phi(x) \rightarrow \phi(y)\bigr)
  $$

But some authors just assume that those are properties of every first order language.
I don't care, but its good know that those "axioms" exists.

The connectives are just the classical logical connectors, whose value is given
by its respective truth table: $\land$, $\lor$, $\neg$,
$\lthen$, $\liff$, etc.

We say that a _logical formula_ or _property_ its just a concatenation of atomic
relations and logical connectors. We usually denote them with the greek letters:
$\phi$, $\varphi$, $\psi$, etc.

We can also give "variables" like functions, parts of a formula that can be replaced
by other objects (in our case are sets). Some authors just separate the
variables in two types, free and non free, i.e., if can be replaced or are
constant. I just think is a waste of mental space.

For example, some authors says that $\phi(x_1, x_2, u)$ is a formula where
$x_1$ and $x_2$ are free variables and $u$ is non free. But me just think as a
formula with two variables like $\varphi(x_1, x_2) = \phi(x_1, x_2, u)$.
I just count the variables that are free and think the rest as a
part of the formula itself. Its weird, all first order logical is weird.

I just think in this golden rule: "If can be understood then its valid, no matter
how weird the notation or convention is". We can let those things to logicals.

For example, in set theory we use a concept called _Classes_. Those are a syntax
sugar for logical formulas. For example, if $\phi$ is a formula with a free variable
(we usually omit the quantity of free variables, but technically its necessary)
then we define a class like a collection defined by

$$
  C = \{ x : \phi(x)\}
$$

This is NOT a set. Its just another way of say that a object satisfies a condition.
So its just syntax sugar for

$$
  x \in C \iff \phi(x)
$$

This way we can think the formulas in term similar to sets. We can use unions,
intersections, etc. For example if $C$ and $D$ are classed defined by $\phi$ and
$\psi$, then we say that $C = D$ if and only if

$$
  \forall x \bigl(\phi(x) \liff \psi(x)\bigr).
$$

Its similar to other operations, so we can omit the definition.

For now it's enough. In a next post we will check the final part of this recipe.
The theorems.
