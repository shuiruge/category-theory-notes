<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Representation>

  <section|Preliminary: Small Category (TODO)>

  <subsection|The set of all sets implies Russell's paradox>

  <subsection|Class extends set to avoid Russell's paradox>

  <subsection|Category can be small or locally small>

  <\definition>
    [Small Category] A category <math|<math-ss|C>> is
    <with|font-series|bold|small> if

    <\itemize>
      <item>the collection <math|ob<rsub|<math-ss|C>>> is a set, and

      <item>for each <math|A,B\<in\><math-ss|C>>, the collection
      <math|mor<rsub|<math-ss|C>><around*|(|A,B|)>> is a set.
    </itemize>
  </definition>

  <\definition>
    [Locally Small Category] A category <math|<math-ss|C>> is
    <with|font-series|bold|locally small> if

    <\itemize>
      <item>for each <math|A,B\<in\><math-ss|C>>, the collection
      <math|mor<rsub|<math-ss|C>><around*|(|A,B|)>> is a set.
    </itemize>
  </definition>

  <section|Hom-Functor and Yoneda Functor><label|section: Representable
  Functor and Yoneda Functor><\footnote>
    This section is based on the wonderful blogs (part
    <hlink|I|https://www.math3ma.com/blog/the-yoneda-perspective>,
    <hlink|II|https://www.math3ma.com/blog/the-yoneda-embedding>, and
    <hlink|III|https://www.math3ma.com/blog/the-yoneda-lemma>) posted by
    Tai-Danae Bradley .
  </footnote>

  <subsection|Object equals to its relations with others and with itself>

  Who are you, and what is your self? Your self is encoded in your
  relationships with others as well as with yourself. So is an object in a
  locally small category. In this section, we are to show that an object can
  be defined by the morphisms to (or from) this object in the category.

  <subsection|Morphisms with fixed codomain can be represented by
  hom-functor><label|section: Morphisms with fixed codomain can be
  represented by hom-functor>

  Given the object, there will be many morphisms with this object as codomain
  (or domain). But, for the convenience of discussion, it would be better to
  use one morphism to represent them all. Precisely, consider a locally small
  category <math|<math-ss|C>>. For each <math|X\<in\><math-ss|C>>, we are to
  represent the collection <math|<around*|{|<math-ss|C><around*|(|Y,X|)>\|\<forall\>Y\<in\><math-ss|C>|}>>
  by a map <math|Y\<rightarrow\><math-ss|C><around*|(|Y,X|)>>. Say, a map
  <math|<math-ss|C><around*|(|-,X|)>:Y\<rightarrow\><math-ss|C><around*|(|Y,X|)>>.
  In addition, we hope that this map will preserve the structure of category,
  which is important when we are discussing category theory. That is, we are
  to define how the <math|<math-ss|C><around*|(|-,X|)>> acts on morphisms of
  <math|<math-ss|C>>, so that it can be a functor.

  To figure this out, we have to claim the problem explicitly. We want to
  find a map from a morphism <math|f:Y\<rightarrow\>Z> in <math|<math-ss|C>>
  to a map from the set <math|<math-ss|C><around*|(|Y,X|)>> to the set
  <math|<math-ss|C><around*|(|Z,X|)>>. The later maps a morphism
  <math|\<varphi\>:Y\<rightarrow\>X> to a morphism
  <math|\<psi\>:Z\<rightarrow\>X>. How can it be? By chaining the objects by
  morphisms, we find it impossible. Indeed, <math|\<varphi\>> emits from
  <math|Y>, but there is no arrow that emits to <math|Y>! So, we conclude
  that there is no such functor map from <math|<math-ss|C>>. One possibility
  to solve this problem is consider the dual of <math|<math-ss|C>>, the
  <math|<math-ss|C><rsup|op>>, where in the arrow in <math|f> is flipped to
  <math|f:Z\<rightarrow\>Y>. Now, we find an arrow emits to <math|Y>! And, by
  chaining objects by morphisms, it is easy to find
  <math|\<psi\>=\<varphi\>\<circ\>f>. By denoting
  <math|f<rsup|\<ast\>><around*|(|\<varphi\>|)>\<assign\>\<varphi\>\<circ\>f>,
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
    of <around*|(|-|)><rsup|\<ast\>>|}>=>|<cell|\<varphi\>\<circ\>1<rsub|A>>>|<row|<cell|<around*|{|identity|}>=>|<cell|\<varphi\>>>|<row|<cell|<around*|{|definition
    of identity|}>=>|<cell|1<rsub|<math-ss|C><around*|(|A,X|)>><around*|(|\<varphi\>|)>,>>>>
  </align>

  the identity axiom, <math|<math-ss|C><around*|(|-,X|)><around*|(|1<rsub|A>|)>=1<rsub|<math-ss|C><around*|(|A,X|)>>>
  is satisfied. So, the <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
  <math|>does be a functor, which is called the hom-functor of <math|X>.
  (Recall that <math|<math-ss|C><around*|(|Y,X|)>> is a set for each
  <math|Y\<in\><math-ss|C>> when <math|<math-ss|C>> is locally small.)

  <\definition>
    [Hom-Functor] Let <math|<math-ss|C>> a locally small category. For any
    object <math|X\<in\><math-ss|C>>, functor
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
    <with|font-series|bold|hom-functor> of <math|X> in <math|<math-ss|C>>.
  </definition>

  <big-figure|<image|figures/yoneda.png|0.3par|||>|<label|figure:
  Representable Functor>Indicates <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>.>

  <\remark>
    [Hom-] We would better to use \Pmor\Q, which means \Pmorphic\Q, instead
    of, \Phom\Q, which means \Phomomorphic\Q in the word \Phom-functor\Q.
    But, historically, mathematicians employed homomorphism for indicating
    morphism. So now, the morphic functor, like
    <math|<math-ss|C><around*|(|-,X|)>>, is called homomorphic functor.
  </remark>

  <subsection|Yoneda functor connects an object to its hom-functor>

  Our aim is to study the relation between an object and its hom-functor, say
  between <math|X> and <math|<math-ss|C><around*|(|-,X|)>>. In category
  theory, we shall put the situation in the framework of category. So, to
  discuss this problem, we should first consider the categories they belong
  to. Obviously, <math|X\<in\><math-ss|C>>. And since
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
  the collection of all natural transformations from
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
  <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>. As in the
  construction of hom-functor, this functor is easy to guess, since, to make
  \Ptypes\Q correct, the possibilities to exam are restricted to few!

  This functor was first constructed by the Japanese mathematician Yoneda
  Nobuno. (Interestingly, Yoneda is also a computer scientist, supported the
  computer language <hlink|ALGOL|https://en.wikipedia.org/wiki/ALGOL>.) We
  summarize the definition as follow.

  <\definition>
    [Yoneda functor] Let <math|<math-ss|C>> a locally small category. A
    functor <math|\<cal-Y\>:<math-ss|C>\<rightarrow\><around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
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

    is called the <with|font-series|bold|Yoneda functor> (or
    <with|font-series|bold|Yoneda embedding>) of <math|<math-ss|C>>.
  </definition>

  As discussed in sections <reference|section: Surjective functor may not be
  full> and <reference|section: Injective functor may not be faithful>, a
  functor can be injective and/or surjective on objects, and be full and/or
  faithful. Next, we check these properties for Yoneda functor.

  <subsection|On objects, Yoneda functor is injective but not surjective>

  Yoneda functor is injective on objects. That is, if
  <math|<math-ss|C><around*|(|-,X|)>=<math-ss|C><around*|(|-,Y|)>>, then
  <math|X=Y>. Also, Yoneda functor is not surjective on objects. That is, not
  all functors from <math|<math-ss|C><rsup|op>> to <math|<math-ss|Set>> can
  be represented as <math|<math-ss|C><around*|(|-,X|)>> for some
  <math|X\<in\><math-ss|C>>. For instance, the functor that maps every object
  in <math|<math-ss|C><rsup|op>> to empty set and every morphism to identity
  is not representable. Indeed, for any <math|X\<in\><math-ss|C>>, there is
  at least one element in <math|<math-ss|C><around*|(|X,X|)>>, that is the
  identity <math|1<rsub|X>>, thus cannot be empty. We will discuss the
  non-surjection further in section <reference|section: Universal Element>.

  <subsection|Yoneda functor is fully faithful><label|section: Yoneda functor
  is fully faithful>

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

  We conclude the analysis in this section as follow.<\footnote>
    For a locally small category <math|<math-ss|C>>, functor from
    <math|<math-ss|C><rsup|op>> to <math|<math-ss|Set>> is almost everywhere
    so that it deserves a name, presheaf.

    <\definition>
      [Presheaf] Let <math|<math-ss|C>> a locally small category. Functor
      from <math|<math-ss|C><rsup|op>> to <math|<math-ss|Set>> is called a
      <with|font-series|bold|presheaf> on <math|<math-ss|C>>.
    </definition>

    So, the category <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
    is also called the <with|font-series|bold|category of presheaves> on
    <math|<math-ss|C>>. With presheaf defined, we generalize our lemma as
    follow.

    <\lemma>
      [Yoneda Lemma]<label|lemma: Yoneda Lemma> Let <math|<math-ss|C>> a
      locally small category and <math|F> a presheaf on <math|<math-ss|C>>.
      We have, for each <math|X\<in\><math-ss|C>>,

      <\equation*>
        F<around*|(|X|)>\<cong\><math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,F|)>.
      </equation*>
    </lemma>

    This lemma is called <with|font-series|bold|Yoneda lemma>. In the case
    <math|F=<math-ss|C><around*|(|-,Y|)>>, we go back to our lemma.

    The trick for proving Yoneda lemma is the same as that for proving our
    lemma. For this reason, we left the proof of Yoneda lemma to reader.
  </footnote>

  <\lemma>
    Let <math|<math-ss|C>> a locally small category. We have, for each
    <math|X,Y\<in\><math-ss|C>>,

    <\equation*>
      <math-ss|C><around*|(|X,Y|)>\<cong\><math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>.
    </equation*>
  </lemma>

  <\theorem>
    Yoneda functor is fully faithful.
  </theorem>

  This is an extraordinary conclusion. Notice that in the course of searching
  for a functor that connects an object to its hom-functor, to make \Ptypes\Q
  correct, such a functor is one or none. We should not expect that the
  unique functor that can be constructed has any wonderful property on its
  own. But it has: being both full and faithful!

  <subsection|All is arrow>

  Now, we come to the end of section <reference|section: Representable
  Functor and Yoneda Functor>. In category theory, all is arrow. This tenet
  indicates that an object might be precisely represented by arrows only.
  This should be true, otherwise the tenet would be wrong. With this vaguely
  destination, we stepped on the journey, constructing the essential concepts
  including hom-functor and Yoneda functor. In the end, we arrived at the
  destination by proving that Yoneda functor is injective (on objects) and
  fully faithful. So, indeed, all is arrow, including object.

  <section|Universal Element><label|section: Universal Element>

  <subsection|Functor is representable if there exists universal
  element><label|section: Functor is representable if there exists universal
  element>

  By section <reference|section: Representable Functor and Yoneda Functor>,
  we know that there is a fully faithful functor (Yoneda functor) from
  <math|<math-ss|C>> to <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
  which sends an object <math|X> to its hom-functor
  <math|<math-ss|C><around*|(|-,X|)>>, and that Yoneda functor is not
  surjective on objects, that is, not all functor are representable. It is
  natural to wonder the inverse problem: what is the condition for a functor
  <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> to be
  representable? Explicitly, is there an object
  <math|<wide|F|^>\<in\><math-ss|C>> such that <math|F> is the hom-functor of
  <math|<wide|F|^>>?

  Again, we should claim the problem in the framework of category theory.
  Notice <math|F> is a functor, so is the
  <math|<math-ss|C><around*|(|-,<wide|F|^>|)>>, then the connection between
  them should be a natural transformation. So, the problem should be claimed
  as what is the condition for the existence of
  <math|<wide|F|^>\<in\><math-ss|C>> such that there is a natural isomorphism
  <math|\<psi\>:<math-ss|C><around*|(|-,<wide|F|^>|)>\<rightarrow\>F>. In
  this situation, we say that the presheaf (functor of \Ptype\Q
  <math|<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>) <math|F> is
  <with|font-series|bold|representable> and is
  <with|font-series|bold|represented> by the object <math|<wide|F|^>>, which
  is also called the <with|font-series|bold|representation> of <math|F>.

  So, suppose that there exists <math|<wide|F|^>\<in\><math-ss|C>> and
  natural isomorphism <math|\<psi\>:<math-ss|C><around*|(|-,<wide|F|^>|)>\<rightarrow\>F>,
  then figure <reference|figure: Universal Element> commutes. Interestingly,
  figure <reference|figure: Universal Element> also indicates that, instead
  of defining the <math|e> by <math|\<psi\><rsub|F>> as
  <math|e\<assign\>\<psi\><rsub|F><around*|(|1<rsub|<wide|F|^>>|)>>,<\footnote>
    We employed the notation <math|e> since it relates to identity
    <math|1<rsub|<wide|F|^>>>. Recall that <math|e> is employed for identity
    in group theory.
  </footnote> you can conversely define the natural transformation
  <math|\<psi\>> by <math|e>! Indeed, its component
  <math|\<psi\><rsub|X>:<math-ss|C><around*|(|X,<wide|F|^>|)>\<rightarrow\>F<around*|(|X|)>>
  can be defined as <math|\<psi\><rsub|X>\<assign\>F<around*|(|-|)><around*|(|e|)>>.
  The naturality of <math|\<psi\>> is an immediate result of the
  functoriality of <math|F>, as figure <reference|figure: Naturality of psi>
  indicates. And that <math|\<psi\><rsub|X>> is isomorphic demands that
  <math|F<around*|(|-|)><around*|(|e|)>> should be isomorphic.

  <big-figure|<image|figures/yoneda-3.png|0.75par|||>|<label|figure:
  Universal Element> Indicates how the <math|e> is defined by
  <math|\<psi\><rsub|F>>, or conversely how the <math|\<psi\><rsub|X>> is
  defined by <math|e>.>

  <big-figure|<image|figures/yoneda-4.png|0.75par|||>|<label|figure:
  Naturality of psi> This <hlink|figure|https://q.uiver.app/#q=WzAsMTEsWzAsMCwiWSJdLFsyLDAsIkMoWSxcXGhhdHtGfSkiXSxbMywxLCJcXHpldGEiXSxbMywyLCJcXHpldGEgXFxjaXJjIGYiXSxbNSwxLCJGKFxcemV0YSkoZSkiXSxbNSwyLCJGKGYpIFxcY2lyYyBGKFxcemV0YSkoZSkiXSxbNCwyLCJGKFxcemV0YSBcXGNpcmMgZikoZSkgIl0sWzYsMCwiRihZKSJdLFsyLDMsIkMoWixcXGhhdHtGfSkiXSxbMCwzLCJaIl0sWzYsMywiRihaKSJdLFsyLDMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMiw0LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzQsNSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFszLDYsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMSw3LCJGKC0pKGUpIiwxXSxbMSw4LCJmXioiLDFdLFs5LDAsImYiLDFdLFs3LDEwLCJGKGYpIiwxXSxbOCwxMCwiRigtKShlKSIsMV1d>
  proves that the naturality of <math|\<psi\>> is an immediate result of the
  functoriality of <math|F>. It should be noticed that the domain of <math|F>
  is the dual category of <math|<math-ss|C>>, so it should be
  <math|F<around*|(|f\<circ\>g|)>=F<around*|(|g|)>\<circ\>F<around*|(|f|)>>.>

  The previous discussion can be summarized as follow.

  <\definition>
    <label|definition: Universal Element>[Universal Element] Given a functor
    <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>, an element
    <math|e\<in\>F<around*|(|<wide|F|^>|)>>, for some
    <math|<wide|F|^>\<in\><math-ss|C>>, is a <with|font-series|bold|universal
    element> of <math|F> if <math|F<around*|(|-|)><around*|(|e|)>:<math-ss|C><around*|(|X,<wide|F|^>|)>\<rightarrow\>F<around*|(|X|)>>
    is isomorphic for all <math|X\<in\><math-ss|C>>.
  </definition>

  <\remark>
    The <math|e> in the expression <math|\<psi\><rsub|X>=F<around*|(|-|)><around*|(|e|)>>
    holds for all <math|X\<in\><math-ss|C>>. For this reason, it is called a
    <with|font-shape|italic|universal> element, reminding that <math|e> is an
    element of <math|F<around*|(|<wide|F|^>|)>> which is a set.
  </remark>

  <\theorem>
    <label|theorem: Universal Element>[Universal Element] A functor
    <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> is representable
    if and only if there exists a universal element of <math|F>. And if
    <math|e> is a universal element of <math|F>, then
    <math|F<around*|(|-|)><around*|(|e|)>:<math-ss|C><around*|(|-,<wide|F|^>|)>\<rightarrow\>F>
    defines a natural isomorphism.
  </theorem>

  <subsection|Representation is unique up to isomorphism><label|section:
  Representation is unique>

  Yoneda functor is fully faithful. By lemma <reference|lemma: Fully Faithful
  Functor>, fully faithful functor preserves isomorphisms. Explicitly, if two
  hom-functors <math|<math-ss|C><around*|(|-,X|)>\<cong\><math-ss|C><around*|(|-,Y|)>>,
  then we have <math|X\<cong\>Y>, and vice versa. So, if an object
  <math|<wide|F|^>\<in\><math-ss|C>> represents a functor
  <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>, then this object
  is unique up to isomorphism. Otherwise, if both <math|<wide|F|^>> and
  <math|<wide|F|^><rprime|'>> represent <math|F>, we should have
  <math|<math-ss|C><around*|(|-,<wide|F|^>|)>\<cong\>F\<cong\><math-ss|C><around*|(|-,<wide|F|^><rprime|'>|)>>,
  then <math|<wide|F|^>\<cong\><wide|F|^><rprime|'>>. Thus, we have the
  following theorem.

  <\theorem>
    If a presheaf <math|F> is represented by both <math|A> and <math|B>, then
    <math|A\<cong\>B>.
  </theorem>

  It is in this sense that we say the object <math|<wide|F|^>> is
  <with|font-shape|italic|the> representation of the presheaf <math|F>.

  <section|Summary>

  <subsection|Embedding in the framework of category theory is the right way
  to extend category theory>

  The Yoneda functor was given out by embedding the object and its
  hom-functor in the framework of category theory. The same goes for diagram
  and cone. So, in category theory, considering a concept in the framework of
  category is the right way to extend category theory.

  <subsection|\PTypes\Q help to restrict the possibility of construction>

  In programming languages, especially for the strong type languages, types
  are important. For instance, a function <math|f:A\<rightarrow\>B> has types
  <math|A> and <math|B>. The same goes for category theory.

  While constructing the hom-functor and Yoneda functor, we find that
  \Ptypes\Q are extremely helpful for restricting the possibility of
  construction, almost make it unique. So, when construct something in
  category theory, types should be considered at the first place.

  <subsection|\PTypes\Q help check the correctness of derivation>

  As in the case of static programming language, \Ptypes\Q provides a direct
  way of checking the correctness of the final result after a long long
  derivation. It is simple but very efficient for finding errors. And it is
  free of charge in category theory.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3|3>>
    <associate|auto-11|<tuple|2|3>>
    <associate|auto-12|<tuple|2.4|4>>
    <associate|auto-13|<tuple|2.5|4>>
    <associate|auto-14|<tuple|3|4>>
    <associate|auto-15|<tuple|2.6|5>>
    <associate|auto-16|<tuple|3|5>>
    <associate|auto-17|<tuple|3.1|5>>
    <associate|auto-18|<tuple|4|6>>
    <associate|auto-19|<tuple|5|6>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|3.2|7>>
    <associate|auto-21|<tuple|4|7>>
    <associate|auto-22|<tuple|4.1|7>>
    <associate|auto-23|<tuple|4.2|7>>
    <associate|auto-24|<tuple|4.3|7>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-5|<tuple|1.3|1>>
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-7|<tuple|2.1|1>>
    <associate|auto-8|<tuple|2.2|1>>
    <associate|auto-9|<tuple|1|2>>
    <associate|definition: Universal Element|<tuple|11|6>>
    <associate|figure: Naturality of psi|<tuple|5|6>>
    <associate|figure: Representable Functor|<tuple|1|2>>
    <associate|figure: The f_* is Natural Transformation|<tuple|2|3>>
    <associate|figure: Universal Element|<tuple|4|6>>
    <associate|figure: Yoneda functor is full|<tuple|3|4>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|5>>
    <associate|footnote-3|<tuple|3|6>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|8|5>>
    <associate|footnr-3|<tuple|3|6>>
    <associate|lemma: Yoneda Lemma|<tuple|8|5>>
    <associate|section: Functor is representable if there exists universal
    element|<tuple|3.1|5>>
    <associate|section: Morphisms with fixed codomain can be represented by
    hom-functor|<tuple|2.2|1>>
    <associate|section: Representable Functor and Yoneda Functor|<tuple|2|1>>
    <associate|section: Representation is unique|<tuple|3.2|7>>
    <associate|section: Universal Element|<tuple|3|5>>
    <associate|section: Yoneda functor is fully faithful|<tuple|2.5|4>>
    <associate|theorem: Universal Element|<tuple|13|6>>
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

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>|| Indicates how the
      <with|mode|<quote|math>|e> is defined by
      <with|mode|<quote|math>|\<psi\><rsub|F>>, or conversely how the
      <with|mode|<quote|math>|\<psi\><rsub|X>> is defined by
      <with|mode|<quote|math>|e>.>|<pageref|auto-18>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>|| This
      <locus|<id|%AF3D188-54ACAA0>|<link|hyperlink|<id|%AF3D188-54ACAA0>|<url|https://q.uiver.app/#q=WzAsMTEsWzAsMCwiWSJdLFsyLDAsIkMoWSxcXGhhdHtGfSkiXSxbMywxLCJcXHpldGEiXSxbMywyLCJcXHpldGEgXFxjaXJjIGYiXSxbNSwxLCJGKFxcemV0YSkoZSkiXSxbNSwyLCJGKGYpIFxcY2lyYyBGKFxcemV0YSkoZSkiXSxbNCwyLCJGKFxcemV0YSBcXGNpcmMgZikoZSkgIl0sWzYsMCwiRihZKSJdLFsyLDMsIkMoWixcXGhhdHtGfSkiXSxbMCwzLCJaIl0sWzYsMywiRihaKSJdLFsyLDMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMiw0LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzQsNSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFszLDYsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMSw3LCJGKC0pKGUpIiwxXSxbMSw4LCJmXioiLDFdLFs5LDAsImYiLDFdLFs3LDEwLCJGKGYpIiwxXSxbOCwxMCwiRigtKShlKSIsMV1d>>|figure>
      proves that the naturality of <with|mode|<quote|math>|\<psi\>> is an
      immediate result of the functoriality of <with|mode|<quote|math>|F>. It
      should be noticed that the domain of <with|mode|<quote|math>|F> is the
      dual category of <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>>,
      so it should be <with|mode|<quote|math>|F<around*|(|f\<circ\>g|)>=F<around*|(|g|)>\<circ\>F<around*|(|f|)>>.>|<pageref|auto-19>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Hom-Functor
      and Yoneda Functor> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Object equals to its
      relations with others and with itself
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Morphisms with fixed
      codomain can be represented by hom-functor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Yoneda functor connects an
      object to its hom-functor <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Universal
      Element> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Functor is representable if
      there exists universal element <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Representation is unique up
      to isomorphism <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Summary>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Embedding in the framework
      of category theory is the right way to extend category theory
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>\PTypes\Q help to restrict
      the possibility of construction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>\PTypes\Q help check the
      correctness of derivation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>
    </associate>
  </collection>
</auxiliary>