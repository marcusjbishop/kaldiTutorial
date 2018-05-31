A {\em finite state machine} $T$ is a directed graph
with finite vertex set $Q$
whose edges are labeled by strings of the form ${a:b/w}$, where
$a,b,w$ are as described below.
Either $a$ belongs to a fixed {\em input alphabet} $\Sigma$,
or else $a=\epsilon$, the identity element of the free monoid $\Sigma^\ast$.
Similarly, $b$ belongs to a fixed {\em output alphabet} $\Gamma$,
or else $b=\epsilon$, the identity element of the free monoid $\Gamma^\ast$.
Finally, $w$ is an element of a fixed semiring $R$.
The elements of $Q$ are known as {\em states}.
Additionally, certain states are designated
as either {\em intial} or {\em final} states.

The point of view used in ASR is that $T$ maps
elements of the free monoid $\Sigma^\ast$
to elements of the free monoid $\Gamma^\ast$, in the following sense.
Suppose $a_1a_2\cdots a_m\in\Sigma^\ast$ and
$b_1b_2\cdots b_n\in\Gamma^\ast$.
If there is a sequence of states $q_1,q_2,\cdots,q_m$
such that for all $1\le i\le m-1$ there is an edge $q_i\to q_{i+1}$
labeled by ${a_i:b_i/w_i}$
(XXX: I haven't handled $\epsilon$ properly)
and such that $q_1$ is an initial state and $q_m$ is a final state,
then we say that $T$ maps $a_1a_2\cdots a_m$ to $b_1b_2\cdots b_n$.
Because there may fail to exist an appropriate sequence of
states having outgoing arrows labeled by the correct input symbols,
the mapping is only paritial. Also, because there might exist
several appropriate sequences of states mapping
$a_1a_2\cdots a_m$ to $b_1b_2\cdots b_n$ (or to some other string)
the mapping is not {\em deterministic}
(and also does not define a function $\Sigma^\ast\to\Gamma^\ast$
in the mathematitical sense).
