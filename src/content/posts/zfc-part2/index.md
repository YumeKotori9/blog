---
title: 'The Zermelo–Fraenkel-Choice Set Theory Theory - Part 2'
published: 2026-06-17
draft: false
description: 'Description and formulation of ZFC set theory axioms'
tags: ['set theory', 'math', 'notes']
---

## Separation Scheme

**Axiom.** Let $\phi(u)$ be a formula. For any $X$ there exists the set $Y =
\{u\in X : \phi(u)\}$:

$$
  \forall X \, \exists Y  \, \forall u \bigl(u \in Y \liff u \in X \land \phi(u)\bigr).
$$

This is one of my favorites axioms. Remember how the (false) axiom of
comprehension resulted in Russell's Paradox, but, the capacity of create sets
using a formula is very necessary. This axiom give a more "light" axiom that
satisfies both requirements. Also, this axiom is in reality a infinite amount of
axioms, since for every formula $\phi$ we have a new axiom, and the uniqueness
is assured by extensionality.

Similarly to the last axiom, this is not the most "light" version, and the way I
write here is not the most formal one. This axiom has other two formulations:

- $\forall X \, \forall p  \, \exists Y  \, \forall U \bigr(u \in Y \liff
  u \in X \land \phi(u, p) \bigr)$.
- $\forall X \, \forall p_1 \ldots \forall p_n \exists Y \, \forall u
  \bigl( u \in Y \liff u \in X \land \psi(u, p_1, \ldots, p_n) \bigr)$.

Include with those, the formulations where the $\liff$ is replaced by the
$\lthen$. I told in the previous axiom, that this is due lazyness, but in my
case is for readability. If we go deeper with first order logic, the correct
version are the third one, since if we need to use parameters $p_1, \ldots p_n$,
then we need to put those explicit in the formula. The second version is equivalent
to the third version due the $n$-tuples, since we can only use the next formula

$$
  \phi(u, p) = \exists p_1 \ldots \exists p_n \bigl( p = (p_1, \ldots, p_n)
  \land \psi(u, p_1, \ldots, p_n) \bigr).
$$

Since I only care in the free variables, I don't think in parameters as a
interesting part of the axiom, this way for simplicity I will use a formulation
that don't have those parameters. So, why I'm telling you all of this. First, to
warn you that the version that I will manage is not a strictly formal one, It's
more a version that didactically work for me. I only care in set theory as a
math field, not as a first order language example. And second, to show you the
more formal version in a case that a doubt arise.

There is a another version that use classes. This is also didactically
interesting so I will show you as a proposition.

**Proposition.** If $C = \{ u : \phi(u)\}$ is a class and $X$ is a set then $Y =
C \cap X$ is a set:

$$
  \forall X \, \exists Y (Y = C \cap X).
$$

This form is more common in axiomatic systems of set theory were classes is a
proper object and not only sugar syntax.

This axiom has many consequences. Frist, show that there not exists a universal
set, i.e., there is not a set that contain every set.

**Proposition.** Let $V \coloneqq \{x : x = x\}$, then $V$ is a proper class.

Also the axiom allow us to define many objects, like the intersection and
difference of sets.

**Definition.** Let $X, Y$ be sets and $C$ be a nonempty class of sets then we define:

- $ \emptyset \coloneqq \{x : x \neq x\} $.
- $ X \cap Y \coloneqq \{u \in X : u \in Y\} $
- $X - Y \coloneqq \{u \in : u \notin Y \}$
- $\bigcap C \coloneqq \{u \in X : \forall X \in C (u \in X) \}$

Now, there is a problem with this axiom. This axiom can only be useful if exists
at least one set. We can't even assure that exists the emtpy set! And well, with
the axioms that we have currently, this is not true. Latter will present an
axiom that tell that exists at least one set, so for not lets forget that
detail.

## Union

**Axiom.** For any $X$ there exist a set $Y = \bigcup X$:

$$
  \forall X \, \exists Y \, \forall u \bigl(u \in Y \liff
  \exists z (z \in X \land u \in z) \bigr).
$$

This is a simple axiom. The only interesting part is that we not only have the
finite union, we have a infinite amount of union. For the finite union we relied
in pairing, so we can define define:

$$
  \begin{align*}
    X \cup Y &\coloneqq \bigcup \{ X, Y \}, \\
    X \cup Y \cup Z &\coloneqq (X \cup Y) \cup Z = \bigcup \{X, Y, Z\} , \\
    X_1 \cup \cdots \cup X_{n+1} &\coloneqq (X_1 \cup \cdots \cup X_n) \cup
X_{n+1} = \bigcup \{X_1, \ldots, X_{n+1}\}.
  \end{align*}
$$

Also there is another operation that is useful, the _symmetric difference_:

$$
  X \symdiff Y = (X - Y) \cup (Y - X).
$$

To finalize this post and using the presented axioms as excuse I want to present
syntax that is commonly used.

In math we usually want to define a proposition using a specifically set as a
kind of "mini universe" where everything is contained. I mean, the separation
scheme is literally this idea. This way we usually have the next modifiers to
formulas:

$$
\begin{align*}
  \forall z \in X \bigl(\phi(z)\bigr) = \forall[z \in X] \, \phi(z)
    &\coloneqq \exists z \bigl(z \in X \lthen \phi(z)\bigr), \\
  \exists z \in X \bigl(\phi(z)\bigr)= \exists[z \in X] \, \phi(z)
  &\coloneqq \exists z \bigl(z \in X \land \phi(z)\bigr).
\end{align*}
$$

I usually prefer the first form. It's easier to read. But in the rare case that
we can confuse the terms, we can rely on the second one.

The book authors usually only define those, but I like to think that those are
just only a specific case of a more general modifier:

$$
\begin{align*}
  \forall z : \psi(z) \bigl(\phi(z)\bigr) = \forall[z : \psi(z)] \, \phi(z)
    &\coloneqq \exists z \bigl(\psi(z) \lthen \phi(z)\bigr), \\
  \exists z : \psi(z) \bigl(\phi(z)\bigr)= \exists[z : \psi(z)] \, \phi(z)
  &\coloneqq \exists z \bigl(\psi(z) \land \phi(z)\bigr).
\end{align*}
$$

Those are not standard notation, just a notation that I like, and find useful.
So keep in mind.

The only thing that we need to explain is how this applies to the unique
modifier of existence. Well the answer is that first is applied the modifier of
inclusion (or my general modifier) and then apply the unique modifier. Thus, we
have that:

$$
\begin{align*}
  \exist! z \in X \bigl( \phi(x) \bigr) &= \exists z \bigl(
  z \in X \land \phi(z) \land \forall y (y \in X \land \phi(y) \lthen y = z)
  \bigr), \\
  \exist! z : \psi(z) \bigl( \phi(x) \bigr) &= \exists z \bigl(
  \psi(z) \land \phi(z) \land \forall y ( \psi(y) \land \phi(y) \lthen y = z)\bigr).
\end{align*}
$$

As you can see, those modifiers shrink propositions a lot and believe or not are
useful. For example, the union axioms (or at least an equivalent version) can be
rewritten as follows:

$$
\forall X \, \exists Y \, \forall u \in Y \, \exists z \in X
  (u \in z).
$$

Those are pretty, aren't they? That is why I love math, with a few symbols we
can tell a lot. Of course are obscure, like abstract art. But with enough
effort we can see the meaning of what are inside those symbols.

That's all for now. In the next post we gonna see even more axioms of ZFC.
