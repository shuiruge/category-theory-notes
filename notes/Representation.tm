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
    of-<rsup|\<ast\>>|}>=>|<cell|\<varphi\>\<circ\>1<rsub|A>>>|<row|<cell|<around*|{|identity|}>=>|<cell|\<varphi\>>>|<row|<cell|<around*|{|definition
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

  <section|From Representability to Universality><label|section: From
  Representability to Universality>

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
  <with|font-series|bold|represented> by the object <math|<wide|F|^>>.

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

  <section|Cone and Limit>

  In this section, we discuss an important application of universal element
  or representation: limit. We are to show that limit is a representation of
  a functor that generates objects called cones.

  Now, the problem turns to be why cones are important. Because many
  important mathematical concepts are turn out to be cones. Remember in
  chapter <reference|chapter: Category, Functor, and Natural Transformation>,
  we have embedded some concepts in the framework of category theory, such as
  supremum and infimum, Cartesian product and adjoint union. These concepts,
  once re-written by arrows, looks weird. You may wonder where these weird
  stuffs come from. In fact, they come from cones.

  So, let us introduce the cone.

  <subsection|Diagram as a part of category is a functor>

  When we were discussing category, functor, and natural transformation, we
  used the metaphor that a category is a collection of diagrams. Well, what
  is a diagram precisely? Naturally, a diagram is a part of a category, say
  <math|<math-ss|C>>. By part, we indicates two aspects: the set of dots
  (objects) in a diagram is a subset of the <math|ob<rsub|<math-ss|C>>>, and
  the set of arrows (morphisms) between dots <math|X> and <math|Y> is a
  subset of the <math|<math-ss|C><around*|(|X,Y|)>>.

  Remind that, in category theory, everything should be described by arrows.
  So, how to describe a diagram by arrows?

  Let us consider a simpler case: set theory, where a part simply means a
  finite subset. Such a subset of set <math|S> is written as
  <math|A\<assign\><around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>>, where
  <math|x<rsub|i>\<in\>S>. A set corresponds to a discrete category, and a
  function between sets to a functor between discrete categories. (A discrete
  category <math|<math-ss|C>> is that with
  <math|<math-ss|C><around*|(|X,X|)>=<around*|{|1<rsub|X>|}>> and
  <math|<math-ss|C><around*|(|X,Y|)>=\<varnothing\>> for each
  <math|X,Y\<in\><math-ss|C>>.) So, we are to describe <math|A> by function.
  A natural one is <math|f:I\<rightarrow\>S>, where
  <math|I\<assign\><around*|{|1,\<ldots\>,n|}>> as an \Pindexing set\Q, and
  <math|f<around*|(|i|)>\<assign\>x<rsub|i>>.

  Back to category theory, the indexing set analyzes to a small category
  <math|<math-ss|I>> called indexing category, and the function <math|f>
  analyzes to functor <math|F:<math-ss|I>\<rightarrow\><math-ss|C>>. Indexing
  category is used for filtering the objects and morphisms in
  <math|<math-ss|C>>, so that the image is a part of <math|<math-ss|C>>, that
  is, a diagram. We summarize the previous analysis as follow.

  <\definition>
    [Diagram] Let <math|<math-ss|I>> a small category and <math|<math-ss|C>>
    a category. An <math|<math-ss|I>>-shaped <with|font-series|bold|diagram>
    in <math|<math-ss|C>> is a functor <math|F:<math-ss|I>\<rightarrow\><math-ss|C>>.
    It is small or locally small if <math|<math-ss|C>> is small or locally
    small respectively.
  </definition>

  <subsection|Cone irradiates diagram>

  With diagram declared, we come to cone. A light cone generated by a table
  lamp irradiates the table. The table lamp is an object, and the table is a
  diagram. So, a cone irradiates a diagram.

  But, how can we describe the relation between an object and a diagram,
  which is a functor? To make this possible, we have to make the most boring
  definition so far: the constant functor. Constant functor converts an
  object to a functor.

  <\definition>
    [Constant Functor] Let <math|<math-ss|C>> and <math|<math-ss|D>>
    categories. For each <math|X\<in\><math-ss|D>>, the
    <with|font-series|bold|constant functor> of <math|X>,
    <math|Const<rsub|X>:<math-ss|C>\<rightarrow\><math-ss|D>>, is defined by

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
    [Cone] For each diagram <math|D:<math-ss|I>\<rightarrow\><math-ss|C>> and
    each object <math|X\<in\><math-ss|C>>, a cone from <math|X> to <math|D>
    is a natural transformation <math|\<lambda\>:Const<rsub|X>\<rightarrow\>D>.
  </definition>

  <big-figure|<image|figures/cone.png|0.75par|||>|<label|figure: Cone> The
  left hand side indicates the indexing category <math|<math-ss|I>>. And the
  right hand side indicates the cone from <math|X> to <math|D>. The green
  arrows are for functor <math|Const<rsub|X>>, and the red ones for functor
  <math|D>, wherein maps on morphisms are not shown. As usual, identities are
  hidden. Since the <math|\<lambda\>> is a natural transformation, the right
  hand side commutes.>

  <subsection|Cone functor generates cones>

  Notice a cone consists two parts: the diagram and the summit object. Given
  a diagram <math|D:<math-ss|I>\<rightarrow\><math-ss|C>> and a summit object
  <math|X\<in\><math-ss|C>>, the natural transformation
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
    [Cone Functor] For each diagram <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>,
    the <with|font-series|bold|cone functor>
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
  Universality>, for a locally small category <math|<math-ss|C>>, a functor
  <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> can be represented
  by an object in <math|<math-ss|C>>, if universal element exists. Given a
  diagram <math|D:<math-ss|I>\<rightarrow\><math-ss|C>> where
  <math|<math-ss|C>> is locally small (or say, a locally small diagram), a
  cone functor <math|Cone<around*|(|-,D|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>
  thus can be represented by an object in <math|<math-ss|C>>, which we call
  the limit of <math|D>, if universal cone exists.

  Let us restate the universal element for cone functor, which is the
  universal cone. We copy definition <reference|definition: Universal
  Element> to here, with some replacement for cone functor.

  <\definition>
    [Universal Cone] For a locally small diagram
    <math|D:<math-ss|I>\<rightarrow\><math-ss|C>>, a
    <with|font-series|bold|universal cone> is a pair
    <math|><math|<around*|(|lim<rsub|<math-ss|I>>D,e|)>> where <math|lim
    D\<in\><math-ss|C>> and <math|e\<in\>Cone<around*|(|lim<rsub|<math-ss|I>>D,D|)>>
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

  As figure <reference|figure: Limit> indicates, the limit is the lowest
  object towards (the image of) the diagram. So, a limit is the closest
  object to the diagram, thus literally a limit.

  The dual limit is colimit, by simply exchanging domain and codomain in
  limit. As figure <reference|figure: Colimit> shows.

  \ <big-figure|<image|figures/colimit.png|0.5par|||>|<label|figure: Colimit>
  Indicates the colimit. The dash arrow is for implication. As an instance,
  the indexing category <math|<math-ss|I>> is simply
  <math|A<above|\<rightarrow\>|g>B>.>

  Since representation of a functor, if exists, is unique up to isomorphism,
  the limit and colimit, which are representation of the cone and cocone
  functor respectively, are unique up to isomorphism.

  <\theorem>
    [Limit (Colimit) is Unique] The limit (colimit) of a locally small
    diagram is unique up to isomorphism.
  </theorem>

  <subsection|Infimum is a limit on poset <math|\<bbb-R\>>>

  In section <reference|section: Supremum and infimum are dual>, we roughly
  showed what infimum would be like in the framework of category theory.
  Here, we make it more precise. Recalling the definition of poset (see
  definition <reference|definition: Poset>), the field <math|\<bbb-R\>> forms
  a poset by preorder <math|\<leqslant\>>. So, it forms a poset category
  <math|<math-ss|Poset>>, with object a real number and morphism
  <math|x\<rightarrow\>y> if <math|x\<leqslant\>y>. Consider an indexing
  category <math|<math-ss|I>> as the poset
  <math|<around*|(|A,\<leqslant\>|)>> where <math|A\<subset\>\<bbb-R\>>.
  Diagram <math|D:<math-ss|I>\<rightarrow\>\<bbb-R\>> is defined by
  <math|D<around*|(|x|)>\<assign\>x> for each <math|x\<in\>\<bbb-R\>>. So,
  <math|lim<rsub|<math-ss|I>>D> has the property that, for each
  <math|x\<in\>\<bbb-R\>> and <math|a\<in\>A>, if
  <math|x\<leqslant\>D<around*|(|a|)>>, then
  <math|x\<leqslant\>lim<rsub|<math-ss|I>>D\<leqslant\>D<around*|(|a|)>>.
  This means <math|lim<rsub|<math-ss|I>>D> is the infimum of the set
  <math|A>. So, infimum is a universal cone, or a limit, on poset category.

  Since limit, or generally representation, is unique up to isomorphism,
  infimum and supremum of a subset of <math|\<bbb-R\>> is unique. (Recall
  that the only isomorphism in poset <math|\<bbb-R\>> is
  <math|x\<leqslant\>x> for each <math|x\<in\>\<bbb-R\>>.)

  The same goes for its dual, supremum. If we flip the arrows in the
  definitions of limit, we get the dual, colimit . So, directly, we find
  supremum is the colimit on <math|<math-ss|Poset>>.

  <subsection|Product is a limit with discrete indexing category>

  In section <reference|section: Arrows generalize concepts and theorems from
  one area to every area in mathematics>, we showed what Cartesian product
  would be like in the framework of category theory. Let <math|<math-ss|C>> a
  category. For any <math|A,B\<in\><math-ss|C>>, the product of <math|A> and
  <math|B> is another object <math|C\<in\><math-ss|C>> together with two
  morphisms <math|\<alpha\>:C\<rightarrow\>A> and
  <math|\<beta\>:C\<rightarrow\>B> such that, for any
  <math|C<rprime|'>\<in\><math-ss|C>>, any
  <math|\<alpha\><rprime|'>:C<rprime|'>\<rightarrow\>A> and
  <math|\<beta\><rprime|'>:C<rprime|'>\<rightarrow\>B>, there exists a unique
  morphism <math|\<gamma\>:C<rprime|'>\<rightarrow\>C> so that
  <math|\<alpha\><rprime|'>=\<alpha\>\<circ\>\<gamma\>> and
  <math|\<beta\><rprime|'>=\<beta\>\<circ\>\<gamma\>>. If we convert this
  statement to commutative diagram (figure <reference|figure: Product is
  Limit>), then it is apparent that product is a limit, in which the discrete
  category with two elements is the indexing category.

  <big-figure|<image|figures/limit-1.png|0.75par|||>|<label|figure: Product
  is Limit> Indicates that product is a limit. The left hand side is the
  indexing category. There is no morphism (except the hidden identities)
  since it is a discrete category. The name of the object is irrelevant, so
  the two objects are shown as dots. The right hand side is the commutative
  diagram for the definition of product. The green arrows is for the constant
  functor, and red arrows for the diagram functor.>

  Again, since representation of a functor is unique up to isomorphism. The
  product is unique up to isomorphism. Recall that we have proved the
  uniqueness before. Now, the proof is apparent on its own.

  The same goes for coproduct (definition <reference|definition: Coproduct of
  Two Objects>).

  <subsection|Limit is everywhere in mathematics>

  Lots of very interesting instances can be found in the <hlink|wonderful
  blog|https://www.math3ma.com/blog/limits-and-colimits-part-3> posted by
  Tai-Danae Bradley. The definition of diagram
  <math|D:<math-ss|I>\<rightarrow\><math-ss|C>> depends on two categories:
  the indexing category <math|<math-ss|I>> and the target category
  <math|<math-ss|C>>. By providing a concrete <math|<math-ss|I>>, we can
  construct lots of families of limits. For instance, families named
  \Pterminal object\Q, \Ppullback\Q, and \Pequilizer\Q. \ And for each family
  of limits, by applying to a concrete <math|<math-ss|C>>, we obtain a
  mathematical concept. For instance, applying poset <math|\<bbb-N\>> to
  pullback furnishes greatest common divisor of integers. This is how
  mathematical concepts are built and organized by limit.

  Why limit is everywhere in mathematics? The reason may come from its
  pattern. Limit has the generic pattern:
  \P<math|\<forall\>\<cdots\>\<exists\>!\<cdots\>\<Rightarrow\>\<cdots\>>\Q.
  This is the general pattern of first-order logic. So, an educated guess is
  that limit is everywhere since first-order logic is everywhere.

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
    <math-ss|D><around*|(|F<around*|(|<wide|K|^>|)>,\<ast\>|)><above|\<cong\>|?>K\<circ\>G.
  </equation*>

  (The <math|\<ast\>> is employed as placeholder.) And again, since
  <math|<wide|K|^>> represents <math|K>, it turns to be
  <math|<math-ss|D><around*|(|F<around*|(|<wide|K|^>|)>,\<ast\>|)><above|\<cong\>|?><math-ss|C><around*|(|<wide|K|^>,G<around*|(|\<ast\>|)>|)>>.
  If this relation holds, then <math|F<around*|(|<wide|K|^>|)>> represents
  <math|K\<circ\>G>, and we say the representation of a representable
  copresheaf is preserved by functorial maps <math|F> and <math|G>.

  Altogether, if representations of all representable presheaves and
  copresheaves are to be preserved by functorial maps
  <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
  <math|G:<math-ss|D>\<rightarrow\><math-ss|C>>, then we should demand
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<ast\>|)>\<cong\><math-ss|C><around*|(|-,G<around*|(|\<ast\>|)>|)>>,
  where <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<ast\>|)>> and
  <math|<math-ss|C><around*|(|-,G<around*|(|\<ast\>|)>|)>> are bi-functors of
  the \Ptype\Q <math|<math-ss|C><rsup|op>\<times\><math-ss|D>\<rightarrow\><math-ss|Set>>.
  This indicates a double-index component

  <\equation*>
    \<varphi\><rsub|X,Y>:<math-ss|D><around*|(|F<around*|(|X|)>,Y|)>\<rightarrow\><math-ss|C><around*|(|X,G<around*|(|Y|)>|)>
  </equation*>

  for each <math|X\<in\><math-ss|C>> and <math|Y\<in\><math-ss|D>>. This
  means, to preserve presheaves and copresheaves, the <math|F> and <math|G>
  can be arbitrary except that the relation
  <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<ast\>|)>\<cong\><math-ss|C><around*|(|-,G<around*|(|\<ast\>|)>|)>>
  must be held.

  We summarize this section as follow.

  <\definition>
    [Adjoint Functors & Adjunction] Let <math|<math-ss|C>> and
    <math|<math-ss|D>> locally small categories. Functors
    <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|D>\<rightarrow\><math-ss|C>> are
    <with|font-series|bold|adjoint>, denoted by <math|F\<dashv\>G>, if there
    exists a natural isomorphism <math|\<varphi\>:<math-ss|D><around*|(|F<around*|(|-|)>,\<ast\>|)>\<rightarrow\><math-ss|C><around*|(|-,G<around*|(|\<ast\>|)>|)>>.
    The <math|\<varphi\>> is called an <with|font-series|bold|adjunction>.<\footnote>
      In some texture, for instance MacLane, adjunction is defined as the
      triplet <math|<around*|(|F,G,\<varphi\>|)>>. However, the
      <math|\<varphi\>> itself, like any other morphism, has indicated what
      the domain and codomain are, that is, the
      <math|<math-ss|D><around*|(|F<around*|(|-|)>,\<ast\>|)>> and
      <math|<math-ss|C><around*|(|-,G<around*|(|\<ast\>|)>|)>> respectively,
      from which we read out <math|F> and <math|G>.
    </footnote>
  </definition>

  <\big-figure|<image|figures/adjoint.png|0.8par|||>>
    <label|figure: Adjoint> Indicates the natural isomorphism
    <math|\<varphi\>:<math-ss|D><around*|(|F<around*|(|-|)>,\<ast\>|)>\<rightarrow\><math-ss|C><around*|(|-,G<around*|(|\<ast\>|)>|)>>.
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
  two linear transformations <math|f> and <math|g> are adjoint if
  <math|<around*|\<langle\>|f<around*|(|u|)>,v|\<rangle\>>=<around*|\<langle\>|u,g<around*|(|v|)>|\<rangle\>>>
  for each vectors <math|u> and <math|v>, where bracket indicates inner
  product.

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
  <math|<math-ss|C><around*|(|X,G<around*|(|\<ast\>|)>|)>> if and only if
  <math|F<around*|(|X|)>>, equipped with <math|\<eta\><rsub|X>:X\<rightarrow\>G\<circ\>F<around*|(|X|)>>,
  is a universal element of <math|<math-ss|C><around*|(|X,G<around*|(|\<ast\>|)>|)>>.
  That is, for each <math|Y\<in\><math-ss|D>>, and each
  <math|g:X\<rightarrow\>G<around*|(|Y|)>>, there exists a unique
  <math|g<rsup|\<sharp\>>:F<around*|(|X|)>\<rightarrow\>Y> such that
  <math|g=G<around*|(|g<rsup|\<sharp\>>|)><rsub|\<ast\>><around*|(|\<eta\><rsub|X>|)>\<equiv\>G<around*|(|g<rsup|\<sharp\>>|)>\<circ\>\<eta\><rsub|X>>.
  And the <math|\<eta\><rsub|X>> can be induced from
  <math|\<varphi\><rsub|X,\<ast\>>:<math-ss|D><around*|(|F<around*|(|X|)>,\<ast\>|)>\<rightarrow\><math-ss|C><around*|(|X,G<around*|(|\<ast\>|)>|)>>
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
  <math|\<varphi\><rsub|X,Y><around*|(|f|)>=<math-ss|C><around*|(|X,G<around*|(|\<ast\>|)>|)><around*|(|f|)><around*|(|\<eta\><rsub|X>|)>>.
  From figure <reference|figure: Adjoint>, we can read out
  <math|<math-ss|C><around*|(|X,G<around*|(|\<ast\>|)>|)><around*|(|f|)>=G<around*|(|f|)><rsub|\<ast\>>>
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

  In the end, let us see how adjoint functors preserve representation in an
  explicit instance. We have known that limit represents cone functor, and
  product is a limit. So, product is a representation. Figure
  <reference|figure: Adjoint functors preserve product> illustrates how the
  adjoint functors <math|F\<dashv\>G> preserve the product
  <math|<around*|(|A\<times\>B,\<alpha\>,\<beta\>|)>>.

  <big-figure|<image|figures/adjoint-4.png|0.7par|||>|<label|figure: Adjoint
  functors preserve product> Illustrates how the product is preserved by
  adjoint functors <math|F\<dashv\>G>, where
  <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
  <math|G:<math-ss|D>\<rightarrow\><math-ss|C>>. The red part indicates that
  <math|A\<times\>B> is the product of <math|A> and <math|B> in
  <math|<math-ss|D>>. The blue part indicates that
  <math|\<varepsilon\><rsub|A\<times\>B>> is universal. By putting the red
  and blue parts together, we find the relation
  <math|f=F<around*|(|f<rsup|\<sharp\>>|)>\<circ\>\<varepsilon\><rsub|A\<times\>B>>.>

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
    <associate|auto-22|<tuple|4.2|6>>
    <associate|auto-23|<tuple|5|7>>
    <associate|auto-24|<tuple|4.3|7>>
    <associate|auto-25|<tuple|6|7>>
    <associate|auto-26|<tuple|4.4|8>>
    <associate|auto-27|<tuple|7|8>>
    <associate|auto-28|<tuple|8|8>>
    <associate|auto-29|<tuple|4.5|9>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-30|<tuple|4.6|9>>
    <associate|auto-31|<tuple|9|9>>
    <associate|auto-32|<tuple|4.7|9>>
    <associate|auto-33|<tuple|5|10>>
    <associate|auto-34|<tuple|5.1|10>>
    <associate|auto-35|<tuple|10|11>>
    <associate|auto-36|<tuple|5.2|11>>
    <associate|auto-37|<tuple|5.3|11>>
    <associate|auto-38|<tuple|11|12>>
    <associate|auto-39|<tuple|12|12>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-40|<tuple|13|13>>
    <associate|auto-41|<tuple|14|13>>
    <associate|auto-42|<tuple|5.4|14>>
    <associate|auto-43|<tuple|5.5|14>>
    <associate|auto-44|<tuple|6|14>>
    <associate|auto-45|<tuple|6.1|14>>
    <associate|auto-46|<tuple|6.2|14>>
    <associate|auto-47|<tuple|6.3|14>>
    <associate|auto-5|<tuple|1.3|1>>
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-7|<tuple|2.1|1>>
    <associate|auto-8|<tuple|2.2|1>>
    <associate|auto-9|<tuple|1|2>>
    <associate|definition: Universal Element|<tuple|10|5>>
    <associate|figure: Adjoint|<tuple|10|11>>
    <associate|figure: Adjoint and Universal Element|<tuple|11|12>>
    <associate|figure: Adjoint functors preserve product|<tuple|14|13>>
    <associate|figure: Colimit|<tuple|8|8>>
    <associate|figure: Cone|<tuple|5|7>>
    <associate|figure: Cone Functor|<tuple|6|7>>
    <associate|figure: Limit|<tuple|7|8>>
    <associate|figure: Product is Limit|<tuple|9|9>>
    <associate|figure: Representable Functor|<tuple|1|2>>
    <associate|figure: The f_* is Natural Transformation|<tuple|2|3>>
    <associate|figure: Universal Element|<tuple|4|5>>
    <associate|figure: Yoneda functor is full|<tuple|3|4>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|4>>
    <associate|footnote-3|<tuple|3|10>>
    <associate|footnote-4|<tuple|4|10>>
    <associate|footnote-5|<tuple|5|12>>
    <associate|footnote-6|<tuple|6|12>>
    <associate|footnote-7|<tuple|7|14>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|7|4>>
    <associate|footnr-3|<tuple|3|10>>
    <associate|footnr-4|<tuple|4|10>>
    <associate|footnr-5|<tuple|5|12>>
    <associate|footnr-6|<tuple|1|12>>
    <associate|footnr-7|<tuple|7|14>>
    <associate|lemma: Yoneda Lemma|<tuple|7|4>>
    <associate|section: From Representability to Universality|<tuple|3|5>>
    <associate|section: Functor is representable if there exists universal
    element|<tuple|3.1|5>>
    <associate|section: Representable Functor and Yoneda Functor|<tuple|2|1>>
    <associate|section: Representation is unique|<tuple|3.2|6>>
    <associate|theorem: Universal Element|<tuple|11|5>>
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

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>|| The left hand side
      indicates the indexing category <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|I>>>>.
      And the right hand side indicates the cone from
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

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>|| Indicates the
      colimit. The dash arrow is for implication. As an instance, the
      indexing category <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|I>>>>
      is simply <with|mode|<quote|math>|A<above|\<rightarrow\>|g>B>.>|<pageref|auto-28>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|9>|| Indicates that
      product is a limit. The left hand side is the indexing category. There
      is no morphism (except the hidden identities) since it is a discrete
      category. The name of the object is irrelevant, so the two objects are
      shown as dots. The right hand side is the commutative diagram for the
      definition of product. The green arrows is for the constant functor,
      and red arrows for the diagram functor.>|<pageref|auto-31>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|10>|>
        \ Indicates the natural isomorphism
        <with|mode|<quote|math>|\<varphi\>:<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|D>>><around*|(|F<around*|(|-|)>,\<ast\>|)>\<rightarrow\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,G<around*|(|\<ast\>|)>|)>>.
        \PNatural in <with|mode|<quote|math>|X>\Q means varying the first
        variable, and \Pnatural in <with|mode|<quote|math>|Y>\Q varies the
        second. The commutative diagrams have been rotated by
        <with|mode|<quote|math>|90<rsup|\<circ\>>> for convenience.
      </surround>|<pageref|auto-35>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|11>|| Indicates the
      universal elements. In both triangles, bottoms are fixed and top
      vertices are arbitrarily chosen.>|<pageref|auto-38>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|12>||Indicates that
      <with|mode|<quote|math>|\<eta\>> and
      <with|mode|<quote|math>|\<varepsilon\>> are natural
      transformations.>|<pageref|auto-39>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|13>||Indicates
      universal morphism.>|<pageref|auto-40>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|14>|| Illustrates how
      the product is preserved by adjoint functors
      <with|mode|<quote|math>|F\<dashv\>G>, where
      <with|mode|<quote|math>|F:<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>\<rightarrow\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|D>>>>
      and <with|mode|<quote|math>|G:<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|D>>>\<rightarrow\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>>.
      The red part indicates that <with|mode|<quote|math>|A\<times\>B> is the
      product of <with|mode|<quote|math>|A> and <with|mode|<quote|math>|B> in
      <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|D>>>>.
      The blue part indicates that <with|mode|<quote|math>|\<varepsilon\><rsub|A\<times\>B>>
      is universal. By putting the red and blue parts together, we find the
      relation <with|mode|<quote|math>|f=F<around*|(|f<rsup|\<sharp\>>|)>\<circ\>\<varepsilon\><rsub|A\<times\>B>>.>|<pageref|auto-41>>
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

      <with|par-left|<quote|1tab>|3.2<space|2spc>Representation is unique
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Cone
      and Limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Diagram as a part of
      category is a functor <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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

      <with|par-left|<quote|1tab>|4.5<space|2spc>Infimum is a limit on poset
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|4.6<space|2spc>Product is a limit with
      discrete indexing category <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|4.7<space|2spc>Limit is everywhere in
      mathematics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Adjunction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Adjoint functors preserve
      representations of presheaves and copresheaves
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Adjoint is unique
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|5.3<space|2spc>Unit and counit are
      universal <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|5.4<space|2spc>Free and forgetful functors
      are adjoint <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|5.5<space|2spc>Product-hom adjunction
      implies currying <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Summary>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Embedding in the framework
      of category theory is the right way to extend category theory
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|6.2<space|2spc>\PTypes\Q help to restrict
      the possibility of construction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|6.3<space|2spc>\PTypes\Q help check the
      correctness of derivation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>
    </associate>
  </collection>
</auxiliary>