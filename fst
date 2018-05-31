A {\em finite state machine} $T$ is a directed graph
with finite vertex set $Q$
whose edges are labeled by strings of the form ${a:b/w}$, where
$a,b,w$ are as described below.
Either $a$ belongs to a fixed {\em input alphabet} $\Sigma$,
or else $a=\epsilon$, the identity element of the free monoid $\Sigma^\ast$.
Similarly, $b$ belongs to a fixed {\em output alphabet} $\Gamma$,
or else $b=\epsilon$, the identity element of the free monoid $\Gamma^\ast$.
Finally, $w$ is an element of a fixed semiring
$\left(R,\oplus,\otimes\right)$.
The elements of $Q$ are called {\em states}.
Additionally, certain states are designated
as {\em initial} or {\em final} states.

The point of view used in ASR is that $T$ maps
elements of the free monoid $\Sigma^\ast$
to elements of the free monoid $\Gamma^\ast$, in the following sense.
Suppose $a_1a_2\cdots a_n\in\Sigma^\ast$ and
$b_1b_2\cdots b_n\in\Gamma^\ast$.
If there is a sequence of states $q_1,q_2,\cdots,q_m$
such that for each $1\le i\le n-1$ there is an edge $q_i\to q_{i+1}$
of $T$ labeled by ${a_i:b_i/w_i}$
(XXX: I haven't handled $\epsilon$ properly)
and such that $q_1$ is an initial state and $q_n$ is a final state,
then we say that $T$ maps $a_1a_2\cdots a_n$ to $b_1b_2\cdots b_n$.

Because for any given input string $a_1a_2\cdots a_n$
there might fail to exist an sequence of
states having outgoing arrows labeled by the correct input symbols $a_i$,
the mapping is only partial. Also, because there might exist
several sequences of states realizing the mapping
$a_1a_2\cdots a_m$ to $b_1b_2\cdots b_n$ (or to some other string)
the mapping is not {\em deterministic}
(and also fails to define a function $\Sigma^\ast\to\Gamma^\ast$
in the set-theoretic sense).

If $T:a_1a_2\cdots a_m\to b_1b_2\cdots b_n$
is realized by a path
\[\xymatrix@C5em{
q_1\ar[r]^{a_1:b_1/w_1}
&q_2\ar[r]^{a_2:b_2/w_2}\ar[r]
&\cdots
&q_{n-1}\ar[r]^{a_{n-1}:b_{n-1}/w_{n-1}}
&q_n}\]
through $T$, then $w_1\otimes w_2\otimes\cdots\otimes w_n$
is called the {\em weight} of the transduction.
Note that the weight is not well-defined due to the ambiguities discussed
above.

In the case that $\Sigma=\Gamma$ and 
each edge has the form ${a:a/w}$ for some
$a\in\Sigma\cup\left\{\epsilon\right\}$ and some $w\in R$, then
the transducer is known as a {\em finite state automaton}
and our point of view changes. Rather than regarding the automaton
as mapping strings to themselves as in our interpretation above,
an automaton {\em accepts} strings if the sequence of states
mapping the string to itself exists.
