<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Universality, Adjunction, and Monad>

  <section|Universality (TODO)>

  <subsection|Hom-functor can be generalized for multiple categories>

  As discussed in section <reference|section: Morphisms with fixed codomain
  can be represented by hom-functor>, in a locally small category C, an
  object <math|Y\<in\><math-ss|C>> corresponds to a representable functor
  <math|<math-ss|C><around*|(|-,Y|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>.
  Conversely, as discussed in section <reference|section: Functor is
  representable if there exists universal element>, a functor
  <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> is representable
  if there exists an element <math|e\<in\>F<around*|(|<wide|F|^>|)>> for some
  <math|<wide|F|^>\<in\><math-ss|C>> such that
  <math|F<around*|(|-|)><around*|(|e|)>:<math-ss|C><around*|(|X,<wide|F|^>|)>\<rightarrow\>F<around*|(|X|)>>
  is isomorphic for all <math|X\<in\><math-ss|C>>.

  In these discussions, <math|<math-ss|C>> is the only category under
  consideration. A natural way of generalizing this is to consider more
  categories, say two. We shall also consider a functor that connects them.
  That is, let <math|<math-ss|C>> and <math|<math-ss|D>> locally small
  categories, and functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>. What
  is the generalization of the hom-functor
  <math|<math-ss|C><around*|(|-,Y|)>>? We should insert F into it. There are
  only two possible ways. One way of insertion is
  <math|<math-ss|D><around*|(|-,F<around*|(|Y|)>|)>>. Notice that we have
  replaced <math|<math-ss|C>> by <math|<math-ss|D>>, since the
  <math|F<around*|(|Y|)>> is in category <math|<math-ss|D>>. This is nothing
  but a hom-functor on <math|<math-ss|D>> , like
  <math|<math-ss|D><around*|(|-,Z|)>>, thus not a true generalization. The
  other way of insertion is <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>,
  where <math|Y\<in\><math-ss|D>>. This indeed is a generalization, since it
  cannot be directly re-written as a hom-functor. Next, it is essential to
  check that <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>> is a functor.
  In fact, <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
  sends <math|f:A\<rightarrow\>B> to <math|<around*|(|F<around*|(|f|)>|)><rsup|\<ast\>>:<math-ss|D><around*|(|F<around*|(|B|)>,Y|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|B|)>,Y|)>>.
  Axioms of composition and identity are directly implied from the
  functoriality of <math|F> and the definition of pullback
  <math|<around*|(|-|)><rsup|\<ast\>>>.

  <subsection|Universal arrow is the representation of generalized
  hom-functor>

  Interestingly, the <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
  may be representable. By theorem <reference|theorem: Universal Element>, a
  presheaf <\footnote>
    Recall that a presheaf is a functor of the type
    <math|<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>.
  </footnote> is representable if and only if there is a universal element of
  it. Let us restate the definition of universal element for
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>, which is called
  universal arrow.

  A universal element of <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>
  is a morphism <math|e\<in\><math-ss|D><around*|(|F<around*|(|W|)>,Y|)>> for
  some <math|W\<in\><math-ss|C>>, such that
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)><around*|(|e|)>:<math-ss|C><around*|(|X,W|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|X|)>,Y|)>>
  is an isomorphism for each <math|X\<in\><math-ss|C>>. First, we have to
  evaluate <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)><around*|(|e|)>>
  for each <math|X\<in\><math-ss|C>> and each <math|f:X\<rightarrow\>W>, as

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<math-ss|D><around*|(|F<around*|(|f|)>,Y|)><around*|(|e|)>>>|<row|<cell|<around*|{|definition
    of <math-ss|D><around*|(|F<around*|(|-|)>,Y|)>|}>=>|<cell|<around*|(|F<around*|(|f|)>|)><rsup|\<ast\>><around*|(|e|)>>>|<row|<cell|<around*|{|definition
    of <around*|(|-|)><rsup|\<ast\>>|}>=>|<cell|e\<circ\>F<around*|(|f|)>.>>>>
  </align>

  Next, since both sides of the arrow are sets, that
  <math|e\<circ\>F<around*|(|-|)>:<math-ss|C><around*|(|X,W|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|X|)>,Y|)>>
  is an isomorphism means that it is a bijection, which in turn means, for
  each <math|f\<in\><math-ss|D><around*|(|F<around*|(|X|)>,Y|)>>, there is a
  unique <math|\<zeta\>\<in\><math-ss|C><around*|(|X,W|)>> such that
  <math|f=e\<circ\>F<around*|(|\<zeta\>|)>>. Finally, we put all these
  together as follow.

  <\definition>
    [Arrow from Functor to Object] Let <math|<math-ss|C>> and
    <math|<math-ss|D>> locally small categories,
    <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> a functor, and
    <math|Y\<in\><math-ss|D>>. An <with|font-series|bold|arrow> from <math|F>
    to <math|Y> is a pair <math|<around*|(|X,f|)>> where
    <math|X\<in\><math-ss|C>> and <math|f:F<around*|(|X|)>\<rightarrow\>Y>.
  </definition>

  <\definition>
    [Universal Arrow] Let <math|<math-ss|C>> and <math|<math-ss|D>> locally
    small categories, and <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> a
    functor. Given <math|Y\<in\><math-ss|D>>, a
    <with|font-series|bold|universal arrow> from <math|F> to <math|Y> is an
    arrow from <math|F> to <math|Y>, <math|<around*|(|W,e|)>>, such that for
    any other arrow from <math|F> to <math|Y>, <math|<around*|(|X,f|)>>,
    there is a unique <math|\<zeta\>:X\<rightarrow\>W> such that
    <math|f=e\<circ\>F<around*|(|\<zeta\>|)>>.
  </definition>

  <big-figure|<image|figures/universality.png|0.4par|||>|<label|figure:
  Universality> This <hlink|figure|https://q.uiver.app/#q=WzAsNSxbMSwwLCJGKFgpIl0sWzEsMiwiRihXKSJdLFswLDIsIlciXSxbMCwwLCJYIl0sWzMsMiwiWSJdLFswLDEsIkYoXFx6ZXRhKSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDIsIlxcZXhpc3RzICEgXFx6ZXRhIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsNCwiZV9ZIiwxXSxbMCw0LCJcXGZvcmFsbCBmIiwxXV0=>
  illustrates a universal arrow from <math|F> to <math|Y>. For each
  <math|X\<in\><math-ss|C>> and each <math|f:F<around*|(|X|)>\<rightarrow\>Y>,
  there is a unique <math|\<zeta\>:X\<rightarrow\>W> such that
  <math|f=e\<circ\>F<around*|(|\<zeta\>|)>>.>

  <subsection|Universal arrow furnishes natural structure><label|section:
  Universal arrows furnish natural structure>

  As it is known, structure is very essential for enriching mathematics. For
  instance, by adding the structure called open covering on a set, we get a
  topological space. Furthermore, by adding smooth structure on a topological
  space, we get manifold. Universal arrow is important because it leads to a
  natural construction of mathematical structure. We are to declare this
  statement in the case of group.

  By adding the structure called multiplication on a set, we get a group. At
  the same time, a function is lifted to be a group homomorphism, if several
  axioms can be satisfied. Given a set, the structure that is added to form a
  group can be multiple. We can artifically construct many kinds of group out
  of the same set.

  Contrarily, by forgetting the multiplication of a group, we get a set. At
  the same time, a group homomorphism is reduced to a function. In category
  theory, this is described by a functor from the category of groups to the
  category of sets, <math|F:<math-ss|Grp>\<rightarrow\><math-ss|Set>>. TODO

  Let <math|Y> a set. A universal arrow <math|<around*|(|W,e|)>> from
  <math|F> to <math|Y> states that, for each group <math|X>, there is a
  bijection between functions like <math|f:F<around*|(|X|)>\<rightarrow\>Y>,
  which maps the underlying set of group <math|X> to the set <math|Y>, and
  group homomorphism like <math|\<zeta\>:X\<rightarrow\>W>. So, we find a way
  to construct a group homomorphism out of a function; and this construction
  does not need any artifitial assignment, thus is free of charge.

  This holds for other categories built on set by adding structure, such as
  the category of topological space, and the category of rings.

  <subsection|Universal arrows are functorial>

  In previous discussion, the <math|Y\<in\><math-ss|D>> is fixed. It is
  natural to wonder what will happen if there is a universal arrow for each
  <math|Y\<in\><math-ss|D>>. Let us start by two objects
  <math|X,Y\<in\><math-ss|D>>, and their universal arrows
  <math|<around*|(|W<rsub|X>,e<rsub|X>|)>> and
  <math|<around*|(|W<rsub|Y>,e<rsub|Y>|)>>. We have \Ptypes\Q
  <math|e<rsub|X>:F<around*|(|W<rsub|X>|)>\<rightarrow\>X> and
  <math|e<rsub|Y>:F<around*|(|W<rsub|Y>|)>\<rightarrow\>Y>. Then for each
  <math|f:X\<rightarrow\>Y>, there exists a unique
  <math|f<rsup|\<sharp\>>:W<rsub|X>\<rightarrow\>W<rsub|Y>> such that figure
  <reference|figure: Universal Arrow Is Functorial> commutes.

  <big-figure|<image|figures/universality-1.png|0.4par|||>|<label|figure:
  Universal Arrow Is Functorial> This <hlink|figure|https://q.uiver.app/#q=WzAsNixbMSwwLCJGKFdfWCkiXSxbMywwLCJYIl0sWzEsMiwiRihXX1kpIl0sWzAsMiwiV19ZIl0sWzAsMCwiV19YIl0sWzMsMiwiWSJdLFswLDEsImVfWCIsMV0sWzAsMiwiRihmXntcXCN9KSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDUsImVfWSIsMV0sWzEsNSwiZiIsMV0sWzQsMywiXFxleGlzdHMgISBmXntcXCN9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNSwiZiBcXGNpcmMgZV9YIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d>
  defines <math|f<rsup|\<sharp\>>>. For each <math|f:X\<rightarrow\>Y>, we
  have <math|f\<circ\>e<rsub|X>:F<around*|(|W<rsub|X>|)>\<rightarrow\>Y>.
  Since <math|<around*|(|W<rsub|Y>,e<rsub|Y>|)>> is a universal arrow, there
  is a unique <math|f<rsup|\<sharp\>>:W<rsub|X>\<rightarrow\>W<rsub|Y>> such
  that the red part commutes, which implies that the whole diagram commutes.>

  This hints for a functor-like map from <math|<math-ss|D>> to
  <math|<math-ss|C>>. Explicitly, for each <math|X\<in\><math-ss|D>> and each
  <math|f:X\<rightarrow\>Y> in <math|<math-ss|D>>,

  <\equation*>
    <tabular*|<tformat|<table|<row|<cell|X>|<cell|\<mapsto\>>|<cell|W<rsub|X>>>|<row|<cell|f:X\<rightarrow\>Y>|<cell|\<mapsto\>>|<cell|f<rsup|\<sharp\>>:W<rsub|X>\<rightarrow\>W<rsub|Y>>>>>>.
  </equation*>

  It is natural to wonder if this functor-like map is really a functor. That
  is, if it satisfies the axioms of composition and identity. The composition
  axiom is implied from the functoriality of <math|F>, illustrated by figure
  <reference|figure: Composition Axiom>. And the identity axiom is naturally
  satisfied, illustrated by figure <reference|figure: Identity Axiom>. So, we
  conclude that functor-like map is indeed a functor.

  <big-figure|<image|figures/adjunction-1.png|0.6par|||>|<label|figure:
  Composition Axiom> This <hlink|figure|https://q.uiver.app/#q=WzAsNixbMSwwLCJGKFdfWCkiXSxbMywwLCJYIl0sWzEsMiwiRihXX1gpIl0sWzAsMiwiV19YIl0sWzAsMCwiV19YIl0sWzMsMiwiWCJdLFswLDEsImVfWCIsMV0sWzAsMiwiRigxX3tXX1h9KSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDUsImVfWCIsMV0sWzEsNSwiMV9YIiwxXSxbNCwzLCIxX3tXX1h9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNSwiZV9YIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d>
  illustrates that composition axiom is satisfied. Composition axiom states
  that <math|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>=g<rsup|\<sharp\>>\<circ\>f<rsup|\<sharp\>>>.
  First, notice that replacing <math|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>>
  by <math|g<rsup|\<sharp\>>\<circ\>f<rsup|\<sharp\>>> makes this diagram
  commutes. Indeed, this is implied by the functorality of <math|F>. Next,
  because of universality, the <math|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>>
  that makes this diagram commutes is unique. So, we conclude that
  <math|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>=g<rsup|\<sharp\>>\<circ\>f<rsup|\<sharp\>>>.>

  <big-figure|<image|figures/adjunction-2.png|0.45par|||>|<label|figure:
  Identity Axiom> This <hlink|figure|https://q.uiver.app/#q=WzAsNixbMSwwLCJGKFdfWCkiXSxbMywwLCJYIl0sWzEsMiwiRihXX1gpIl0sWzAsMiwiV19YIl0sWzAsMCwiV19YIl0sWzMsMiwiWCJdLFswLDEsImVfWCIsMV0sWzAsMiwiRigxX3tXX1h9KSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDUsImVfWCIsMV0sWzEsNSwiMV9YIiwxXSxbNCwzLCIxX3tXX1h9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNSwiZV9YIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d>
  illustrates that identity axiom is satisfied. Identity axiom states that
  <math|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>=1<rsub|W<rsub|X>>>. First,
  notice that replacing <math|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>> by
  <math|1<rsub|W<rsub|X>>> makes this diagram commutes. Next, because of
  universality, the <math|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>> that makes
  this diagram commutes is unique. So, we conclude that
  <math|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>=1<rsub|W<rsub|X>>>.>

  We summarize this section as follow.

  <\theorem>
    Let <math|<math-ss|C>> and <math|<math-ss|D>> locally small categories,
    and <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> a functor. If for each
    <math|X\<in\><math-ss|D>>, there is a universal arrow from <math|F> to
    <math|X>, then there is a functor <math|G:<math-ss|D>\<rightarrow\><math-ss|C>>
    that maps <math|X\<in\><math-ss|D>> to <math|W<rsub|X>\<in\><math-ss|C>>

    the maps that assign <math|X> to <math|W<rsub|X>>, where
    <math|<around*|(|W<rsub|X>,e<rsub|X>|)>>

    <\equation*>
      <tabular*|<tformat|<table|<row|<cell|X>|<cell|\<mapsto\>>|<cell|W<rsub|X>>>|<row|<cell|f:X\<rightarrow\>Y>|<cell|\<mapsto\>>|<cell|f<rsup|\<sharp\>>:W<rsub|X>\<rightarrow\>W<rsub|Y>>>>>>
    </equation*>

    form a functor.\ 
  </theorem>

  <section|Adjunction>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4|3>>
    <associate|auto-11|<tuple|2|3>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-5|<tuple|1|2>>
    <associate|auto-6|<tuple|1.3|2>>
    <associate|auto-7|<tuple|1.4|2>>
    <associate|auto-8|<tuple|2|2>>
    <associate|auto-9|<tuple|3|3>>
    <associate|figure: Composition Axiom|<tuple|3|3>>
    <associate|figure: Identity Axiom|<tuple|4|3>>
    <associate|figure: Universal Arrow Is Functorial|<tuple|2|2>>
    <associate|figure: Universality|<tuple|1|2>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|section: Universal arrows furnish natural
    structure|<tuple|1.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>|| This
      <locus|<id|%A66B028-51C4350>|<link|hyperlink|<id|%A66B028-51C4350>|<url|https://q.uiver.app/#q=WzAsNSxbMSwwLCJGKFgpIl0sWzEsMiwiRihXKSJdLFswLDIsIlciXSxbMCwwLCJYIl0sWzMsMiwiWSJdLFswLDEsIkYoXFx6ZXRhKSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDIsIlxcZXhpc3RzICEgXFx6ZXRhIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsNCwiZV9ZIiwxXSxbMCw0LCJcXGZvcmFsbCBmIiwxXV0=>>|figure>
      illustrates a universal arrow from <with|mode|<quote|math>|F> to
      <with|mode|<quote|math>|Y>. For each
      <with|mode|<quote|math>|X\<in\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>>
      and each <with|mode|<quote|math>|f:F<around*|(|X|)>\<rightarrow\>Y>,
      there is a unique <with|mode|<quote|math>|\<zeta\>:X\<rightarrow\>W>
      such that <with|mode|<quote|math>|f=e\<circ\>F<around*|(|\<zeta\>|)>>.>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>|| This
      <locus|<id|%A66B028-515E230>|<link|hyperlink|<id|%A66B028-515E230>|<url|https://q.uiver.app/#q=WzAsNixbMSwwLCJGKFdfWCkiXSxbMywwLCJYIl0sWzEsMiwiRihXX1kpIl0sWzAsMiwiV19ZIl0sWzAsMCwiV19YIl0sWzMsMiwiWSJdLFswLDEsImVfWCIsMV0sWzAsMiwiRihmXntcXCN9KSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDUsImVfWSIsMV0sWzEsNSwiZiIsMV0sWzQsMywiXFxleGlzdHMgISBmXntcXCN9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNSwiZiBcXGNpcmMgZV9YIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d>>|figure>
      defines <with|mode|<quote|math>|f<rsup|\<sharp\>>>. For each
      <with|mode|<quote|math>|f:X\<rightarrow\>Y>, we have
      <with|mode|<quote|math>|f\<circ\>e<rsub|X>:F<around*|(|W<rsub|X>|)>\<rightarrow\>Y>.
      Since <with|mode|<quote|math>|<around*|(|W<rsub|Y>,e<rsub|Y>|)>> is a
      universal arrow, there is a unique <with|mode|<quote|math>|f<rsup|\<sharp\>>:W<rsub|X>\<rightarrow\>W<rsub|Y>>
      such that the red part commutes, which implies that the whole diagram
      commutes.>|<pageref|auto-8>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>|| This
      <locus|<id|%A66B028-4D1A490>|<link|hyperlink|<id|%A66B028-4D1A490>|<url|https://q.uiver.app/#q=WzAsNixbMSwwLCJGKFdfWCkiXSxbMywwLCJYIl0sWzEsMiwiRihXX1gpIl0sWzAsMiwiV19YIl0sWzAsMCwiV19YIl0sWzMsMiwiWCJdLFswLDEsImVfWCIsMV0sWzAsMiwiRigxX3tXX1h9KSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDUsImVfWCIsMV0sWzEsNSwiMV9YIiwxXSxbNCwzLCIxX3tXX1h9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNSwiZV9YIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d>>|figure>
      illustrates that composition axiom is satisfied. Composition axiom
      states that <with|mode|<quote|math>|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>=g<rsup|\<sharp\>>\<circ\>f<rsup|\<sharp\>>>.
      First, notice that replacing <with|mode|<quote|math>|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>>
      by <with|mode|<quote|math>|g<rsup|\<sharp\>>\<circ\>f<rsup|\<sharp\>>>
      makes this diagram commutes. Indeed, this is implied by the
      functorality of <with|mode|<quote|math>|F>. Next, because of
      universality, the <with|mode|<quote|math>|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>>
      that makes this diagram commutes is unique. So, we conclude that
      <with|mode|<quote|math>|<around*|(|g\<circ\>f|)><rsup|\<sharp\>>=g<rsup|\<sharp\>>\<circ\>f<rsup|\<sharp\>>>.>|<pageref|auto-9>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>|| This
      <locus|<id|%A66B028-4D19618>|<link|hyperlink|<id|%A66B028-4D19618>|<url|https://q.uiver.app/#q=WzAsNixbMSwwLCJGKFdfWCkiXSxbMywwLCJYIl0sWzEsMiwiRihXX1gpIl0sWzAsMiwiV19YIl0sWzAsMCwiV19YIl0sWzMsMiwiWCJdLFswLDEsImVfWCIsMV0sWzAsMiwiRigxX3tXX1h9KSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDUsImVfWCIsMV0sWzEsNSwiMV9YIiwxXSxbNCwzLCIxX3tXX1h9IiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsNSwiZV9YIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d>>|figure>
      illustrates that identity axiom is satisfied. Identity axiom states
      that <with|mode|<quote|math>|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>=1<rsub|W<rsub|X>>>.
      First, notice that replacing <with|mode|<quote|math>|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>>
      by <with|mode|<quote|math>|1<rsub|W<rsub|X>>> makes this diagram
      commutes. Next, because of universality, the
      <with|mode|<quote|math>|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>> that
      makes this diagram commutes is unique. So, we conclude that
      <with|mode|<quote|math>|<around*|(|1<rsub|X>|)><rsup|\<sharp\>>=1<rsub|W<rsub|X>>>.>|<pageref|auto-10>>
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Universality,
      Adjunction, and Monad> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Universality
      (TODO)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Hom-functor can be
      generalized for multiple categories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Universal arrow is the
      representation of generalized hom-functor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Universal arrow furnish
      natural structure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Universal arrows are
      functorial <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Adjunction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>