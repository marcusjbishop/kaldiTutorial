A {\em finite state transducer} $T$ is a directed graph
with a finite vertex set $Q$
whose edges are labeled by strings of the form ${a:b/w}$, where
$a,b,w$ are specified below.
Either $a$ belongs to a fixed {\em input alphabet} $\Sigma$,
or else $a=\epsilon$, the identity element of the free monoid $\Sigma^\ast$.
Similarly, $b$ belongs to a fixed {\em output alphabet} $\Gamma$,
or else $b=\epsilon$, the identity element of the free monoid $\Gamma^\ast$.
Finally, $w$ is an element of a fixed semiring
$\left(R,\oplus,\otimes\right)$.
The elements of $Q$ are called {\em states}.
Additionally, certain states can be designated
as {\em initial} or {\em final} states.

The point of view used in ASR is that $T$ maps
elements of $\Sigma^\ast$
to elements of $\Gamma^\ast$, in the following sense.
Suppose $a=a_1a_2\cdots a_n\in\Sigma^\ast$ and
$b=b_1b_2\cdots b_n\in\Gamma^\ast$.
Note that at this stage both strings have the same length~$n$
and that we additionally assume that none of $a_1,a_2,\ldots,a_n,b_1,
b_2,\ldots,b_n$ is the identity element $\epsilon$.
If there is a sequence of states $q_1,q_2,\cdots,q_n$
such that for each $1\le i\le n-1$ there is an edge $q_i\to q_{i+1}$
of $T$ labeled by ${a_i:b_i/w_i}$ for some $w_i\in R$
and such that $q_1$ is an initial state and $q_n$ is a final state,
then we say that $T$ {\em transduces}
$a_1a_2\cdots a_n$ to $b_1b_2\cdots b_n$.

Because for any given input string $a$
there might fail to exist an sequence of
states having outgoing arrows labeled by the correct input symbols $a_i$,
the mapping is only partial. Also, because there might exist
several sequences of states realizing the mapping from
$a$ to $b$ or to some other string,
the mapping is not {\em deterministic}.
It also fails to define a function $\Sigma^\ast\to\Gamma^\ast$
in the set-theoretic sense.

If $T:a\to b$ is realized by a path
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

More generally, because the symbols $a$ and $b$ labeling
the edges of $T$ can both be $\epsilon$, the identity element
of the corresponding free monoid, the length of a string
output by $T$ could be different than the length of the corresponding
input. This is because $\epsilon$ appearing in any string
is omitted and thereby contributes to the length of the string.

In the special case that $\Sigma=\Gamma$ and 
each edge has the form ${a:a/w}$ for some
$a\in\Sigma\cup\left\{\epsilon\right\}$ and some $w\in R$,
the transducer is known as a {\em finite state automaton}
and our point of view changes. Rather than regarding the automaton
as mapping strings to themselves as in our interpretation above,
an automaton {\em accepts} strings if a sequence of states
mapping the string to itself exists, and {\em rejects} the string
otherwise. In this way $T$ defines a language, namely the set
of all sequences that $T$ accepts.
