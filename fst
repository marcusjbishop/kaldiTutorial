A {\em finite state transducer} $T$ is a directed graph
with a finite vertex set $Q$
whose edges are labeled by strings of the form ${a:b/w}$, where
$a,b,w$ are as specified below.
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
Suppose initially that $\mathbold{a}=a_1a_2\cdots a_n$
and $\mathbold{b}=b_1b_2\cdots b_n$
for some $a_1,a_2,\ldots,a_n\in\Sigma$ and $b_1,b_2,\ldots,b_n\in\Gamma$.
Note that at this stage both strings have the same length~$n$
and that none of $a_1,a_2,\ldots,a_n,b_1,
b_2,\ldots,b_n$ is the identity element $\epsilon$.
If there is a sequence of states $q_1,q_2,\ldots,q_n$
such that for each $1\le i\le n-1$ there is an edge $q_i\to q_{i+1}$
of $T$ labeled by ${a_i:b_i/w_i}$ for some $w_i\in R$
and if $q_1$ is an initial state and $q_n$ is a final state,
then we say that $T$ {\em transduces}
$\mathbold{a}$ to $\mathbold{b}$, a fact that we will denote
by $\mathbold{a}\mapsto\mathbold{b}$.

In summary, $\mathbold{a}\mapsto\mathbold{b}$ if there is
a path
\begin{equation}\label{path}
\xymatrix@C5em{
q_1\ar[r]^{a_1:b_1/w_1}
&q_2\ar[r]^{a_2:b_2/w_2}\ar[r]
&\cdots\ar[r]
&q_{n-1}\ar[r]^{a_{n-1}:b_{n-1}/w_{n-1}}
&q_n}
\end{equation}
in $T$. In this case we say that this path {\em realizes}
the transduction $\mathbold{a}\mapsto\mathbold{b}$.

Because for any given input string $\mathbold{a}$
there might fail to exist an sequence of
states having outgoing arrows labeled by the correct input symbols $a_i$,
the mapping is only partial. Also, because there might exist
several sequences of states realizing the mapping from
$\mathbold{a}$ to $\mathbold{b}$ (or to some other string),
the mapping is not {\em deterministic}.
It also fails to define a function $\Sigma^\ast\to\Gamma^\ast$
in the set-theoretic sense.

If $T:\mathbold{a}\mapsto\mathbold{b}$ is realized by a path
as in \autoref{path}
then $w_1\otimes w_2\otimes\cdots\otimes w_n$
is called the {\em weight} of the transduction.
Note that the weight is not well-defined due to the ambiguities discussed
above. For example, if $R$ is the {\em log semiring}
in which $R$ is the ring of real numbers and $\otimes$
is given by addition, then the weight of the transduction
corresponds with the log of its probability, provided
that each edge is labeled by the log if its individual probability.

More generally, we allow the symbols $a$ and $b$ labeling
the edges of $T$ to both be $\epsilon$, the identity element
of the corresponding free monoid. Therefore, the length of a string
output by $T$ could be different than the length of the corresponding
input. This is because $\epsilon$ appearing in any string
is omitted and thereby contributes nothing to its length.

In the special case that $\Sigma=\Gamma$ and 
each edge has the form ${a:a/w}$ for some
$a\in\Sigma\cup\left\{\epsilon\right\}$ and some $w\in R$,
the transducer is known as a {\em finite state automaton} or {\em acceptor}
and our point of view changes. Rather than regarding the automaton
as mapping strings to themselves as in our interpretation above,
an automaton {\em accepts} a string if a sequence of states
realizing the mapping the string to itself exists, and {\em rejects} the string
otherwise. In this way $T$ defines a language, namely the set
of all sequences that $T$ accepts.

Corresponding with the notion of composition of functions, there is a
similar notion of composition of FSTs.
To define the composition $T\circ U$
of two FSTs $T$ and $U$, one needs to specify what the states
of $T\circ U$ are, and what the transitions between states should
be. We omit the formal definition, but remark that $T\circ U$
is set up in such a way that, for any strings $\mathbold{a}$
and $\mathbold{c}$, the composition $T\circ U$ transduces $\mathbold{a}$
to $\mathbold{c}$ if there is a string $\mathbold{b}$
such that $T:\mathbold{a}\mapsto\mathbold{b}$
and $U:\mathbold{b}\mapsto\mathbold{c}$.
Note that one reads the composition of two FSTs from left to right,
in contrast with the usualy mathematical convention.

We mention two further FST operations.
In case an FST is not deterministic, there is a procedure
called {\em determinization} which returns a deterministic
FST that performs the same transductions.
Also of interest is the process of {\em minimization} of an FST, which
returns an FST that performs the same transductions, but whose
number of states is minimal among all transducers performing the same
transductions.

\textsf{Kaldi} makes use of the open-source
library \verb!openfst! to implement FSTs.
