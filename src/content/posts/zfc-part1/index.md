---
title: 'The Zermelo–Fraenkel-Choice Set Theory Theory - Part 1'
published: 2026-06-15
draft: false
description: 'Description and formulation of ZFC set theory axioms'
tags: ['set theory', 'math', 'notes']
---

## Extensionality

**Axiom.** If $X$ and $Y$ have the same elements, then $X = Y$:

$$
  \forall X \, \forall Y \bigl( \forall u(u \in X \liff u \in Y) \lthen X = Y \bigr).
$$

This axiom is easy, says that sets are only defined by its elements, in other
words, that the $\in$ relation dictates when two sets are equal.

The converse is true due equality properties, if $X = Y$ then both have the same
elements. So we can think in a "bigger" formulation of this axiom.

**Proposition.** $X = Y$ if and only if $\forall u (u \in X \liff u \in Y)$.

One can think, if the proposition above is "bigger", why not use it as a axiom
itself. Well, this is a curious thing about axiomatic systems, we tend to use
the most "smallest" axiom. If a property can be derived from others, then use
the most simple ones to build it. Technically is possible use the "big"
proposition as axiom, but its just unnecessary.

## Pairing

**Axiom.** For any $a$ and $b$ there exists a set $\{a, b\}$ that contains
exactly $a$ and $b$:

$$
  \forall a \, \forall b \, \exists c \, \forall x
  (x \in c \liff x = a \lor x = b).
$$

Remember when I said that in axioms systems we use the most "smallest" axiom. Well,
I lied, but for a good reason I promise.

Technically, we can rid of the "exactly" in the axiom above. Yeah, I know is
surprising! We can derive the "exactly" version of the axiom via the next axiom.
So, why I (and the Jech's Set Axiom book, the one I'm using as base for this
notes) don't use it? Well, at least for me is just laziness. I mean, if we use
the most "smallest" version of the axiom, I need to write the "bigger" form and
a proof for it. And no only for this axiom, the same happens with many of the
next axioms. So we can loose our axioms to make the notes easier. At the end we
use the "bigger" property more than the "smallest", so we not gain anything more
than moral superiority.

Also, there is a interesting part of the formulation of the axiom. The axiom
only says that exists, not that is unique. So, this means that can exists two
sets that satisfies the axiom? Well, no, due the axiom of Extensionality. Since
elements determine a set, there is only and exactly one set that only contain
$a$ and $b$. This way we can properly define the next:

$$
  \{ a, b \} \coloneqq \text{the unique $c$ such that}\ \forall x (x \in c \liff
x = a \lor x  = b).
\tag{1}
$$

In the last formula $\coloneqq$ is just the notation of definition.
Mathematicians usually use the $=$ symbol. But I like give a special symbol to
definition, since its not a equation relation, but instead a "shortcut". A way to
shrink a property and giving a name.

Taking advantage of the opportunity, I want to talk more about two logical
concepts that usually are taken as obvious. First, taking objects. Imagine this,
we have a existence proposition, for example $\exists x \, \phi(x)$, this allows
to "take" a object, since exists at least a object, mathematicians in his proofs
usually say something like: "Let $a$ be a element such that $\phi(a)$...", this
is a valid "operation", the existence allow us to use that declaration. In those
cases, I usually write the next symbology for that "operation":

$$
  a \in \{x : \phi(x)\} \Eqor a := x : \phi(x).
$$

The same can be told about the "unique existence", this kind of proposition is
too common that has his own symbology. Specifically we define:

$$
  \exists ! x \, \phi(x) \coloneqq \exists x \bigl( \phi(x) \land \forall y (\phi(y)
\lthen y = x)\bigr)
$$

The unique existence is "bigger" than the normal existence, so we can "take" and
object, but is more strict, the object that we take is unique, there is only one
object that we can take with that proposition. This way, I usually give a
special symbology for that "operation":

$$
  \{a\} = \{x : \phi (x)\} \Eqor a := \unique x : \phi(x).
$$

This way, the definition given in the equation $(1)$ can be rewrite as:

$$
\{a,b\} \coloneqq \unique c : \forall x (x \in c \liff x = a \lor x = b).
$$

Seems more pretty, right? I know that the abuse of symbology can cause that the
maths become unreadable, but I like that my formulas be pretty. I think math is
a form of art, so why not taking a bit of creative licences. Of course, I don't
think that this symbology is the best, if I see a best symbology, then I would
change in no time. Only I say that this is symbology that I like to see.

Returning to the pairing axiom. We can also define a _singleton_ as the set with
exactly one object, and we write as:

$$
  \{a\} \coloneqq \{a, a\}.
$$

Also the pairing axiom allow us to define _ordered pairs_ as the next set:

$$
  (a,b) \coloneqq \{ \{ a \}, \{ a,b\}\}.
$$

Using the ordered pair we can define the $n$-tuples recursively as follows:

$$
\begin{align*}
  (a,b,c) &\coloneqq \bigl((a,b),c\bigr) \\
  (a,b,c,d) &\coloneqq \bigl((a,b,c),d\bigr) \\
  (a_1,\ldots, a_{n+1}) &\coloneqq \bigl((a_1,\ldots,a_n), a_{n+1}\bigr)
\end{align*}
$$

For now is enough. In the next post we can continue with the next axioms of ZFC.
