---
title: 'The Zermelo–Fraenkel-Choice Set Theory Theory - Part 3'
published: 2026-06-18
draft: false
description: 'Description and formulation of ZFC set theory axioms'
tags: ['set theory', 'math', 'notes']
---

## Power Set

**Axiom.** For any $X$ there exists a set $\cP(X)$ that contains every subset of
$X$:

$$
  \forall X \, \exists Y \, \forall u \bigl( u \in Y \liff \forall z (z \in u
  \lthen z \in X) \bigr).
$$

Well, usually in books, the author present the definition of subset. But if I do
that, I'll broke the style of these notes. And I like consistency more than
rightness. To solve this, we present the symbolic form of the axiom with only
atomic relations.

So, what is exactly a subset? The idea is a set that share some of the elements
with another. Can have all of those, or only a few. Formally, we define:

$$
  U \subset X \coloneqq \forall z \in U( z \in X).
$$

In the definition is clear that $X \subset X$. This way we say that $U$ is a
_proper subset_ of $X$ if $U \subset X$ and $U \neq X$, and denote as $U
\subsetneq X$.

Now, the set $\cP(X) = \{ u : u \subset X\}$ is called the _power set_ of $X$.
This is very useful, for example, if $x \in X$ and $y \in Y$ then, by the
definition given in a previous post, we have that $(x,y) \in \cP\cP (X \cup Y)$.
This, along with separation, allow us to define the _Cartesian product_ of $X$
and $Y$ as follows:

$$
    X \times Y \coloneqq \{ (x,y) : x \in X \land y \in Y \}.
$$

Well, since the notation in the last equation is something new, is worth present
the formula that allow us to use that notation: if $\phi(x,y)$ is a formula,
then we define

