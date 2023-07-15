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
  locally small category. In this section, we are to show that an object can
  be defined by the morphisms to (or from) this object in the category.

  <subsection|Morphisms with fixed codomain can be represented by a functor>

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
  <math|>does be a functor, which is called the representable functor of
  <math|X>. (Recall that <math|<math-ss|C><around*|(|Y,X|)>> is a set for
  each <math|Y\<in\><math-ss|C>> when <math|<math-ss|C>> is locally small.)

  <\definition>
    [Representable Functor] Let <math|<math-ss|C>> a locally small category.
    For any object <math|X\<in\><math-ss|C>>, functor
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

  <big-figure|<image|figures/yoneda.png|0.3par|||>|<label|figure:
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
  construction of representable functor, this functor is easy to guess,
  since, to make \Ptypes\Q correct, the possibilities to exam are restricted
  to few!

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

  <section|Universal Element><label|section: From Representability to
  Universality>

  <subsection|Functor is representable if there exists universal
  element><label|section: Functor is representable if there exists universal
  element>

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
  <math|\<psi\>:<math-ss|C><around*|(|-,<wide|F|^>|)>\<rightarrow\>F>, for
  which we say the presheaf (functor of \Ptype\Q
  <math|<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>) <math|F> is
  <with|font-series|bold|representable> and is
  <with|font-series|bold|represented> by the object <math|<wide|F|^>>
  <\footnote>
    <\warning>
      [Ambiguous \PRepresentable\Q] You should carefully distinguish,
      depending on the context, the meaning of \Prepesentable\Q in the words
      \P<math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> is a
      representable functor\Q. On one hand, it may indicate <math|F> can be
      represented by an object <math|<wide|F|^>>, so that
      <math|F\<cong\><math-ss|C><around*|(|-,<wide|F|^>|)>>. On the other
      hand, it may also indicate <math|F> itself is a \Prepresentable
      functor\Q (two words together as a noun), that is,
      <math|F=<math-ss|C><around*|(|-,X|)>> for some
      <math|X\<in\><math-ss|C>>. The problem raises from the confusing name
      \Prepresentable functor\Q: a representable functor is representable,
      while not every functor that is representable is representable functor!
    </warning>
  </footnote>.

  So, suppose that there exists <math|<wide|F|^>\<in\><math-ss|C>> and
  natural isomorphism <math|\<psi\>:<math-ss|C><around*|(|-,<wide|F|^>|)>\<rightarrow\>F>,
  then figure <reference|figure: Universal Element> commutes. It implies how
  the component <math|\<psi\><rsub|X>> acts for any
  <math|X\<in\><math-ss|C>>: <math|\<psi\><rsub|X>> maps an object
  <math|f\<in\><math-ss|C><around*|(|X,<wide|F|^>|)>> to
  <math|F<around*|(|f|)><around*|(|e|)>>. Since <math|\<psi\><rsub|X>> is
  isomorphic, we have, for every object <math|x\<in\>F<around*|(|X|)>>, there
  is a unique <math|f\<in\><math-ss|C><around*|(|X,<wide|F|^>|)>> such that
  <math|x=F<around*|(|f|)><around*|(|e|)>>. (We employed the notation
  <math|e> since it relates to identity <math|1<rsub|<wide|F|^>>>. Recall
  that <math|e> is employed for identity in group theory.)

  <big-figure|<image|figures/yoneda-3.png|0.75par|||>|<label|figure:
  Universal Element> Indicates how the <math|e> in a universal element is
  defined.>

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

  <\theorem>
    <label|theorem: Universal Element>[Universal Element] A functor
    <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> is representable
    if and only if there exists a universal element of <math|F>. And given
    the universal element of <math|F>, <math|<around*|(|<wide|F|^>,e|)>>, the
    natural isomorphism <math|\<psi\>:<math-ss|C><around*|(|-,<wide|F|^>|)>\<rightarrow\>F>
    has component <math|\<psi\><rsub|X><around*|(|f|)>=F<around*|(|f|)><around*|(|e|)>>
    for each <math|X\<in\><math-ss|C>> and each
    <math|f:X\<rightarrow\><wide|F|^>>.
  </theorem>

  <subsection|Representation is unique><label|section: Representation is
  unique>

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

  <section|Adjunction>

  <subsection|Adjoint functors preserve representations of presheaves and
  copresheaves>

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

  <subsection|Unit and counit are universal>

  Recall the condition for being representable, lemma <reference|theorem:
  Universal Element>, that <math|G<around*|(|Y|)>> can represent
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>> if and only if
  <math|G<around*|(|Y|)>>, equipped with <math|\<varepsilon\><rsub|Y>:F\<circ\>G<around*|(|Y|)>\<rightarrow\>Y>,
  is a universal element of <math|<math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>.
  That is, for each <math|X\<in\><math-ss|C>> and each
  <math|f:F<around*|(|X|)>\<rightarrow\>Y>, there exists a unique
  <math|f<rsup|\<sharp\>>:X\<rightarrow\>G<around*|(|Y|)>> such that
  <math|f=F<around*|(|f<rsup|\<sharp\>>|)><rsup|\<ast\>><around*|(|\<varepsilon\><rsub|Y>|)>\<equiv\>\<varepsilon\><rsub|Y>\<circ\>F<around*|(|f<rsup|\<sharp\>>|)>>.
  And the <math|\<varepsilon\><rsub|Y>> can be induced from
  <math|\<varphi\><rsub|-,Y><rsup|-1>:<math-ss|C><around*|(|-,G<around*|(|Y|)>|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|-|)>,Y|)>>
  as <math|\<varepsilon\><rsub|Y>=\<varphi\><rsub|G<around*|(|Y|)>,Y><rsup|-1><around*|(|1<rsub|G<around*|(|Y|)>>|)>>.

  The same, <math|F<around*|(|X|)>> can represent
  <math|<math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)>> if and only if
  <math|F<around*|(|X|)>>, equipped with <math|\<eta\><rsub|X>:X\<rightarrow\>G\<circ\>F<around*|(|X|)>>,
  is a universal element of <math|<math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)>>.
  That is, for each <math|Y\<in\><math-ss|D>>, and each
  <math|g:X\<rightarrow\>G<around*|(|Y|)>>, there exists a unique
  <math|g<rsup|\<sharp\>>:F<around*|(|X|)>\<rightarrow\>Y> such that
  <math|g=G<around*|(|g<rsup|\<sharp\>>|)><rsub|\<ast\>><around*|(|\<eta\><rsub|X>|)>\<equiv\>G<around*|(|g<rsup|\<sharp\>>|)>\<circ\>\<eta\><rsub|X>>.
  And the <math|\<eta\><rsub|X>> can be induced from
  <math|\<varphi\><rsub|X,\<star\>>:<math-ss|D><around*|(|F<around*|(|X|)>,\<star\>|)>\<rightarrow\><math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)>>
  as <math|\<eta\><rsub|X>\<assign\>\<varphi\><rsub|X,F<around*|(|X|)>><around*|(|1<rsub|F<around*|(|X|)>>|)>>.

  <big-figure|<image|figures/adjoint-1.png|0.8par|||>|<label|figure: Adjoint
  and Universal Element> Indicates the universal elements. In both triangles,
  bottoms are fixed and top vertices are arbitrarily chosen.>

  It is natural to wonder the relation between <math|\<eta\><rsub|X>> and
  <math|\<eta\><rsub|X<rprime|'>>> for distinct object
  <math|X,X<rprime|'>\<in\><math-ss|C>>. A tedious but simple derivation
  <\footnote>
    Left to reader. Hint: use figure <reference|figure: Adjoint> with some
    replacements, together with the definition of <math|\<eta\><rsub|X>>;
    simply focus on how the maps act on element.
  </footnote> tells that <math|\<eta\><rsub|X>> is in fact a component of a
  natural transformation <math|\<eta\>:1<rsub|<math-ss|C>>\<rightarrow\>G\<circ\>F>,
  called unit. The same, <math|\<varepsilon\><rsub|Y>> is in fact a component
  of a natural transformation <math|\<varepsilon\>:F\<circ\>G\<rightarrow\>1<rsub|<math-ss|D>>>,
  called counit. So, we find that unit and counit are \Puniversal arrows\Q,
  indicated by the bottom lines in figure <reference|figure: Adjoint and
  Universal Element>. The reason why counit is the \Pduality\Q of unit is
  reflected in figure <reference|figure: Adjoint and Universal Element>: the
  right side can be obtained by flipping the arrows in the left side.
  <\footnote>
    <\question>
      Is this \Pduality\Q really a duality? And if so, in what sense?
    </question>
  </footnote>

  <big-figure|<image|figures/adjoint-2.png|0.8par|||>|Indicates that
  <math|\<eta\>> and <math|\<varepsilon\>> are natural transformations.>

  Also by lemma <reference|theorem: Universal Element>, from
  <math|\<eta\><rsub|X>> we can construct the adjunction <math|\<varphi\>>.
  Indeed, for each <math|f:F<around*|(|X|)>\<rightarrow\>Y>, we have
  <math|\<varphi\><rsub|X,Y><around*|(|f|)>=<math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)><around*|(|f|)><around*|(|\<eta\><rsub|X>|)>>.
  From figure <reference|figure: Adjoint>, we can read out
  <math|<math-ss|C><around*|(|X,G<around*|(|\<star\>|)>|)><around*|(|f|)>=G<around*|(|f|)><rsub|\<ast\>>>
  and by the definition of pushforward <math|g<rsub|\<ast\>><around*|(|h|)>=g\<circ\>h>,
  we arrive at

  <\equation*>
    \<varphi\><rsub|X,Y><around*|(|f|)>=G<around*|(|f|)>\<circ\>\<eta\><rsub|X>.
  </equation*>

  Interestingly, in category theory, we can directly check whether we have
  derived correctly or not by \Ptype checking\Q! By recalling the types
  <math|\<eta\><rsub|X>:X\<rightarrow\>G\<circ\>F<around*|(|X|)>> and
  <math|f:F<around*|(|X|)>\<rightarrow\>Y>, we find
  <math|\<varphi\><rsub|X,Y><around*|(|f|)>:X<above|\<longrightarrow\>|\<eta\><rsub|X>>G\<circ\>F<around*|(|X|)><above|\<longrightarrow\>|G<around*|(|f|)>>G<around*|(|Y|)>>,
  which is the correct \Ptype\Q.

  Now, we find that adjunction <math|\<varphi\>> is uniquely determined by
  the functor <math|G> and unit <math|\<eta\>>. Applying the same analysis to
  counit, we can write down <math|\<varphi\><rsup|-1>> explicitly by the
  functor <math|F> and counit <math|\<varepsilon\>>. This builds up a
  one-to-one relationship between adjunction and unit: once we have an
  adjunction, we get the unit; and once we have a unit, we also gain the
  adjunction.

  In the end, we clear up the previous analysis, summarizing as follow.

  <\definition>
    [Universal Morphism] Let <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> a
    functor. Given <math|W\<in\><math-ss|C>> and <math|X\<in\><math-ss|D>>, a
    morphism <math|u:X\<rightarrow\>F<around*|(|W|)>> in <math|<math-ss|D>>
    is universal if for each <math|V\<in\><math-ss|C>> and each
    <math|f:X\<rightarrow\>F<around*|(|V|)>>, there is a unique
    <math|f<rsup|\<sharp\>>:W\<rightarrow\>V>, such that
    <math|f=F<around*|(|f<rsup|\<sharp\>>|)>\<circ\>u>.
  </definition>

  <big-figure|<image|figures/adjoint-3.png|0.3par|||>|Indicates universal
  morphism.>

  <\definition>
    [Unit & Counit] Let <math|<math-ss|C>> and <math|<math-ss|D>> locally
    small categories. Given functors <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>
    and <math|G:<math-ss|D>\<rightarrow\><math-ss|C>>, a natural
    transformation <math|\<eta\>:1<rsub|<math-ss|C>>\<rightarrow\>G\<circ\>F>
    is a <with|font-series|bold|unit> if each of its component, which is a
    morphism in <math|<math-ss|C>>, is universal. Dually, a natural
    transformation <math|\<varepsilon\>:F\<circ\>G\<rightarrow\>1<rsub|<math-ss|D>>>
    is a <with|font-series|bold|counit> if each of its component is
    co-universal.
  </definition>

  <\theorem>
    [Adjunction & Unit] An adjunction can be uniquely determined by its unit
    (or counit), and vice versa.
  </theorem>

  <subsection|Free and forgetful functors are adjoint>

  A vector space is a set equipped with some extra structure. The same goes
  for a group, a topological space, and so on. So, we can extract the
  underlying set by forgetting the extra structure. That is, a map that takes
  a vector space, and returns the underlying set.

  In the language of category theory, everything starts at categories. The
  category of vector spaces on field <math|\<bbb-R\>>, denoted by
  <math|<math-ss|Vect><rsub|\<bbb-R\>>>, has vector spaces as objects and
  linear transformations as morphisms. In addition, map should be functorial.
  That is, the map that forgets the linear structure should be is a functor
  <math|U:<math-ss|Vect><rsub|\<bbb-R\>>\<rightarrow\><math-ss|Set>>, the
  <with|font-series|bold|forgetful functor>.

  Besides, a vector space can be constructed out of a set without introducing
  extra information. To be explicit, consider a set <math|<around*|{|x,y|}>>
  where the elements are abstract, a vector space on field <math|\<bbb-R\>>
  can be built by <math|\<alpha\>x+\<beta\>y> for each
  <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>>, that is, using the set as bases.
  In addition, linear transformation can be induced by function <math|f> on
  <math|<around*|{|x,y|}>> as <math|L<around*|(|\<alpha\>x+\<beta\>y|)>\<assign\>\<alpha\>f<around*|(|x|)>+\<beta\>f<around*|(|y|)>>.
  So, we have constructed a vector space out of a set freely <\footnote>
    \PFree\Q means free of charge.
  </footnote>! The same goes for free group, discrete topological space, and
  so on.

  Again, in the language of category theory, the free construction should be
  described by a functor <math|F:<math-ss|Set>\<rightarrow\><math-ss|Vect><rsub|\<bbb-R\>>>,
  the <with|font-series|bold|free functor>.

  At the first sight, the forgetting and the free construction have nothing
  to do with each other. In fact, they are deeply connected: the forgetful
  functor and the free functor are adjoint!

  The unit <math|\<eta\><rsub|S>:S\<rightarrow\>U\<circ\>F<around*|(|S|)>>
  maps from, say, <math|S=<around*|{|x,y|}>> to
  <math|U\<circ\>F<around*|(|S|)>=<around*|{|\<alpha\>x+\<beta\>y\|\<alpha\>,\<beta\>\<in\>\<bbb-R\>|}>>,
  which is <math|\<bbb-R\><rsup|2>>. The universality tells that, for each
  vector space <math|V> and each function
  <math|f:S\<rightarrow\>U<around*|(|V|)>>, where <math|U<around*|(|V|)>>
  forgets the linear structure of <math|V>, there is a unique extension of
  <math|f> to a linear transformation <math|f<rsup|\<sharp\>>> that can be
  reduced, by forgetting, to the original <math|f>.

  <subsection|Product-hom adjunction implies currying>

  For any set <math|Y> given, the <with|font-series|bold|product-hom
  adjunction> relates the <with|font-series|bold|product functor>
  <math|-\<times\>Y:<math-ss|Set>\<rightarrow\><math-ss|Set>> that maps a set
  <math|X> to Cartesian product <math|X\<times\>Y>, and the functor
  <math|<math-ss|Set><around*|(|Y,-|)>:<math-ss|Set>\<rightarrow\><math-ss|Set>>
  which is called, for some historical reason, <with|font-series|bold|hom
  functor>. The claim that product functor and hom function are adjoint
  means, for each <math|X,Z\<in\><math-ss|Set>>,

  <\equation*>
    <math-ss|Set><around*|(|X\<times\>Y,Z|)>\<cong\><math-ss|Set><around*|(|X,<math-ss|Set><around*|(|Y,Z|)>|)>.
  </equation*>

  This relation indicates that, (on left hand side) for each function
  <math|f:X\<times\>Y\<rightarrow\>Z>, (on right hand side) there is a unique
  function <math|f<rsup|\<sharp\>>> that takes <math|X> and returns a
  function of <math|Y\<rightarrow\>Z>. In computer science, this is nothing
  but <hlink|currying|https://stackoverflow.com/a/36321>.

  <section|Summary>

  <subsection|Embedding in the framework of category theory is the right way
  to extend category theory>

  The Yoneda functor was given out by embedding the object and its
  representable functor in the framework of category theory. The same goes
  for diagram and cone. So, in category theory, considering a concept in the
  framework of category is the right way to extend category theory.

  <subsection|\PTypes\Q help to restrict the possibility of construction>

  In programming languages, especially for the strong type languages, types
  are important. For instance, a function <math|f:A\<rightarrow\>B> has types
  <math|A> and <math|B>. The same goes for category theory.

  While constructing the representable functor and Yoneda functor, we find
  that \Ptypes\Q are extremely helpful for restricting the possibility of
  construction, almost make it unique. So, when construct something in
  category theory, types should be considered at the first place.

  <subsection|\PTypes\Q help check the correctness of derivation>

  TODO
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
    <associate|auto-15|<tuple|2.6|5>>
    <associate|auto-16|<tuple|3|5>>
    <associate|auto-17|<tuple|3.1|5>>
    <associate|auto-18|<tuple|4|5>>
    <associate|auto-19|<tuple|3.2|6>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|4|6>>
    <associate|auto-21|<tuple|4.1|6>>
    <associate|auto-22|<tuple|5|7>>
    <associate|auto-23|<tuple|4.2|7>>
    <associate|auto-24|<tuple|4.3|8>>
    <associate|auto-25|<tuple|6|8>>
    <associate|auto-26|<tuple|7|8>>
    <associate|auto-27|<tuple|8|9>>
    <associate|auto-28|<tuple|4.4|9>>
    <associate|auto-29|<tuple|4.5|10>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-30|<tuple|5|10>>
    <associate|auto-31|<tuple|5.1|10>>
    <associate|auto-32|<tuple|5.2|10>>
    <associate|auto-33|<tuple|5.3|10>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-5|<tuple|1.3|1>>
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-7|<tuple|2.1|1>>
    <associate|auto-8|<tuple|2.2|1>>
    <associate|auto-9|<tuple|1|2>>
    <associate|definition: Universal Element|<tuple|11|5>>
    <associate|figure: Adjoint|<tuple|5|7>>
    <associate|figure: Adjoint and Universal Element|<tuple|6|8>>
    <associate|figure: Representable Functor|<tuple|1|2>>
    <associate|figure: The f_* is Natural Transformation|<tuple|2|3>>
    <associate|figure: Universal Element|<tuple|4|5>>
    <associate|figure: Yoneda functor is full|<tuple|3|4>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|4>>
    <associate|footnote-3|<tuple|3|5>>
    <associate|footnote-4|<tuple|4|6>>
    <associate|footnote-5|<tuple|5|6>>
    <associate|footnote-6|<tuple|6|7>>
    <associate|footnote-7|<tuple|7|8>>
    <associate|footnote-8|<tuple|8|8>>
    <associate|footnote-9|<tuple|9|9>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|7|4>>
    <associate|footnr-3|<tuple|10|5>>
    <associate|footnr-4|<tuple|4|6>>
    <associate|footnr-5|<tuple|5|6>>
    <associate|footnr-6|<tuple|6|7>>
    <associate|footnr-7|<tuple|7|8>>
    <associate|footnr-8|<tuple|1|8>>
    <associate|footnr-9|<tuple|9|9>>
    <associate|lemma: Yoneda Lemma|<tuple|7|4>>
    <associate|section: From Representability to Universality|<tuple|3|5>>
    <associate|section: Functor is representable if there exists universal
    element|<tuple|3.1|5>>
    <associate|section: Representable Functor and Yoneda Functor|<tuple|2|1>>
    <associate|section: Representation is unique|<tuple|3.2|6>>
    <associate|theorem: Universal Element|<tuple|12|6>>
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
      <with|mode|<quote|math>|e> in a universal element is
      defined.>|<pageref|auto-18>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|5>|>
        \ Indicates the natural isomorphism
        <with|mode|<quote|math>|\<varphi\>:<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|D>>><around*|(|F<around*|(|-|)>,\<star\>|)>\<rightarrow\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,G<around*|(|\<star\>|)>|)>>.
        \PNatural in <with|mode|<quote|math>|X>\Q means varying the first
        variable, and \Pnatural in <with|mode|<quote|math>|Y>\Q varies the
        second. The commutative diagrams have been rotated by
        <with|mode|<quote|math>|90<rsup|\<circ\>>> for convenience.
      </surround>|<pageref|auto-22>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>|| Indicates the
      universal elements. In both triangles, bottoms are fixed and top
      vertices are arbitrarily chosen.>|<pageref|auto-25>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|7>||Indicates that
      <with|mode|<quote|math>|\<eta\>> and
      <with|mode|<quote|math>|\<varepsilon\>> are natural
      transformations.>|<pageref|auto-26>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>||Indicates universal
      morphism.>|<pageref|auto-27>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Universal
      Elements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Functor is representable if
      there exists universal element <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Representation is unique
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Adjunction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Adjoint functors preserve
      representations of presheaves and copresheaves
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Adjoint is unique
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Unit and counit are
      universal <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Free and forgetful functors
      are adjoint <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Product-hom adjunction
      implies currying <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Summary>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Embedding in the framework
      of category theory is the right way to extend category theory
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>\PTypes\Q help to restrict
      the possibility of construction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|5.3<space|2spc>\PTypes\Q help check the
      correctness of derivation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>
    </associate>
  </collection>
</auxiliary>