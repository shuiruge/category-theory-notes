<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Representation>

  In this section, we discuss how to represent an object by the relationship
  the object has with any other objects. This forces us to restrict
  discussion to small categories.

  <\definition>
    [Small Category] A category <math|<math-ss|C>> is small if

    <\itemize>
      <item>the collection <math|ob<rsub|<math-ss|C>>> is a set, and

      <item>for each <math|A,B\<in\><math-ss|C>>, the collection
      <math|mor<rsub|<math-ss|C>><around*|(|A,B|)>> is a set.
    </itemize>
  </definition>

  <section|Representable Functor and Yoneda Lemma>

  <subsection|Object Equals to Its Relations with Others and with Itself>

  Who are you, and what is your self? Your self is encoded in your
  relationships with others as well as with yourself. So is an object in a
  small category. In this section, we are to show that an object can be
  defined by the morphisms to (or from) this object in the category, and what
  the word defined means.

  <subsection|Morphisms with Fixed Codomain can be Represented by a Functor>

  Given the object, there will be many morphisms with this object as codomain
  (or domain). But, for the convenience of discussion, it would be better to
  use one morphism for all the morphisms. Precisely, consider a small
  category. For each <math|X\<in\><math-ss|C>>, we are to represent the set
  <math|<around*|{|<math-ss|C><around*|(|Y,X|)>\|\<forall\>Y\<in\><math-ss|C>|}>>
  by a morphism <math|Y\<rightarrow\><math-ss|C><around*|(|Y,X|)>>. In
  addition, we hope that this morphism will preserve the structure of
  category, which is important when we are discussing category theory. This
  leads to a functor that maps <math|Y> to
  <math|<math-ss|C><around*|(|Y,X|)>>. Recall that, in small category,
  <math|<math-ss|C><around*|(|Y,X|)>> is a set. So, this is a functor from
  <math|<math-ss|C>> to <math|<math-ss|Set>>. In fact, it is from
  <math|<math-ss|C><rsup|op>>, the dual category of <math|<math-ss|C>>.

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

  <big-figure|<image|./figures/yoneda-1.png|150pt|130pt||>|<label|figure:
  Representable Functor>Indicates <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>.>

  The first item maps <math|Y> to <math|<math-ss|C><around*|(|Y,X|)>>, while
  the second item supplements <math|<math-ss|C><around*|(|-,X|)>> to be a
  functor, so that the structure of category is preserved.

  To see why <math|<math-ss|C><around*|(|-,X|)>> is a functor, we need to
  check the composition and identity axioms of functor. Indeed, for each
  <math|C<above|\<rightarrow\>|g>B<above|\<rightarrow\>|f>A> in
  <math|<math-ss|C>> and each <math|\<varphi\>\<in\><math-ss|C><around*|(|A,X|)>>,

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
  is satisfied.

  <subsection|That Object Equals to Its Representable Functor Means
  <math|<math-ss|C>\<cong\>\<cal-Y\><around*|(|<math-ss|C>|)>>>

  Our aim is to declare that the object and its representable functor are
  equivalent, or say <math|X\<cong\><math-ss|C><around*|(|-,X|)>>. What is
  the meaning of <math|X\<cong\><math-ss|C><around*|(|-,X|)>>? In fact, this
  is not a well defined relation, since the left hand side is an object,
  while the right hand side a functor. To make this well defined, and to
  discuss this in the framework of category theory, we should consider the
  categories they belong to. Obviously, <math|X\<in\><math-ss|C>>. And since
  <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>,
  we have <math|<math-ss|C><around*|(|-,X|)>\<in\><around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>,
  the category of functors from <math|<math-ss|C><rsup|op>> to
  <math|<math-ss|Set>>.

  As discussed in section <reference|section: Fully Faithful Functor Induces
  Equivalent Category>, fully faithful functor induces an equivalent
  category. This hints us that, to declare that the object and its
  representable functor are equivalent, we should construct a fully faithful
  functor from <math|<math-ss|C>> to <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>,
  sending an objecet to its representable functor. The image of the functor,
  as a subcategory of <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>,
  is equivalent to <math|<math-ss|C>>. In this way, we declared the meaning
  of <math|X\<cong\><math-ss|C><around*|(|-,X|)>>.

  Such a functor has been constructed by the Japanese mathematician Yoneda
  Nobuno. (Interestingly, Yoneda is also a computer scientist, supported the
  computer language <hlink|ALGOL|https://en.wikipedia.org/wiki/ALGOL>.)

  <\definition>
    [Yoneda functor] Given a small category <math|<math-ss|C>>, functor
    <math|\<cal-Y\>:<math-ss|C>\<rightarrow\><around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
    is defined by

    <\itemize>
      <item>for each <math|X\<in\><math-ss|C>>,
      <math|\<cal-Y\><around*|(|X|)>\<assign\><math-ss|C><around*|(|-,X|)>>,
      and

      <item>for each <math|X,Y\<in\>C> and each <math|f:X\<rightarrow\>Y>,
      <math|\<cal-Y\><around*|(|f|)>:<math-ss|C><around*|(|-,X|)>\<rightarrow\><math-ss|C><around*|(|-,Y|)>>
      is a natural transformation with component
      <math|\<cal-Y\><around*|(|f|)><rsub|A>\<assign\>f<rsub|\<ast\>>> for
      any <math|A\<in\><math-ss|C>>, where
      <math|f<rsub|*\<ast\>><around*|(|\<varphi\>|)>\<assign\>f\<circ\>\<varphi\>>.
    </itemize>

    This <math|\<cal-Y\>> is called the <with|font-series|bold|Yoneda
    functor> of <math|<math-ss|C>>.
  </definition>

  To see why <math|\<cal-Y\><around*|(|f|)>> is a natural transformation, we
  have

  <big-figure|<image|./figures/yoneda-2.png|1par|||>|The inner circle
  indicates the element-wise map.>

  Notice, for each <math|A,B\<in\><math-ss|C>> and each
  <math|g:B\<rightarrow\>A>, <math|f<rsub|\<ast\>><around*|(|\<varphi\>\<circ\>g|)>=f\<circ\>\<varphi\>\<circ\>g=g<rsup|\<ast\>><around*|(|f\<circ\>\<varphi\>|)>>,
  so that this diagram commutes. So, <math|\<cal-Y\><around*|(|f|)>> is
  indeed a natural transformation.

  Recall that <math|\<cal-Y\>> is fully faithful means that, for each
  <math|X,Y\<in\><math-ss|C>>, there exists a bijection between
  <math|<math-ss|C><around*|(|X,Y|)>> and the collection of all morphisms
  from <math|<math-ss|C><around*|(|-,X|)>> to
  <math|<math-ss|C><around*|(|-,Y|)>> in <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>.
  A morphism from functor <math|<math-ss|C><around*|(|-,X|)>> to functor
  <math|<math-ss|C><around*|(|-,Y|)>> is a natural transformation. Generally,
  <math|>for any two functors <math|F> and <math|G>, we use
  <math|<math-ss|Nat><around*|(|F,G|)>> to denote the collection of all
  natural transformations from <math|F> to <math|G>. So, the collection of
  all morphisms from <math|<math-ss|C><around*|(|-,X|)>> to
  <math|<math-ss|C><around*|(|-,Y|)>> in <math|<around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
  can be re-written as <math|<math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>.
  And, we are to prove that, for a category <math|<math-ss|C>> and for any
  <math|X,Y\<in\><math-ss|C>>, <math|<math-ss|C><around*|(|X,Y|)>\<cong\><math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>.

  <subsection|Yoneda Lemma Implies <math|<math-ss|C><around*|(|X,Y|)>\<cong\><math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>>

  <\lemma>
    [Yoneda Lemma] Given a small category <math|<math-ss|C>>. For any functor
    <math|F:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>> and any
    <math|X\<in\><math-ss|C>>, there is a bijection between
    <math|F<around*|(|X|)>> and <math|<math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,F|)>>.
  </lemma>

  <\proof>
    TODO
  </proof>

  Letting <math|F> be <math|<math-ss|C><around*|(|-,Y|)>>, then Yoneda lemma
  implies <math|<math-ss|C><around*|(|X,Y|)>\<cong\><math-ss|Nat><around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>.
  So the second condition is fulfilled.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.1|4>>
    <associate|auto-11|<tuple|2.3|4>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-5|<tuple|1|1>>
    <associate|auto-6|<tuple|1.3|2>>
    <associate|auto-7|<tuple|2|3>>
    <associate|auto-8|<tuple|1.4|3>>
    <associate|auto-9|<tuple|2|3>>
    <associate|figure: Representable Functor|<tuple|1|1>>
    <associate|lemma: Fully Faithful Functor|<tuple|6|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Indicates
      <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,X|)>:<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><rsup|op>\<rightarrow\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Set>>>>.>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||The inner circle
      indicates the element-wise map.>|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Representation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Representable
      Functor and Yoneda Lemma> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Object Equals to Its
      Relations with Others and with Itself
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Morphisms with Fixed
      Codomain can be Represented by a Functor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>That Object Equals to Its
      Representable Functor Means <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>\<cong\>\<cal-Y\><around*|(|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Trash>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Yoneda Lemma Implies
      <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|X,Y|)>\<cong\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Nat>>><around*|(|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,X|)>,<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>><around*|(|-,Y|)>|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Fully Faithful Functor
      Embeds Category to Equivalent Subcategory
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Yoneda Lemma Implies
      <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>\<cong\>\<cal-Y\><around*|(|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>
    </associate>
  </collection>
</auxiliary>