$$
  \{ (x,y) : \phi(x,y) \} \coloneqq \{u : \exists x \, \exists y (u = (x,y)
\land \phi(x,y)\}
$$

Well, this not only applies to sets, also work for classes. There exists a more
general notation, but we will present latter.

Of course, we can also define the Cartesian product of any finite quantity of
sets as follows:

$$
\begin{align*}
  X \times Y \times Z &\coloneqq (X \times Y) \times Z \\
  &= \{(x,y,z) : x \in X, y \in Y, z \in Z\}, \\
  X_1 \times \cdots \times X_n &\coloneqq (X_1 \times \cdots \times X_n)
  \times X_{n+1} \\
  &= \{(x_1,\ldots,x_{n+1}) : x_i \in X_i\}, \\
  X^n &\coloneqq \underbrace{X \times\cdots\times X}_{n\text{-times}}.
\end{align*}
$$

### Relations

We define a _$n$-ary relation_ $R$ as any set of $n$-tuples, if $n=2$ we simply
say that $R$ is a _binary relation_. If $R \subset X^n$ then we say that is a
$n$-relation on $X$. With relations, binary and $n$-ary respectively, we usually
use the next notation:

$$
  \begin{align*}
  x \mathrel R y &\coloneqq (x,y) \in R, \\
  R(x_1, \ldots, x_n) &\coloneqq (x_1, \ldots, x_n) \in R.
  \end{align*}
$$

In the case of a binary relations $R$, we define the _domain_, _range_ and
_field_ of $R$ as follows:

$$
\begin{align*}
  \dom(R) &\coloneqq \{u : \exists v (u \mathrel R v)\}, \\
  \ran(R) &\coloneqq \{v : \exists u (u \mathrel R v)\}, \\
  \field(R) &\coloneqq \dom(R) \cup \ran(R).
\end{align*}
$$

As a side note, those are sets, since are contained in $\bigcup \bigcup R$, so
we can use separation to show that are sets.

We can also define class $n$-ary relations, as a class of $n$-tuples. In
general, any construction (like Cartesian product) can be extended using
classes. So I will omit those definitions. For example if I write $V^n$ we are
gonna accept that is just the class of every $n$-tuples.

### Functions

A binary relation $f$ is a function if for every $x \in \dom(f)$ there exists a
unique $y$ such that $x \mathrel f y$. This property, in a symbolic
form can be reduced as follows:

$$
  \forall x \, \forall y \, \forall z (x \mathrel f y \land x \mathrel f z \lthen
  y = z).
$$

Since functions are of special interest in math, we have various notations
specific to this kind of sets. For example to the unique $y$ such that
$x \mathrel f y$, we denote as follows:

$$
  f(x) = f_x \coloneqq \unique y : x \mathrel f y,
  \Eqor
  f \colon x \mapsto y.
$$

We say that $f$ is a function from $X$ to $Y$ if $\dom(f) = X$ and $\ran(f)
\subset Y$, and we usually write as $f \colon X \to Y$.

An $n$-ary function is just a function such that $\dom(f) \subset V^n$. In the
case that $\dom(f) \subset X^n$ then we say that $f$ is a $n$-ary function on $X$.

We denote the set of all functions from $X$ to $Y$ as $Y^X$. This is a set, due
power set and separation, since

$$
  Y^X \subset \cP(X \times Y).
$$

If $f \colon X \to Y$, we say that $f$ is _onto_ if $\ran(f) = Y$. Similarly, we
say that $f$ is _one-to-one_ if for every $y \in \ran(f)$ exists a unique
$x \in \dom(f)$ such that $y = f(x)$, in a symbolic way this can be reduced as follows:

$$
  \forall x \, \forall y \bigl( f(x) = f(y) \lthen x = y \bigr).
$$

In the previous equation, we see a common informal notation, if we write $f(x)$,
then we implicitly assume that $x \in \dom(f)$. Technically we need to explicitly
say that $x$ is inside the domain of $f$, but sometimes it's just easier let those
implicitly. Related to this kind of functions, we say that $f$ is _bijective_ if
is one-to-one and onto.

A _$n$-ary operation_ on $X$ is a function $f\colon X^n \to X$. If $n=2$ we say
that is a binary operation and give the special notation

$$
  x \mathbin f y \coloneqq f(x,y).
$$

Confusing with the relation notation, right? Well, math sometimes work this way.
Don't worry, we usually use different symbols for binary operations, so we just
know what notation is using context.

If $f \colon X \to Y$ and $U \subset X$, we define the _restriction_ of $f$ to
$U$ as the function $f \restriction U \colon U \to Y$ defined by:

$$
  f \restriction U \coloneqq \{(x,y) \in f : x \in U\}
$$

We say that a function $g$ is an _extension_ of $f$ if $f \subset g$. Or in
other words, if $\dom(f) \subset \dom(g)$ and $f(x) = g(x)$ for every $x \in
\dom(f)$.

If $f \colon X \to Y$ and $g \colon Y \to Z$ are functions, then we define the
composition of $g$ and $f$ as the function $g \circ f \colon X \to Z$ defined by:

$$
  (g \circ f)(x) = g \bigl(f(x)\bigr).
$$

If $f \colon X \to Y$ is a function, $U \subset X$ and $V \subset \ran(f)$, then
we define the _image_ of $U$ by $f$ and the _inverse image_ of $V$ by $f$,
respectively, as follows:

$$
  \begin{align*}
  f"U = f(U) &\coloneqq \{y : \exists x \in U (y = f(x))\} ,\\
  f_{-1}(V) &\coloneqq \{x : f(x) \in V\}.
\end{align*}
$$

If $f\coloneqq X \to Y$ is onto, then we can define the _inverse_ of $f$ as the
function $f^{-1} \colon \ran(f) \to X$ defined as follows:

$$
  f^{-1}(y) \coloneqq \unique x : y = f(x).
$$

Similarly to relations, all of those notations can be extended to classes. To differentiate
class functions to set functions, we usually use the terms _mapping_ or
_correlation_ for classes and _family_ or _collection_ for normal functions. But
we usually can know if a function is a proper class or a set by context, so
don't worry about those things.

### Equivalence relations

An _equivalence relation_ on a set $X$ is a binary relation $\sim$ that
satisfies the next properties:

- **Reflexive:** $\forall x \in X (x \sim x)$.
- **Symmetric:** $\forall x \, \forall y(x \sim y \lthen y \sim x)$.
- **Transitive:** $\forall x \, \forall y \, \forall z (x \sim y \land y \sim z
  \lthen x \sim z)$.

Equivalence relations work similarly as the equal relation, since allow us to
relate various sets that share similar properties. If $x \in X$ we define the
_equivalence class_ for $x$ as the set:

$$
  [x] = \{ y \in X : y \sim x\}.
$$

The set of all equivalence classes is called the _quotient_ of $X$ by $\sim$ and
it's denoted as follows:

$$
  X/{\sim} = \{[x] : x \in X\}.
$$

To finish this section. We need to define a term called _partition_. We can think
partitions as a way to cover a set, with patches that don't touch themselves.
More formally, we say that $P \subset \cP(X)$ is a partition of $X$ if satisfies
these two conditions:

- $\forall U,V \in P (U \cap V = \emptyset)$.
- $X = \bigcup P$.

As a side note, in the first property, we combine various for all quantifiers
into just one divided by commas, its a common modifier and I think is very clear
it's meaning so I won't talk much about those.

Partitions have a special relation with equivalence relations via the next
proposition.

**Proposition.** If $\sim$ is a equivalence relation on $X$, then $X/{\sim}$ is
a partition of $X$. Analogously, every partition $P$ of $X$ defines a
equivalence relation $\sim_P$, given by:

$$
  x \sim_P y \iff \exists U \in P (x,y \in U).
$$

The proof is simple. For the first part is clear that $X/{\sim}$ covers $X$, and
those sets are disjoint by the transitive property.

For the second part is easy see the reflexive and symmetric properties. For the
reflexive property we only need to use that sets in partition are disjoints.

This was a lot related with power set. With this, only remains three axioms of ZFC.
So maybe in the next post we're gonna finish to see the axioms.
