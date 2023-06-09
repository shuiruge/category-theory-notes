<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Representation>

  <section|Preliminary: Small Category (TODO)>

  <subsection|The set of all sets implies Russell's paradox>

  <subsection|Class extends set to avoid Russell's paradox>

  <subsection|Category can be small or locally small>

  <\definition>
    [Small Category] A category <math|<math-ss|C>> is small if

    <\itemize>
      <item>the collection <math|ob<rsub|<math-ss|C>>> is a set, and

      <item>for each <math|A,B\<in\><math-ss|C>>, the collection
      <math|mor<rsub|<math-ss|C>><around*|(|A,B|)>> is a set.
    </itemize>
  </definition>

  <section|Representable Functor and Yoneda Functor><label|section:
  Representable Functor and Yoneda Functor><\footnote>
    This section is based on the wonderful blogs (part
    <hlink|I|https://www.math3ma.com/blog/the-yoneda-perspective>,
    <hlink|II|https://www.math3ma.com/blog/the-yoneda-embedding>, and
    <hlink|III|https://www.math3ma.com/blog/the-yoneda-lemma>) posted by
    Tai-Danae Bradley .
  </footnote>

  <subsection|Object equals to its relations with others and with itself>

  Who are you, and what is your self? Your self is encoded in your
  relationships with others as well as with yourself. So is an object in a
  small category. In this section, we are to show that an object can be
  defined by the morphisms to (or from) this object in the category.

  <subsection|Morphisms with fixed codomain can be represented by a functor>

  Given the object, there will be many morphisms with this object as codomain
  (or domain). But, for the convenience of discussion, it would be better to
  use one morphism to represent them all. Precisely, consider a small
  category. For each <math|X\<in\><math-ss|C>>, we are to represent the set
  <math|<around*|{|<math-ss|C><around*|(|Y,X|)>\|\<forall\>Y\<in\><math-ss|C>|}>>
  by a map <math|Y\<rightarrow\><math-ss|C><around*|(|Y,X|)>>. Say, a map
  <math|<math-ss|C><around*|(|-,X|)>:Y\<rightarrow\><math-ss|C><around*|(|Y,X|)>>.
  In addition, we hope that this map will preserve the structure of category,
  which is important when we are discussing category theory. That is, we are
  to define how the <math|<math-ss|C><around*|(|-,X|)>> acts on morphisms of
  <math|<math-ss|C>>, so that it can be a functor.

  To figure this out, we have to claim the problem explicitly. We want to
  find a map from a morphism <math|f:Y\<rightarrow\>Z> in <math|<math-ss|C>>
  to a map from the set <math|<math-ss|C><around*|(|Y,X|)>> to the set
  <math|<math-ss|C><around*|(|Z,X|)>>. The later maps a function
  <math|\<varphi\>:Y\<rightarrow\>X> to a function
  <math|\<psi\>:Z\<rightarrow\>X>. How can it be? By chaining the objects, we
  find it impossible. Indeed, <math|\<varphi\>> emits from <math|Y>, but
  there is no arrow that emits to <math|Y>! So, we conclude that there is no
  such functor map from <math|<math-ss|C>>. One possibility to solve this
  problem is consider the dual of <math|<math-ss|C>>, the
  <math|<math-ss|C><rsup|op>>, where in the arrow in <math|f> is flipped to
  <math|f:Z\<rightarrow\>Y>. Now, we find an arrow emits to <math|Y>! And, by
  chaining objects, it is easy to find <math|\<psi\>=\<varphi\>\<circ\>f>. By
  denoting <math|f<rsup|\<ast\>><around*|(|\<varphi\>|)>\<assign\>\<varphi\>\<circ\>f>,
  we have <math|\<psi\>=f<rsup|\<ast\>><around*|(|\<varphi\>|)>>. So, we
  guess that, for each morphism <math|f:Z\<rightarrow\>Y> in
  <math|<math-ss|C>>, <math|<math-ss|C><around*|(|-,X|)><around*|(|f|)>\<assign\>f<rsup|\<ast\>>>.

  <\remark>
    In the course of this reasoning, we find that making an educated guess in
    category theory is quite easy, since with the restriction of \Ptypes\Q
    (in programming language, a function <math|f:A\<rightarrow\>B> has types
    <math|A> and <math|B>), only a few possibilities are left to exam. So, we
    can quick reach the destination, no matter whether the ending is positive
    (constructed what we want) or not (found it impossible to construct). The
    types is extremely helpful in computer programming, so is it in category
    theory!
  </remark>

  Next is to check if <math|<math-ss|C><around*|(|-,X|)>> constructed as such
  is a functor. We need to check the composition and identity axioms of
  functor. Indeed, for each <math|C<above|\<rightarrow\>|g>B<above|\<rightarrow\>|f>A>
  in <math|<math-ss|C>> and each <math|\<varphi\>\<in\><math-ss|C><around*|(|A,X|)>>,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<math-ss|C><around*|(|-,X|)><around*|(|f\<circ\>g|)><around*|(|\<varphi\>|)>>>|<row|<cell|<around*|{|definition
    of <math-ss|C><around*|(|-,X|)>|}>=>|<cell|<around*|(|f\<circ\>g|)><rsup|\<ast\>><around*|(|\<varphi\>|)>>>|<row|<cell|<around*|{|definition
    of-<rsup|\<ast\>>|}>=>|<cell|\<varphi\>\<circ\><around*|(|f\<circ\>g|)>>>|<row|<cell|<around*|{|associativity|}>=>|<cell|<around*|(|\<varphi\>\<circ\>f|)>\<circ\>g>>|<row|<cell|<around*|{|definition
    of-<rsup|\<ast\>>|}>=>|<cell|f<rsup|\<ast\>><around*|(|\<varphi\>|)>\<circ\>g>>|<row|<cell|=>|<cell|g<rsup|\<ast\>><around*|(|f<rsup|\<ast\>><around*|(|\<varphi\>|)>|)>>>|<row|<cell|<around*|{|rewrite|}>=>|<cell|<around*|(|g<rsup|\<ast\>>\<circ\>f<rsup|\<ast\>>|)><around*|(|\<varphi\>|)>>>|<row|<cell|<around*|{|definition
    of <math-ss|C><around*|(|-,X|)>|}>=>|<cell|<around*|[|<math-ss|C><around*|(|-,X|)><around*|(|g|)>\<circ\><math-ss|C><around*|(|-,X|)><around*|(|f|)>|]><around*|(|\<varphi\>|)>>>>>
  </align>

  so the composition axiom, <math|<math-ss|C><around*|(|-,X|)><around*|(|f\<circ\>g|)>=<math-ss|C><around*|(|-,X|)><around*|(|g|)>\<circ\><math-ss|C><around*|(|-,X|)><around*|(|f|)>>,
  is satisfied. (Recall that the domain of
  <math|<math-ss|C><around*|(|-,X|)>> is the dual category of
  <math|<math-ss|C>>. So, as figure <reference|figure: Representable Functor>
  indicates, applying <math|<math-ss|C><around*|(|-,X|)>> flips the direction
  of morphism, thus the direction of morphic composition.) And since

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<math-ss|C><around*|(|-,X|)><around*|(|1<rsub|A>|)><around*|(|\<varphi\>|)>>>|<row|<cell|<around*|{|definition
    of <math-ss|C><around*|(|-,X|)>|}>=>|<cell|<around*|(|1<rsub|A>|)><rsup|\<ast\>><around*|(|\<varphi\>|)>>>|<row|<cell|<around*|{|definition
    of-<rsup|\<ast\>>|}>=>|<cell|\<varphi\>\<circ\>1<rsub|A>>>|<row|<cell|<around*|{|identity|}>=>|<cell|\<varphi\>>>|<row|<cell|<around*|{|definition
    of identity|}>=>|<cell|1<rsub|<math-ss|C><around*|(|A,X|)>><around*|(|\<varphi\>|)>,>>>>
  </align>

  the identity axiom, <math|<math-ss|C><around*|(|-,X|)><around*|(|1<rsub|A>|)>=1<rsub|<math-ss|C><around*|(|A,X|)>>>
  is satisfied. So, the <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
  <math|>does be a functor, which is called the representable functor of
  <math|X>. (Recall that <math|<math-ss|C><around*|(|Y,X|)>> is a set for
  each <math|Y\<in\><math-ss|C>> when <math|<math-ss|C>> is small.)

  <\definition>
    [Representable Functor] Given a small category <math|<math-ss|C>>. For
    any object <math|X\<in\><math-ss|C>>, functor
    <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
    is defined by

    <\itemize>
      <item>for each <math|Y\<in\><math-ss|C>>,
      <math|<math-ss|C><around*|(|-,X|)><around*|(|Y|)>\<assign\><math-ss|C><around*|(|Y,X|)>>,
      and

      <item>for each <math|Y,Z\<in\><math-ss|C>> and each
      <math|f:Z\<rightarrow\>Y>, <math|<math-ss|C><around*|(|-,X|)><around*|(|f|)>\<assign\>f<rsup|\<ast\>>>,
      where <math|f<rsup|\<ast\>><around*|(|\<varphi\>|)>\<assign\>\<varphi\>\<circ\>f>.
    </itemize>

    This <math|<math-ss|C><around*|(|-,X|)>> is called the
    <with|font-series|bold|representable functor> of <math|X> in
    <math|<math-ss|C>>.
  </definition>

  <big-figure|<image|./figures/yoneda.png|150pt|130pt||>|<label|figure:
  Representable Functor>Indicates <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>.>

  <subsection|Yoneda functor connects an object to its representable functor>

  Our aim is to study the relation between an object and its representable
  functor, say between <math|X> and <math|<math-ss|C><around*|(|-,X|)>>. In
  category theory, we shall put the situation in the framework of category.
  So, to discuss this problem, we should first consider the categories they
  belong to. Obviously, <math|X\<in\><math-ss|C>>. And since
  <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>,
  we have <math|<math-ss|C><around*|(|-,X|)>\<in\><around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>,
  the category of functors from <math|<math-ss|C><rsup|op>> to
  <math|<math-ss|Set>>.

  With this preparation, we consider the map from <math|<math-ss|C>> to
  <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>, which preserves
  the structure of category. This map, thus, should be functorial. On
  objects, as we expected, the functor should send <math|X> to
  <math|<math-ss|C><around*|(|-,X|)>>. The question is how the functor maps
  on morphism. So, the problem reduces to how to construct the map from
  <math|<math-ss|C><around*|(|X,Y|)>> to <math|<math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>,
  the set of all natural transformations from
  <math|<math-ss|C><around*|(|-,X|)>> to <math|<math-ss|C><around*|(|-,Y|)>>.
  That is, for each <math|f:X\<rightarrow\>Y>, what is the corresponding
  natural transformation <math|\<eta\><around*|(|f|)>:<math-ss|C><around*|(|-,X|)>\<rightarrow\><math-ss|C><around*|(|-,Y|)>>?

  We should consider the component of <math|\<eta\><around*|(|f|)>>, say
  <math|\<eta\><around*|(|f|)><rsub|A>> for any object
  <math|A\<in\><math-ss|C>>. We have <math|\<eta\><around*|(|f|)><rsub|A>:<math-ss|C><around*|(|A,X|)>\<rightarrow\><math-ss|C><around*|(|A,Y|)>>,
  which sends a morphism <math|\<varphi\>:A\<rightarrow\>X> to one of
  <math|A\<rightarrow\>Y>. How can it be? The only possibility that
  <math|\<eta\><around*|(|f|)><rsub|A>> can be constructed is using the
  <math|f:X\<rightarrow\>Y>; and for keeping the \Ptypes\Q correct, it can
  only be <math|f\<circ\>\<varphi\>:A\<rightarrow\>Y>. So, an educated guess
  is <math|\<eta\><around*|(|f|)><rsub|A>=f<rsub|\<ast\>>> for each
  <math|A\<in\><math-ss|C>>, where <math|f<rsub|\<ast\>><around*|(|\<varphi\>|)>\<assign\>f\<circ\>\<varphi\>>.

  If our guess is correct, then <math|\<eta\><around*|(|f|)>> should be a
  natural transformation. Indeed, for each <math|g:B\<rightarrow\>A>, figure
  <reference|figure: The f_* is Natural Transformation> commutes.

  <big-figure|<image|figures/yoneda-1.png|350pt|150pt||>|<label|figure: The
  f_* is Natural Transformation> Indicates that the <math|f<rsub|\<ast\>>> is
  a natural transformation from <math|<math-ss|C><around*|(|-,X|)>> to
  <math|<math-ss|C><around*|(|-,Y|)>>. The inner circle indicates the
  element-wise map.>

  So, we have constructed a functor from <math|<math-ss|C>> to
  <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>. As in the case of
  representable, this functor is easy to guess, since, to make \Ptypes\Q
  correct, the possibilities to exam are restricted to few!

  This functor was first constructed by the Japanese mathematician Yoneda
  Nobuno. (Interestingly, Yoneda is also a computer scientist, supported the
  computer language <hlink|ALGOL|https://en.wikipedia.org/wiki/ALGOL>.) We
  summarize the definition as follow.

  <\definition>
    [Yoneda functor] Given a small category <math|<math-ss|C>>, functor
    <math|\<cal-Y\>:<math-ss|C>\<rightarrow\><around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
    defined by

    <\itemize>
      <item>for each <math|X\<in\><math-ss|C>>,
      <math|\<cal-Y\><around*|(|X|)>\<assign\><math-ss|C><around*|(|-,X|)>>,
      and

      <item>for each <math|X,Y\<in\>C> and each <math|f:X\<rightarrow\>Y>,
      <math|\<cal-Y\><around*|(|f|)>:<math-ss|C><around*|(|-,X|)>\<rightarrow\><math-ss|C><around*|(|-,Y|)>>
      is a natural transformation with component
      <math|\<cal-Y\><around*|(|f|)><rsub|A>\<assign\>f<rsub|\<ast\>>> for
      any <math|A\<in\><math-ss|C>>, where
      <math|f<rsub|*\<ast\>><around*|(|\<varphi\>|)>\<assign\>f\<circ\>\<varphi\>>
    </itemize>

    is called the <with|font-series|bold|Yoneda functor> of
    <math|<math-ss|C>>.
  </definition>

  As discussed in sections TODO, a functor can be injective and/or surjective
  on objects, and be full and/or faithful. Next, we check these properties
  for Yoneda functor.

  <subsection|On objects, Yoneda functor is injective but not surjective>

  Yoneda functor is injective on objects. That is, if
  <math|<math-ss|C><around*|(|-,X|)>=<math-ss|C><around*|(|-,Y|)>>, then
  <math|X=Y>. Also, Yoneda functor is not surjective on objects. That is, not
  all functors from <math|<math-ss|C><rsup|op>> to <math|<math-ss|Set>> are
  representable. For instance, the functor that maps every object in
  <math|<math-ss|C><rsup|op>> to empty set and every morphism to identity is
  not representable. The codomain is very specific, while there is no
  specific object in <math|<math-ss|C><rsup|op>> for which the functor is
  representable.

  <subsection|Yoneda functor is fully faithful>

  Now, we come to the interesting part. Is Yoneda functor full or faithful?
  That is to ask, for each <math|X,Y\<in\><math-ss|C>>, is the map from
  <math|<math-ss|C><around*|(|X,Y|)>> to <math|<math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>
  surjective or injective?

  For surjection, we mean, for each natural transformation
  <math|\<eta\>:<math-ss|C><around*|(|-,X|)>\<rightarrow\><math-ss|C><around*|(|-,Y|)>>,
  there should be a morphism <math|f:X\<rightarrow\>Y> such that
  <math|\<eta\>=\<cal-Y\><around*|(|f|)>>. Construct such <math|f> out of
  <math|\<eta\>> is to find a morphism in
  <math|<math-ss|C><around*|(|X,Y|)>>. Notice
  <math|\<eta\><rsub|X>:<math-ss|C><around*|(|X,X|)>\<rightarrow\><math-ss|C><around*|(|X,Y|)>>,
  so it is natural to get a morphism in <math|<math-ss|C><around*|(|X,Y|)>>
  by take <math|\<eta\><rsub|X><around*|(|1<rsub|X>|)>>. So, let
  <math|f\<assign\>\<eta\><rsub|X><around*|(|1<rsub|X>|)>>. Next is to check
  if <math|\<eta\>=\<cal-Y\><around*|(|f|)>>.

  The condition we have is <math|\<eta\>> is a natural transformation, so it
  has a family of commutative diagrams. Take the <math|A> to <math|X> in
  figure <reference|figure: The f_* is Natural Transformation> and
  <math|\<varphi\>> to <math|1<rsub|X>>, we have figure <reference|figure:
  Yoneda functor is full> commutes. This forces
  <math|\<eta\><rsub|B><around*|(|g|)>=f\<circ\>g=f<rsub|\<ast\>><around*|(|g|)>>
  for each <math|B\<in\><math-ss|C>> and each <math|g:B\<rightarrow\>X>. This
  implies <math|\<eta\>=\<cal-Y\><around*|(|f|)>>.

  <big-figure|<image|figures/yoneda-2.png|300pt|150pt||>|<label|figure:
  Yoneda functor is full> The dash arrow indicates what is implied.>

  So, we get the conclusion that the map from
  <math|<math-ss|C><around*|(|X,Y|)>> to <math|<math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>
  is surjective.

  Again, for injection, we mean, for each
  <math|f,f<rprime|'>:X\<rightarrow\>Y> with <math|f\<neq\>f<rprime|'>>, we
  should have <math|\<cal-Y\><around*|(|f|)>\<neq\>\<cal-Y\><around*|(|f<rprime|'>|)>>.
  Indeed, consider <math|1<rsub|X>>, <math|\<cal-Y\><around*|(|f|)><around*|(|1<rsub|X>|)>=f\<circ\>1<rsub|X>=f>
  and <math|\<cal-Y\><around*|(|f<rprime|'>|)><around*|(|1<rsub|X>|)>=f<rprime|'>\<circ\>1<rsub|X>=f<rprime|'>>.
  This implies <math|\<cal-Y\><around*|(|f|)>\<neq\>\<cal-Y\><around*|(|f<rprime|'>|)>>.
  So, we get the conclusion that the map from
  <math|<math-ss|C><around*|(|X,Y|)>> to <math|<math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>
  surjective is injective.

  We conclude the analysis in this section as follow.

  <\lemma>
    Given a small category <math|<math-ss|C>>, for each
    <math|X,Y\<in\><math-ss|C>>, <math|<math-ss|C><around*|(|X,Y|)>\<cong\><math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>.
  </lemma>

  <\theorem>
    Yoneda functor is fully faithful.
  </theorem>

  This is an extraordinary conclusion. Notice that in the course of searching
  for a functor that connects an object to its representable functor, to make
  \Ptypes\Q correct, such a functor is one or none. We should not expect that
  the unique functor that can be constructed has any wonderful property on
  its own. But it has: being both full and faithful!

  <subsection|All is arrow>

  Now, we come to the end of section <reference|section: Representable
  Functor and Yoneda Functor>. In category theory, all is arrow. This tenet
  indicates that an object might be precisely represented by arrows only.
  This should be true, otherwise the tenet would be wrong. With this vaguely
  destination, we stepped on the journey, constructing the essential concepts
  including representable functor and Yoneda functor. In the end, we arrived
  at the destination by proving that Yoneda functor is injective (on objects)
  and fully faithful. So, indeed, all is arrow, including object.

  <section|From Representability to Universality><label|section: From
  Representability to Universality>

  <subsection|Functor is representable if there exists universal element>

  By section <reference|section: Representable Functor and Yoneda Functor>,
  we know that there is a fully faithful functor (Yoneda functor) from
  <math|<math-ss|C>> to <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
  which sends an object <math|X> to its representable functor
  <math|<math-ss|C><around*|(|-,X|)>>, and that Yoneda functor is not
  surjective on objects, that is, not all functor are representable. It is
  natural to wonder the inverse problem: what is the condition for a functor
  <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> to be
  representable? Explicitly, is there an object
  <math|<wide|F|^>\<in\><math-ss|C>> such that <math|F> is the representable
  functor of <math|<wide|F|^>>?

  Again, we should claim the problem in the framework of category theory.
  Notice <math|F> is a functor, so is the
  <math|<math-ss|C><around*|(|-,<wide|F|^>|)>>, then the connection between
  them should be a natural transformation. So, the problem should be claimed
  as what is the condition for the existence of
  <math|<wide|F|^>\<in\><math-ss|C>> such that there is a natural isomorphism
  <math|\<varphi\>:F\<rightarrow\><math-ss|C><around*|(|-,<wide|F|^>|)>>.

  So, suppose that there exists <math|<wide|F|^>\<in\><math-ss|C>> and
  natural isomorphism <math|\<varphi\>:F\<rightarrow\><math-ss|C><around*|(|-,<wide|F|^>|)>>
  with inverse <math|\<psi\>:<math-ss|C><around*|(|-,<wide|F|^>|)>\<rightarrow\>F>.
  So, the figure <reference|figure: Universal Element> commutes. It indicates
  that there exists <math|<wide|F|^>> and
  <math|e\<in\>F<around*|(|<wide|F|^>|)>> such that, for every
  <math|f:X\<rightarrow\><wide|F|^>>, there exists an element in
  <math|F<around*|(|X|)>> that can be represented as
  <math|F<around*|(|f|)><around*|(|e|)>>. Since the <math|\<psi\><rsub|X>> is
  isomorphic, the inverse should also be true: for every element
  <math|x\<in\>F<around*|(|X|)>>, there is a unique
  <math|f:X\<rightarrow\><wide|F|^>> that can represent <math|x> as
  <math|F<around*|(|f|)><around*|(|e|)>>. (We employed the notation <math|e>
  since it relates to identity <math|1<rsub|<wide|F|^>>>. Recall that
  <math|e> is employed for identity in group theory.)

  <big-figure|<image|figures/yoneda-3.png|0.75par|||>|<label|figure:
  Universal Element>>

  <\definition>
    <label|definition: Universal Element>[Universal Element] Given a functor
    <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>, a pair
    <math|><math|<around*|(|<wide|F|^>,e|)>> where
    <math|<wide|F|^>\<in\><math-ss|C>> and
    <math|e\<in\>F<around*|(|<wide|F|^>|)>> is called a
    <with|font-series|bold|universal element> of <math|F> if, for each
    <math|X\<in\><math-ss|C>> and <math|x\<in\>F<around*|(|X|)>>, there is a
    unique morphism <math|f:X\<rightarrow\><wide|F|^>> such that
    <math|x=F<around*|(|f|)><around*|(|e|)>>.
  </definition>

  With the definition of universal element, the previous analysis can be
  summarized as follow.

  <\proposition>
    [Universal Element] A functor <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
    is representable if and only if there exists a universal element of
    <math|F>.
  </proposition>

  <subsection|Representation is Unique>

  Yoneda functor is fully faithful. By lemma <reference|lemma: Fully Faithful
  Functor>, an isomorphism in the codomain category implies an isomorphism in
  the domain category. Explicitly, if two representable functors
  <math|<math-ss|C><around*|(|-,X|)>\<cong\><math-ss|C><around*|(|-,Y|)>>,
  then we have <math|X\<cong\>Y>. So, if an object
  <math|<wide|F|^>\<in\><math-ss|C>> represents a functor
  <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>, then this object
  is unique up to isomorphism. With this, we can say the object
  <math|<wide|F|^>> is <with|font-shape|italic|the>
  <with|font-series|bold|representation> of the functor <math|F>.

  <section|Cone and Limit>

  In this section, we discuss an important application of universal element
  or representation: limit. In this section, we are to show that limit is a
  representation of a functor that generates objects called cones, and that
  the cone generated by the limit is a universal cone.

  Now, the problem turns to be why cones are important. Because many
  important mathematical concepts are turn out to be cones. Remember in
  chapter <reference|chapter: Category, Functor, and Natural Transformation>,
  we have embedded some concepts in the framework category theory, such as
  supremum and infimum, Cartesian product and adjoint union. These concepts,
  once re-written by arrows, looks weired. You may wonder where these weired
  stuffs come from. In fact, they come from cones.

  So, let us introduce the cone.

  <subsection|Diagram is a functor>

  When we were discussing category, functor, and natural transformation, we
  used the metaphor that a category is a collection of diagrams. Well, what
  is a diagram precisely? Naturally, a diagram is a part of a category, say
  <math|<math-ss|C>>. By part, we indicates two aspects: the set of dots
  (objects) in a diagram is a subset of the <math|ob<rsub|<math-ss|C>>>, and
  the set of arrows (morphisms) between dots <math|X> and <math|Y> is a
  subset of the <math|<math-ss|C><around*|(|X,Y|)>>.

  Remind that, in category theory, everything should be described by
  category, functor, or natural transformation. So, how to describe a
  diagram, a part of category, by category, functor, or natural
  transformation?

  Let us consider a simpler case: set theory, where a part simply means a
  finite subset. Such a subset of set <math|S> is written as
  <math|A\<assign\><around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>>, where
  <math|x<rsub|i>\<in\>S>. A set theory corresponds to a discrete category,
  and a function to a functor between discrete categories. (A discrete
  category <math|<math-ss|C>> is that with
  <math|<math-ss|C><around*|(|X,X|)>=<around*|{|1<rsub|X>|}>> and
  <math|<math-ss|C><around*|(|X,Y|)>=\<varnothing\>> for each
  <math|X,Y\<in\><math-ss|C>>.) So, we are to describe <math|A> by function.
  A natural one is <math|f:I\<rightarrow\>S>, where
  <math|I\<assign\><around*|{|1,\<ldots\>,n|}>> as an \Pindexing set\Q, and
  <math|f<around*|(|i|)>\<assign\>x<rsub|i>>.

  Back to category theory, the indexing set analyzes to indexing category
  <math|<math-ss|I>>, and the function <math|f> analyzes to functor
  <math|F:<math-ss|I>\<rightarrow\><math-ss|C>>. Indexing category is a small
  category with both <math|ob<rsub|<math-ss|I>>> and
  <math|<math-ss|I><around*|(|X,Y|)>> for each <math|X,Y\<in\><math-ss|I>>
  are sets. It is used for indexing the objects and morphisms in
  <math|<math-ss|C>>, so as to split out a part of <math|<math-ss|C>>, that
  is, a diagram. We summarize the previous analysis as follow.

  <\definition>
    [Diagram] Given an indexing category <math|<math-ss|I>> and a category
    <math|<math-ss|C>>, a <with|font-series|bold|<math|<math-ss|I>>-shaped
    diagram> in <math|<math-ss|C>> is a functor
    <math|F:<math-ss|I>\<rightarrow\><math-ss|C>>.
  </definition>

  <subsection|Cone irradiates diagram>

  With diagram declared, we come to cone. A light cone generated by a table
  lamp irratiates the table. And a cone irradiates a diagram. The table lamp
  is an object, and the table is a diagram.

  But, how can we describe the relation between an object and a diagram,
  which is a functor? To make this possible, we have to make the most boring
  definition so far: the constant functor.

  <\definition>
    [Constant Functor] Given categories <math|<math-ss|C>> and
    <math|<math-ss|D>>, for each <math|X\<in\><math-ss|D>>, a functor
    <math|Const<rsub|X>:<math-ss|C>\<rightarrow\><math-ss|D>> is the
    <with|font-series|bold|constant functor> of <math|X> if

    <\itemize>
      <item>for each <math|A\<in\><math-ss|C>>,
      <math|Const<rsub|X><around*|(|A|)>=X>, and

      <item>for each <math|f:A\<rightarrow\>B>,
      <math|Const<rsub|X><around*|(|f|)>=1<rsub|X>>.
    </itemize>
  </definition>

  With this trivial definition, we can describe the relation between an
  object, or its constant functor, and a diagram.

  <\definition>
    [Cone] Given an indexing category <math|<math-ss|I>>, a category
    <math|<math-ss|C>>, for each object <math|X\<in\><math-ss|C>> and each
    diagram <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>, a cone from
    <math|X> to <math|D> is a natural transformation
    <math|\<lambda\>:Const<rsub|X>\<rightarrow\>D>.
  </definition>

  <big-figure|<image|figures/cone.png|0.75par|||>|<label|figure: Cone> The
  left hand side indicates the indexing category <math|<math-ss|I>>. And the
  right hand side indicats the cone from <math|X> to <math|D>. The green
  arrows are for functor <math|Const<rsub|X>>, and the red ones for functor
  <math|D>, wherein maps on morphisms are not shown. As usual, identities are
  hidden. Since the <math|\<lambda\>> is a natural transformation, the right
  hand side commutes.>

  <subsection|Cone functor generates cones>

  Notice a cone consists two parts: the summit object, and the diagram. Let
  <math|<math-ss|I>> an indexing category, and <math|<math-ss|C>> a small
  category. Given a summit object <math|X\<in\><math-ss|C>> and a diagram
  <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>, the natural transformation
  <math|\<lambda\>:Const<rsub|X>\<rightarrow\>D> is not unique. There can be
  a plenty of such natural transformations, depending on how many morphisms
  there are between objects in <math|<math-ss|C>>. We can collect these
  natural transformations together as a set, <math|Cone<around*|(|X,D|)>>.

  For the set of morphisms from <math|X> to <math|Y>,
  <math|<math-ss|C><around*|(|X,Y|)>>, we constructed a functor
  <math|<math-ss|C><around*|(|-,Y|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>.
  The same goes for <math|Cone<around*|(|X,D|)>>. We can construct a functor
  <math|Cone<around*|(|-,D|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>.
  Naturally, it maps <math|X\<in\><math-ss|C>> to
  <math|Cone<around*|(|X,D|)>>, but what about the morphism, say
  <math|f:Y\<rightarrow\>X>? Consider a cone
  <math|\<lambda\>\<in\>Cone<around*|(|X,D|)>>, which is a natural
  transformation from <math|Const<rsub|X>:<math-ss|I>\<rightarrow\><math-ss|C>>
  to <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>. A component
  <math|\<lambda\><rsub|A>:X\<rightarrow\>D<around*|(|A|)>>. To construct a
  morphism <math|Y\<rightarrow\>D<around*|(|A|)>> out of
  <math|\<lambda\><rsub|A>> and <math|f>, the only possibility is
  <math|Y<above|\<rightarrow\>|f>X<above|\<rightarrow\>|\<lambda\><rsub|A>>D<around*|(|A|)>>,
  that is <math|\<lambda\><rsub|A>\<circ\>f>.

  <\definition>
    [Cone Functor] Let <math|<math-ss|I>> an indexing category, and
    <math|<math-ss|C>> a small category. For each diagram
    <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>, the cone functor
    <math|Cone<around*|(|-,D|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
    is defined by

    <\itemize>
      <item>for each <math|X\<in\><math-ss|C>>, mapping <math|X> to
      <math|Cone<around*|(|X,D|)>>, the set of all cones from <math|X> to
      <math|D>, and

      <item>for each <math|f:Y\<rightarrow\>X>, mapping <math|f> to function
      <math|f<rsup|\<ast\>>:Cone<around*|(|X,D|)>\<rightarrow\>Cone<around*|(|Y,D|)>>
      defined by <math|f<rsup|\<ast\>><around*|(|\<lambda\><rsub|A>|)>=\<lambda\><rsub|A>\<circ\>f>
      for each component <math|\<lambda\><rsub|A>>. (See also figure
      <reference|figure: Cone Functor>.)
    </itemize>
  </definition>

  <big-figure|<image|figures/cone-1.png|0.5par|||>|<label|figure: Cone
  Functor> Indicates the map on <math|f>. As an instance, the indexing
  category <math|<math-ss|I>> is simply <math|A<above|\<rightarrow\>|g>B>.>

  <subsection|Limit is the representation of cone functor>

  As discussed in section <reference|section: From Representability to
  Universality>, for a small category <math|<math-ss|C>>, a functor like
  <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> may be represented
  by an object in <math|<math-ss|C>>, if universal element exists. Given a
  diagram <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>, A cone functor
  <math|Cone<around*|(|-,D|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
  thus may be represented by an object in <math|<math-ss|C>>, which we call
  the limit of <math|D>, <math|lim D>.

  Let us restate the universal element for cone functor, which is the
  universal cone. We copy the definition <reference|definition: Universal
  Element> to here, with some replacement for cone functor.

  <\definition>
    [Universal Cone] Let <math|<math-ss|I>> an indexing category, and
    <math|<math-ss|C>> a small category. For a diagram
    <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>, a
    <with|font-series|bold|universal cone> is a pair
    <math|><math|<around*|(|lim<rsub|<math-ss|I>>D,e|)>> where <math|lim
    D\<in\><math-ss|C>> and <math|e\<in\>Cone<around*|(|-,lim<rsub|<math-ss|I>>D|)>>
    such that for each <math|X\<in\><math-ss|C>> and
    <math|\<lambda\>\<in\>Cone<around*|(|X,D|)>>, there is a unique morphism
    <math|f:X\<rightarrow\>lim<rsub|<math-ss|I>>D> such that
    <math|\<lambda\>=f<rsup|\<ast\>><around*|(|e|)>>. The
    <math|lim<rsub|<math-ss|I>>D> is called the <with|font-series|bold|limit>
    of <math|D>. (See also figure <reference|figure: Limit>.)
  </definition>

  <big-figure|<image|figures/limit.png|0.5par|||>|<label|figure: Limit>
  Indicates the limit. The dash arrow is for implication. As an instance, the
  indexing category <math|<math-ss|I>> is simply
  <math|A<above|\<rightarrow\>|g>B>.>

  <subsection|Limit is all you need>

  Previously in chapter <reference|chapter: Category, Functor, and Natural
  Transformation>, we have shown some instances that what a concept looks
  like if re-written in arrows, such as supremum and infimum, Cartesian
  product and adjoint union. They are weired at the first sight, making you
  wonder how they are constructed. In fact, limit is the tool that constructs
  them all, without too much effort. In the following sections, we are to
  show how universal cone can be used to construct them explicitly.

  <subsection|Infimum is the limit on <math|<math-ss|Poset>>>

  In definition <reference|definition: Infimum in Category>, we roughly
  showed what infimum would be like in the framework of category theory.
  Here, we make it more precise. Recalling the definition of poset (see
  definition <reference|definition: Poset>), the field <math|\<bbb-R\>> forms
  a poset by preorder <math|\<leqslant\>>. So, it forms a poset category
  <math|<math-ss|Poset>>, with object a real number and morphism
  <math|X\<rightarrow\>Y> if <math|X\<leqslant\>Y>. Consider an indexing
  category <math|<math-ss|I>> of the pattern
  <math|A\<rightarrow\>B\<rightarrow\>\<cdots\>>. A diagram
  <math|D:<math-ss|I>\<rightarrow\><math-ss|Poset>> gives
  <math|D<around*|(|A|)>\<leqslant\>D<around*|(|B|)>\<leqslant\>\<cdots\>>.
  So, <math|lim<rsub|<math-ss|I>>D> has the property that, for each
  <math|X\<leqslant\>D<around*|(|A|)>>, <math|X\<leqslant\>lim<rsub|<math-ss|I>>D\<leqslant\>D<around*|(|A|)>>.
  This means <math|lim<rsub|<math-ss|I>>D> is the infimum of the set
  <math|<around*|{|D<around*|(|A|)>,D<around*|(|B|)>,\<ldots\>|}>> on
  <math|\<bbb-R\>>. So, infimum is a universal cone, or a limit, on poset
  category.

  <subsection|Supremum is the colimit on <math|<math-ss|Poset>>>

  The same goes for its dual, supremum. If we flip the arrows in the
  definitions of limit, we get the dual, colimit . So, directly, we find
  supremum is the colimit on <math|<math-ss|Poset>>.

  <subsection|Cartesian product is the limit on <math|<math-ss|Set>>>

  <subsection|Adjoint union is the colimit on <math|<math-ss|Set>>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3|2>>
    <associate|auto-11|<tuple|2|3>>
    <associate|auto-12|<tuple|2.4|3>>
    <associate|auto-13|<tuple|2.5|4>>
    <associate|auto-14|<tuple|3|4>>
    <associate|auto-15|<tuple|2.6|4>>
    <associate|auto-16|<tuple|3|5>>
    <associate|auto-17|<tuple|3.1|5>>
    <associate|auto-18|<tuple|4|5>>
    <associate|auto-19|<tuple|3.2|5>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|4|6>>
    <associate|auto-21|<tuple|4.1|6>>
    <associate|auto-22|<tuple|4.2|6>>
    <associate|auto-23|<tuple|5|7>>
    <associate|auto-24|<tuple|4.3|7>>
    <associate|auto-25|<tuple|6|7>>
    <associate|auto-26|<tuple|4.4|8>>
    <associate|auto-27|<tuple|7|8>>
    <associate|auto-28|<tuple|4.5|8>>
    <associate|auto-29|<tuple|4.6|?>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-30|<tuple|4.7|?>>
    <associate|auto-31|<tuple|4.8|?>>
    <associate|auto-32|<tuple|4.9|?>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-5|<tuple|1.3|1>>
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-7|<tuple|2.1|1>>
    <associate|auto-8|<tuple|2.2|1>>
    <associate|auto-9|<tuple|1|2>>
    <associate|definition: Infimum in Category|<tuple|14|?>>
    <associate|definition: Universal Element|<tuple|7|5>>
    <associate|figure: Cone|<tuple|5|7>>
    <associate|figure: Cone Functor|<tuple|6|7>>
    <associate|figure: Limit|<tuple|7|8>>
    <associate|figure: Representable Functor|<tuple|1|2>>
    <associate|figure: The f_* is Natural Transformation|<tuple|2|3>>
    <associate|figure: Universal Element|<tuple|4|5>>
    <associate|figure: Yoneda functor is full|<tuple|3|4>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|section: From Representability to Universality|<tuple|3|5>>
    <associate|section: Representable Functor and Yoneda Functor|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Indicates
      <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,X|)>:<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><rsup|op>\<rightarrow\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Set>>>>.>|<pageref|auto-9>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>|| Indicates that the
      <with|mode|<quote|math>|f<rsub|\<ast\>>> is a natural transformation
      from <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,X|)>>
      to <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,Y|)>>.
      The inner circle indicates the element-wise map.>|<pageref|auto-11>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>|| The dash arrow
      indicates what is implied.>|<pageref|auto-14>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||>|<pageref|auto-18>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>|| The left hand side
      indicates the indexing category <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|I>>>>.
      And the right hand side indicats the cone from
      <with|mode|<quote|math>|X> to <with|mode|<quote|math>|D>. The green
      arrows are for functor <with|mode|<quote|math>|Const<rsub|X>>, and the
      red ones for functor <with|mode|<quote|math>|D>, wherein maps on
      morphisms are not shown. As usual, identities are hidden. Since the
      <with|mode|<quote|math>|\<lambda\>> is a natural transformation, the
      right hand side commutes.>|<pageref|auto-23>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>|| Indicates the map
      on <with|mode|<quote|math>|f>. As an instance, the indexing category
      <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|I>>>>
      is simply <with|mode|<quote|math>|A<above|\<rightarrow\>|g>B>.>|<pageref|auto-25>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|7>|| Indicates the
      limit. The dash arrow is for implication. As an instance, the indexing
      category <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|I>>>>
      is simply <with|mode|<quote|math>|A<above|\<rightarrow\>|g>B>.>|<pageref|auto-27>>
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Representation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Preliminary:
      Small Category (TODO)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>The set of all sets implies
      Russell's paradox <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Class extends set to avoid
      Russell's paradox <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Category can be small or
      locally small <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Representable
      Functor and Yoneda Functor> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Object equals to its
      relations with others and with itself
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Morphisms with fixed
      codomain can be represented by a functor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Yoneda functor connects an
      object to its representable functor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>On objects, Yoneda functor
      is injective but not surjective <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Yoneda functor is fully
      faithful <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>All is arrow
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>From
      Representability to Universality> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Functor is representable if
      there exists universal element <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Representation is Unique
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Cone
      and Limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Diagram is a functor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Cone irradiates diagram
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Cone functor generates cones
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Limit is the representation
      of cone functor <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Universal cone is all you
      need <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>
    </associate>
  </collection>
</auxiliary>