<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Adjunction and Monad>

  <section|Adjunction>

  <subsection|Adjoint functors preserve representations of presheaves and
  copresheaves><label|section: Adjoint functors preserve representations of
  presheaves and copresheaves>

  Up to now, representation only occurs in single category (except for the
  <math|<math-ss|Set>>). For instance, the representation of a representable
  presheaf <math|H:<math-ss|D><rsup|op>\<rightarrow\><math-ss|Set>> is still
  in <math|<math-ss|D>>. No other category is involved. It is natural to
  generalize representation to involve multiple categories. But how? We have
  known that, in the framework of category theory, the key is using
  functorial maps. The only way of mapping <math|H> to a presheaf on another
  category, say <math|<math-ss|C>>, is composing <math|H> by a functor
  <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> as
  <math|H\<circ\>F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>. Let
  <math|<wide|H|^>> represent <math|H>, that is,
  <math|<math-ss|D><around*|(|-,<wide|H|^>|)>\<cong\>H>. Since
  <math|<wide|H|^>> is in <math|<math-ss|D>>, it cannot represents
  <math|H\<circ\>F>, which is a presheaf on <math|<math-ss|C>>. It is natural
  to wonder if there is a functorial map (recall that, in the framework of
  category theory, a map should be functorial) that sends <math|<wide|H|^>>
  to the representation of the presheaf <math|H\<circ\>F> (if it is
  representable). This calls for another functor
  <math|G:<math-ss|D>\<rightarrow\><math-ss|C>> so that
  <math|G<around*|(|<wide|H|^>|)>> may represent <math|H\<circ\>F>. So, our
  problem turns to be what is the condition for
  <math|G<around*|(|<wide|H|^>|)>> to represent <math|H\<circ\>F>, that is,

  <\equation*>
    <math-ss|C><around*|(|-,G<around*|(|<wide|H|^>|)>|)><above|\<cong\>|?>H\<circ\>F.
  </equation*>

  Since <math|<wide|H|^>> represents <math|H> and it is easy to prove that
  <math|<math-ss|D><around*|(|-,<wide|H|^>|)>\<cong\>H> implies
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,<wide|H|^>|)>\<cong\>H\<circ\>F>
  <\footnote>
    Proof is left to reader.
  </footnote>, the problem turns to be <math|<math-ss|D><around*|(|F<around*|(|-|)>,<wide|H|^>|)><above|\<cong\>|?><math-ss|C><around*|(|-,G<around*|(|<wide|H|^>|)>|)>>.
  If this relation holds, then <math|G<around*|(|<wide|H|^>|)>> represents
  <math|H\<circ\>F>, and we say the representation of a representable
  presheaf is preserved by functorial maps <math|F> and <math|G>.

  Applying the previous analysis to a representable copresheaf
  <math|K:<math-ss|C>\<rightarrow\><math-ss|Set>> which is represented by
  <math|<wide|K|^>\<in\><math-ss|C>>, we will find that the unique valid
  statement of the problem is what is the condition for
  <math|F<around*|(|<wide|K|^>|)>> to represent <math|K\<circ\>G>, that is,

  <\equation*>
    <math-ss|D><around*|(|F<around*|(|<wide|K|^>|)>,\<star\>|)><above|\<cong\>|?>K\<circ\>G.
  </equation*>

  (The <math|\<star\>> is employed as placeholder.) And again, since
  <math|<wide|K|^>> represents <math|K>, it turns to be
  <math|<math-ss|D><around*|(|F<around*|(|<wide|K|^>|)>,\<star\>|)><above|\<cong\>|?><math-ss|C><around*|(|<wide|K|^>,G<around*|(|\<star\>|)>|)>>.
  If this relation holds, then <math|F<around*|(|<wide|K|^>|)>> represents
  <math|K\<circ\>G>, and we say the representation of a representable
  copresheaf is preserved by functorial maps <math|F> and <math|G>.

  Altogether, if representations of all representable presheaves and
  copresheaves are to be preserved by functorial maps
  <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
  <math|G:<math-ss|D>\<rightarrow\><math-ss|C>>, then we should demand
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>\<cong\><math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>>,
  where <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>> and
  <math|<math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>> are bi-functors
  <\footnote>
    <with|font-series|bold|Bi-functor> is a functor with two variables, like
    a function with two variables, say <math|f<around*|(|x,y|)>>. As a
    function, <math|f<around*|(|x,y|)>> is reduced to a function of single
    variable, <math|f<rsub|y><around*|(|x|)>>, when <math|y> is given. The
    same goes for a bi-functor <math|F<around*|(|-,\<star\>|)>>. Given an
    object <math|Y>, <math|F<around*|(|-,Y|)>> is reduced to the single
    variable functor that we have been familiar with,
    <math|F<rsub|Y><around*|(|-|)>>. The functoriality of
    <math|F<around*|(|-,\<star\>|)>>, which preserves the structure of
    category, is satisfied in the sense of <math|F<rsub|Y><around*|(|-|)>>
    for each <math|Y>.
  </footnote> of the \Ptype\Q <math|<math-ss|C><rsup|op>\<times\><math-ss|D>\<rightarrow\><math-ss|Set>>.
  This indicates a double-index component

  <\equation*>
    \<varphi\><rsub|X,Y>:<math-ss|D><around*|(|F<around*|(|X|)>,Y|)>\<rightarrow\><math-ss|C><around*|(|X,G<around*|(|Y|)>|)>
  </equation*>

  for each <math|X\<in\><math-ss|C>> and <math|Y\<in\><math-ss|D>>. This
  means, to preserve presheaves and copresheaves, the <math|F> and <math|G>
  can be arbitrary except that the relation
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>\<cong\><math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>>
  must be held.

  We summarize this section as follow.

  <\definition>
    [Adjoint Functors & Adjunction] Let <math|<math-ss|C>> and
    <math|<math-ss|D>> locally small categories. Functors
    <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|D>\<rightarrow\><math-ss|C>> are
    <with|font-series|bold|adjoint>, denoted by <math|F\<dashv\>G>, if there
    exists a natural isomorphism <math|\<varphi\>:<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>\<rightarrow\><math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>>.
    The <math|\<varphi\>> is called an <with|font-series|bold|adjunction>.<\footnote>
      In some texture, for instance MacLane, adjunction is defined as the
      triplet <math|<around*|(|F,G,\<varphi\>|)>>. However, the
      <math|\<varphi\>> itself, like any other morphism, has indicated what
      the domain and codomain are, that is, the
      <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>> and
      <math|<math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>> respectively,
      from which we read out <math|F> and <math|G>.
    </footnote>
  </definition>

  <\big-figure|<image|figures/adjoint.png|0.8par|||>>
    <label|figure: Adjoint> Indicates the natural isomorphism
    <math|\<varphi\>:<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>\<rightarrow\><math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>>.
    \PNatural in <math|X>\Q means varying the first variable, and \Pnatural
    in <math|Y>\Q varies the second. The commutative diagrams have been
    rotated by <math|90<rsup|\<circ\>>> for convenience.
  </big-figure>

  <\theorem>
    [Adjoint Functors Preserve Representations] Let <math|<math-ss|C>> and
    <math|<math-ss|D>> locally small categories. Let
    <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|D>\<rightarrow\><math-ss|C>> adjoint functors, as
    <math|F\<dashv\>G>. We have,

    <\itemize>
      <item>if <math|<wide|H|^>\<in\><math-ss|D>> represents
      <math|H:<math-ss|D><rsup|op>\<rightarrow\><math-ss|Set>>, then
      <math|G<around*|(|<wide|H|^>|)>\<in\><math-ss|C>> represents
      <math|H\<circ\>F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>; and

      <item>if <math|<wide|K|^>\<in\><math-ss|C>> represents
      <math|K:<math-ss|C>\<rightarrow\><math-ss|Set>>, then
      <math|F<around*|(|<wide|K|^>|)>\<in\><math-ss|D>> represents
      <math|K\<circ\>G:<math-ss|D>\<rightarrow\><math-ss|Set>>.
    </itemize>
  </theorem>

  It is called adjoint because of the analogy to the adjoint in vector space:
  two linear transformations <math|T> and <math|T<rsup|\<ast\>>> are adjoint
  if <math|<around*|\<langle\>|T<rsup|\<ast\>>u,v|\<rangle\>>=<around*|\<langle\>|u,T
  v|\<rangle\>>> for each vectors <math|u> and <math|v>, where bracket
  indicates inner product.

  <subsection|Adjoint is unique>

  As discussed in section <reference|section: Representation is unique>,
  representation is unique up to isomorphism. So, it is natural to wonder if
  the adjoint of a functor is unique.

  <\theorem>
    [Adjoint is Unique] If <math|F\<dashv\>G> and
    <math|F\<dashv\>G<rprime|'>>, then we have <math|G> and
    <math|G<rprime|'>> are natural isomorphic. The same goes for <math|F>.
  </theorem>

  <\proof>
    For each <math|Y\<in\><math-ss|D>>, <math|\<varphi\><rsub|-,Y>:<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>\<rightarrow\><math-ss|C><around*|(|-,G<around*|(|Y|)>|)>>
    indicates that <math|G<around*|(|Y|)>> represents
    <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>. Since representation
    is unique up to isomorphism, if <math|G<around*|(|Y|)>> and
    <math|G<rprime|'><around*|(|Y|)>> both represents
    <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>, then we should have
    <math|G<around*|(|Y|)>\<cong\>G<rprime|'><around*|(|Y|)>> for each
    <math|Y\<in\><math-ss|D>>. This simply means <math|G> and
    <math|G<rprime|'>> are natural isomorphic. The same goes for <math|F>.
  </proof>

  With this uniqueness, we can say <math|F> is <with|font-shape|italic|the>
  <with|font-series|bold|left adjoint> of <math|G>, and <math|G> is
  <with|font-shape|italic|the> <with|font-series|bold|right adjoint> of
  <math|F>.

  <subsection|Unit and counit are universal elements>

  The question is, given a functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>,
  whether or not there exists a functor <math|G:<math-ss|D>\<rightarrow\><math-ss|C>>
  such that <math|F\<dashv\>G> holds. This is a complicated question, and is
  left to section TODO. Temporally, we are to consider a much simpler one:
  for adjoint functors <math|F\<dashv\>G>, how to find the natural
  isomorphism <math|\<varphi\>:<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>\<rightarrow\><math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>>.

  First, we shall check what <math|F\<dashv\>G> means. From the definition,
  it is easy to see that <math|F<around*|(|X|)>> represents
  <math|<math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)>> and
  <math|G<around*|(|Y|)>> represents <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>.
  As it is shown in lemma <reference|theorem: Universal Element>, a presheaf
  is representable if and only if there is a universal element for it, and a
  natural isomorphism that makes the representation can be defined by the
  universal element. This indicates a way to find the <math|\<varphi\>>, by
  the universal elements of the presheaves
  <math|<math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)>> and
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>.

  It is found that, given <math|X>, the universal element of
  <math|<math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)>>, denoted by
  <math|\<eta\><rsub|X>:X\<rightarrow\>G\<circ\>F<around*|(|X|)>>, defines a
  natural isomorphism in component <math|\<varphi\><rsub|X,Y>:<math-ss|D><around*|(|F<around*|(|X|)>,Y|)>\<rightarrow\><math-ss|C><around*|(|X,G<around*|(|Y|)>|)>>
  as <math|G<around*|(|-|)>\<circ\>\<eta\><rsub|X>>.<\footnote>
    Interestingly, in category theory, we can directly check whether we have
    derived correctly or not by \Ptype checking\Q! By recalling the types
    <math|\<eta\><rsub|X>:X\<rightarrow\>G\<circ\>F<around*|(|X|)>> and
    <math|f:F<around*|(|X|)>\<rightarrow\>Y>, we find
    <math|\<varphi\><rsub|X,Y><around*|(|f|)>:X<above|\<longrightarrow\>|\<eta\><rsub|X>>G\<circ\>F<around*|(|X|)><above|\<longrightarrow\>|G<around*|(|f|)>>G<around*|(|Y|)>>,
    which is the correct \Ptype\Q.
  </footnote> The same, given <math|Y>, the universal element of
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>, denoted by
  <math|\<varepsilon\><rsub|Y>:F\<circ\>G<around*|(|Y|)>\<rightarrow\>Y>,
  defines a natural isomorphism in component
  <math|\<psi\><rsub|X,Y>:<math-ss|C><around*|(|X,G<around*|(|Y|)>|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|X|)>,Y|)>>
  as <math|\<varepsilon\><rsub|Y>\<circ\>F<around*|(|-|)>>. Here, both the
  <math|X> of <math|\<eta\><rsub|X>> and the <math|Y> of
  <math|\<varepsilon\><rsub|Y>> are labels, which do not indicate any
  naturality.

  Next, we demand that <math|\<varphi\><rsub|X,Y>> is a natural in both
  indices. The naturality in <math|Y> is a result of universal element. And
  naturality in <math|X> demands that <math|\<eta\><rsub|X>> should not be
  simply a morphism, but a component of a natural transformation
  <math|\<eta\>:1<rsub|<math-ss|C>>\<rightarrow\>G\<circ\>F>. The same,
  naturality of <math|\<psi\>> demands that <math|\<varepsilon\><rsub|Y>>
  should be a component of a natural transformation
  <math|\<varepsilon\>:F\<circ\>G\<rightarrow\>1<rsub|<math-ss|D>>>.

  Now, we demand that the <math|\<varphi\>> and the <math|\<psi\>> are not
  individual natural isomorphisms, but are inverse to each other. That is,
  <math|\<varphi\>\<circ\>\<psi\>=1<rsub|<math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>>>
  and <math|\<psi\>\<circ\>\<varphi\>=1<rsub|<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>>>.
  Since for each <math|f:X\<rightarrow\>G<around*|(|Y|)>>,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|\<varphi\><rsub|X,Y>\<circ\>\<psi\><rsub|X,Y><around*|(|f|)>>>|<row|<cell|<around*|{|definitions|}>=>|<cell|G<around*|(|\<varepsilon\><rsub|Y>\<circ\>F<around*|(|f|)>|)>\<circ\>\<eta\><rsub|X>>>|<row|<cell|<around*|{|functorality
    of G|}>=>|<cell|G<around*|(|\<varepsilon\><rsub|Y>|)>\<circ\><around*|(|G\<circ\>F|)><around*|(|f|)>\<circ\>\<eta\><rsub|X>>>|<row|<cell|<around*|{|naturality
    of \<eta\>|}>=>|<cell|G<around*|(|\<varepsilon\><rsub|Y>|)>\<circ\>\<eta\><rsub|G<around*|(|Y|)>>\<circ\>f,>>>>
  </align>

  we find that <math|\<varphi\>\<circ\>\<psi\>=1<rsub|<math-ss|C><around*|(|-,G<around*|(|\<star\>|)>|)>>>
  is equivalent to <math|G<around*|(|\<varepsilon\><rsub|Y>|)>\<circ\>\<eta\><rsub|G<around*|(|Y|)>>=1<rsub|G<around*|(|Y|)>>>.
  The same, <math|\<psi\>\<circ\>\<varphi\>=1<rsub|<math-ss|D><around*|(|F<around*|(|-|)>,\<star\>|)>>>
  is equivalent to <math|\<varepsilon\><rsub|F<around*|(|X|)>>\<circ\>F<around*|(|\<eta\><rsub|X>|)>=1<rsub|F<around*|(|X|)>>>.
  As figure <reference|figure: Triangle Identities> shows, these two
  identities form triangles respectively, thus called
  <with|font-series|bold|triangle identities>.

  <big-figure|<image|figures/yoneda-5.png|0.75par|||>|<label|figure: Triangle
  Identities> This <hlink|figure|https://q.uiver.app/#q=WzAsNixbMCwwLCJHKFkpIl0sWzIsMCwiRyBcXGNpcmMgRiBcXGNpcmMgRyhZKSJdLFsyLDIsIkcoWSkiXSxbNCwwLCJGIFxcY2lyYyBHIFxcY2lyYyBGKFgpIl0sWzYsMCwiRihYKSJdLFs0LDIsIkYoWCkiXSxbMCwxLCJcXGV0YV97RyhZKX0iLDFdLFsxLDIsIkcoXFx2YXJlcHNpbG9uX1kpIiwxXSxbMCwyLCIxX3tHKFkpfSIsMV0sWzMsNCwiXFx2YXJlcHNpbG9uX3tGKFgpfSIsMV0sWzUsMywiRihcXGV0YV9YKSIsMV0sWzQsNSwiMV97RihYKX0iLDFdXQ==>
  indicates <math|G<around*|(|\<varepsilon\><rsub|Y>|)>\<circ\>\<eta\><rsub|G<around*|(|Y|)>>=1<rsub|G<around*|(|Y|)>>>
  and <math|\<varepsilon\><rsub|F<around*|(|X|)>>\<circ\>F<around*|(|\<eta\><rsub|X>|)>=1<rsub|F<around*|(|X|)>>>
  respectively.>

  Finally, we find that the demanded adjunction <math|\<varphi\>> and its
  inverse <math|\<psi\>> can be constructed out of the natural
  transformations <math|\<eta\>:1<rsub|<math-ss|C>>\<rightarrow\>G\<circ\>F>
  and <math|\<varepsilon\>:F\<circ\>G\<rightarrow\>1<rsub|<math-ss|D>>> that
  satisfy the triangle identities.

  In the end, we clear up the previous analysis, summarizing as follow.

  <\definition>
    [Unit & Counit] Let <math|<math-ss|C>> and <math|<math-ss|D>> locally
    small categories, and <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|D>\<rightarrow\><math-ss|C>> functors. Natural
    transformations <math|\<eta\>:1<rsub|<math-ss|C>>\<rightarrow\>G\<circ\>F>
    and <math|\<varepsilon\>:F\<circ\>G\<rightarrow\>1<rsub|<math-ss|D>>> are
    <with|font-series|bold|unit> and <with|font-series|bold|counit>
    respectively if they satisfy the triangle identities (figure
    <reference|figure: Triangle Identities>).
  </definition>

  <\theorem>
    [Unit & Counit] Let <math|<math-ss|C>> and <math|<math-ss|D>> locally
    small categories, <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|D>\<rightarrow\><math-ss|C>> adjoint functors. If
    <math|\<eta\>:1<rsub|<math-ss|C>>\<rightarrow\>G\<circ\>F> and
    <math|\<varepsilon\>:F\<circ\>G\<rightarrow\>1<rsub|<math-ss|D>>> are
    unit and counit respectively, then <math|G\<circ\>\<eta\>> is an
    adjunction of <math|F\<dashv\>G> with inverse
    <math|\<varepsilon\>\<circ\>F>.
  </theorem>

  <section|Monad>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|?>>
    <associate|auto-3|<tuple|1.1|?>>
    <associate|auto-4|<tuple|1|?>>
    <associate|auto-5|<tuple|1.2|?>>
    <associate|auto-6|<tuple|1.3|?>>
    <associate|auto-7|<tuple|2|?>>
    <associate|auto-8|<tuple|2|?>>
    <associate|auto-9|<tuple|2|?>>
    <associate|figure: Adjoint|<tuple|1|?>>
    <associate|figure: Triangle Identities|<tuple|2|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-2|<tuple|2|?>>
    <associate|footnr-3|<tuple|3|?>>
    <associate|footnr-4|<tuple|4|?>>
    <associate|section: Adjoint functors preserve representations of
    presheaves and copresheaves|<tuple|1.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Adjunction
      and Monad> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>
    </associate>
  </collection>
</auxiliary>