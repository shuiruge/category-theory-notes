<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Representation>

  <section|Yoneda Lemma>

  <subsection|Object is Defined by Relationships with Others and with Itself>

  Who are you, and what is your self? Your self is encoded in your
  relationships with others as well as with yourself. So is an object in a
  category. In this section, we are to show that an object can be defined by
  the morphisms to (or from) this object in the category, and what the word
  defined means.

  <subsection|Morphisms with Fixed Codomain can be Represented by a Functor>

  Given the object, there will be many morphisms with this object as codomain
  (or domain). But, for the convenience of discussion, it would be better to
  use one morphism for all the morphisms. Precisely, given a locally small
  (TODO) category <math|<math-ss|C>> and an object <math|X\<in\><math-ss|C>>,
  we are to represent the set <math|<around*|{|<math-ss|C><around*|(|Y,X|)>\|\<forall\>Y\<in\><math-ss|C>|}>>
  by a morphism <math|Y\<rightarrow\><math-ss|C><around*|(|Y,X|)>>. And, in
  addition, we hope that this morphism will preserve the structure of
  category, which is important when we are discussing category theory. This
  leads to a functor that brings <math|Y> to
  <math|<math-ss|C><around*|(|Y,X|)>>. Notice that, for a small category,
  <math|<math-ss|C><around*|(|Y,X|)>> is a set. So, this is a functor from
  <math|<math-ss|C>> to <math|<math-ss|Set>>. In fact, it is from
  <math|<math-ss|C><rsup|op>>, the dual category of <math|<math-ss|C>>.

  <\definition>
    [Representable Functor] Given a small category <math|<math-ss|C>>, and
    any object <math|X\<in\><math-ss|C>>, the representable functor,
    <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>,
    is defined by

    <\itemize>
      <item>for each <math|Y\<in\><math-ss|C>>,
      <math|<math-ss|C><around*|(|-,X|)><around*|(|Y|)>\<assign\><math-ss|C><around*|(|Y,X|)>>,
      and

      <item>for each <math|Y,Z\<in\><math-ss|C>> and each
      <math|f:Z\<rightarrow\>Y>, <math|<math-ss|C><around*|(|-,X|)><around*|(|f|)>\<assign\>\<varphi\>\<mapsto\>\<varphi\>\<circ\>f>.<\footnote>
        You should not mix <math|\<mapsto\>> with <math|\<rightarrow\>>. The
        former denotes the element-wise map from a set to another set, while
        the later is an abstract morphism.
      </footnote>
    </itemize>
  </definition>

  The first item brings <math|Y> to <math|<math-ss|C><around*|(|Y,X|)>>,
  while the second preserves the structure of category.

  <subsection|>

  Our aim is to declare that <math|X\<cong\><math-ss|C><around*|(|-,X|)>>.
  This is not a well defined relation, since the left hand side is an object,
  while the right hand side a functor. To make this well defined, and to
  embed this in the framework of category theory, we should consider the
  categories they locate. Obviously, <math|X\<in\><math-ss|C>>. And since
  <math|<math-ss|C><around*|(|-,X|)>:<math-ss|C><rsup|op>\<rightarrow\><math-ss|Set>>,
  we have <math|<math-ss|C><around*|(|-,X|)>\<in\><around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>.
  Then the morphism between the two categories is a functor
  <math|\<cal-Y\>:<math-ss|C>\<rightarrow\><around*|[|<math-ss|C><rsup|op>,<math-ss|Set>|]>>
  which

  <\itemize>
    <item>for each <math|X\<in\><math-ss|C>>,
    <math|\<cal-Y\><around*|(|X|)>\<assign\><math-ss|C><around*|(|-,X|)>>,
    and

    <item>for each <math|X,Y\<in\>C> and each <math|f:X\<rightarrow\>Y>,
    <math|\<cal-Y\><around*|(|f|)>:<math-ss|C><around*|(|-,X|)>\<rightarrow\><math-ss|C><around*|(|-,Y|)>>
    is a natural transformation with component
    <math|\<cal-Y\><around*|(|f|)><rsub|Z>\<assign\>\<varphi\>\<mapsto\>f\<circ\>\<varphi\>>,
    for any <math|Z\<in\><math-ss|C>> and
    <math|\<varphi\>\<in\><math-ss|C><around*|(|Z,X|)>>.
  </itemize>

  The letter <math|\<cal-Y\>> for Yoneda Nobuo, a Japanese mathematician and
  computer scientist. Then, the <math|X\<cong\><math-ss|C><around*|(|-,X|)>>
  simply means <math|<math-ss|C>\<cong\>\<cal-Y\><around*|(|<math-ss|C>|)>>.

  To prove <math|<math-ss|C>\<cong\>\<cal-Y\><around*|(|<math-ss|C>|)>>, we
  have to introduce a some concepts and a lemma for an equivalent statement
  of natural isomorphism.

  <\definition>
    [Fully Faithful Functor] Given small categories <math|<math-ss|C>> and
    <math|<math-ss|D>>, a functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>
    is <with|font-series|bold|fully faithful> if for each
    <math|X,Y\<in\><math-ss|C>>, the functorial map on morphisms,
    <math|F:<math-ss|C><around*|(|X,Y|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|X|)>,F<around*|(|Y|)>|)>>,
    is bijective.
  </definition>

  <\lemma>
    Given small categories <math|<math-ss|C>> and <math|<math-ss|D>>, and a
    functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>, <math|<math-ss|C>>
    and <math|F<around*|(|<math-ss|C>|)>>, as a subcategory of
    <math|<math-ss|D>>, is equivalent if and only if <math|F> is fully
    faithful.
  </lemma>

  <\proof>
    \;
  </proof>

  With this lemma, to prove <math|<math-ss|C>\<cong\>\<cal-Y\><around*|(|<math-ss|C>|)>>
  is to prove that functor <math|\<cal-Y\>> is fully faithful. That is, there
  exists a bijection between <math|<math-ss|C><around*|(|X,Y|)>> and
  <math|Nat<around*|(|<math-ss|C><around*|(|-,X|)>,<math-ss|C><around*|(|-,Y|)>|)>>,
  where <math|>for any two functors <math|F> and <math|G>,
  <math|Nat<around*|(|F,G|)>> denotes the collection of natural
  transformations from <math|F> to <math|G>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-5|<tuple|1.3|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnr-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Representation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Yoneda
      Lemma> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Object is Defined by
      Relationships with Others and with Itself
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Morphisms with Fixed
      Codomain (or Domain) can be Represented by a Functor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>