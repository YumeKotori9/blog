---
title: 'Ordered pairs'
published: 2026-06-16
draft: false
description: 'Proof of main property of the set definition of ordered paris'
tags: ['math', 'set theory', 'notes']
---

In a previews post we define a ordered pair like the set defined by

$$
(a,b) \coloneqq \{\{a\}, \{a,b\}\}.
$$

This is a nice and pretty definition. But this don't automatically makes this set
behave like a ordered set. Specifically, usually think a ordered pair like a
object with the next property:

$$
(a,b) = (c,d) \iff a=c \land b = d.
$$

So our, objective in this post is prove the previous property. The
$(\Leftarrow)$ part is obvious, due the properties of equality. So, we only care
the $(\Rightarrow)$ part.

So, suppose that $(a,b) = (c,d)$. Lets proceed by cases. First if $a = b$ then by
definition we have that

$$
  \{\{a\}\} = \{ \{c\}, \{c,d\} \}.
$$

But due extensionality and pairing, we can deduce that

$$
\{ a \} = \{ c \} = \{ c, d \}.
$$

Which ultimately give us that $a = b = c =d $.

Now in the case when $ a \neq b$, by extensionality and pairing we have that

$$
\{ a\} = \{c \} \Eqor \{a,b\} = \{ c \}.
$$

Now, the last case is impossible, since the opposite will give us that $a = b= c$,
this way $a = c$.

Analogously we have that $\{a,b\} = \{c,d\}$, but since $a = c$
and $a \neq b$ then by extensionality and pairing the only possibility is that
$b = d$. Which completes the proof.

This exercise is a good way to understand the extensionality and pairing axioms,
and how important are on this kind of proofs. After this small rest, the next
post we will talk on the next axiom of ZFC.
