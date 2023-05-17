<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Category, Functor, and Natural Transformation>

  <with|font|TeX Gyre Schola|><section|Category>

  <subsection|A Proof can be Universal>

  In this section, we give an simple example to illustrate how a proof can be
  universal. This example relates to discrete topology.

  <\definition>
    [Discrete Topology] Given a set <math|S>, the
    <with|font-series|bold|discrete topology> of <math|S> assigns all subsets
    of <math|S> as open. By equiping with the discrete topology, we build a
    topological space <math|D<around*|(|S|)>>.
  </definition>

  It is not too weired to regard <math|D> as a map, which can be thought as a
  topological space constructor that assign the discrete topology to a set.
  This is the starting point: viewing everything from the perspective of
  arrows.

  Consider a function <math|f> from the set <math|S> to a topological space
  <math|X>. Now, we can construct a map from <math|D<around*|(|S|)>> to
  <math|X> freely. Namely, the <math|g> that maps from
  <math|D<around*|(|S|)>> to <math|X> as the same way that <math|f> maps from
  <math|S> to the set of <math|X>. We claim that <math|g> is continuous. The
  inverse of an open set of <math|X> is a subset of <math|S>, which is an
  open set of <math|D<around*|(|S|)>>. So, the inverse of any open set is
  open, meaning that <math|g> is continuous. Also, given <math|f>, <math|g>
  is the unique map such that <math|g\<circ\>D=f>. So, we summarize the above
  as

  <\theorem>
    Let <math|D> the discrete topology. Then, for any function <math|f>
    mapping from set to topological space, there exists an unique continuous
    map <math|g> such that <math|g\<circ\>D=f>.
  </theorem>

  Even thought this theorem is quite trivial, there exists a non-trivial
  aspects about it. That is, the relation claimed in the theorem holds only
  for discrete topology. In fact, two topological spaces can be the same even
  though they are superficially distinct. In this situation, there will be an
  isomophism between the two topological spaces. With these preliminaries, we
  claim the following theorem.

  <\theorem>
    [Universal Property of Discrete Topology] Given a topology <math|T>, if
    for any function <math|f> mapping from set to topological space, there
    exists an unique continuous map <math|g> such that <math|g\<circ\>T=f>,
    then there exists an isomorphism <math|\<varphi\>> such that
    <math|\<varphi\>\<circ\>T=D>.
  </theorem>

  Again, we declared the previous fact in a little weired way, wherein maps
  are employed instead of sets and topological spaces. In the general way of
  speaking, this theorem claimed that if there exists another topology
  <math|T> such that the previous theorem of <math|D> holds also for
  <math|T>, then for any set <math|S>, the two topological spaces
  <math|T<around*|(|S|)>> and <math|D<around*|(|S|)>> are isomorphic.

  <\proof>
    In the condition, the only variants is <math|f>. So, the proof must be
    done by substituting the <math|f> by multiple specific arrows.

    First, we try to substitute <math|f> by <math|D>, implying an unique
    continuous map <math|\<varphi\>> such that <math|\<varphi\>\<circ\>T=D>.
    Now, we are to prove that <math|\<varphi\>> is isomorphic, meaning that
    there is a continuous map <math|\<psi\>> such that
    <math|\<psi\>\<circ\>\<varphi\>=1>, the identity map.

    As we have known, the theorem holds for <math|T=D>. In this case, we
    substitute <math|f> by <math|T>, implying an unique continuous map
    <math|\<psi\>> such that <math|\<psi\>\<circ\>D=T>. So, we have
    <math|T=\<psi\>\<circ\>D=\<psi\>\<circ\><around*|(|\<varphi\>\<circ\>T|)>=<around*|(|\<psi\>\<circ\>\<varphi\>|)>\<circ\>T>,
    where we have employed the associativity of function composition.

    All left is to prove <math|\<psi\>\<circ\>\<varphi\>=1>. To do so,
    substitute <math|f> by <math|T>, implying an unique continuous map
    <math|\<zeta\>> such that <math|\<zeta\>\<circ\>T=T>. However, we find
    both <math|1> and <math|\<psi\>\<circ\>\<varphi\>> can serve this
    <math|\<zeta\>>. The uniqueness of <math|\<zeta\>> implies that
    <math|\<psi\>\<circ\>\<varphi\>=1>. So, we find an isomprohism
    <math|\<varphi\>>, inverse of which is <math|\<psi\>>, such that
    <math|\<varphi\>\<circ\>T=D>.
  </proof>

  Notice in the proof, we substituted the variant <math|f> by multiple
  specific arrows: <math|T> and <math|D>, with the aid of associativity of
  function composition and identity map, we arrive at the final conclusion.
  We did not even employ any topology knowledge! So, this theorem can be
  extended to more general situation, beyond topology. This is what arrows
  bring to us: a generic, thus abstract, way of thinking mathematics.

  But, before abstracting the theorem to a more general form, we have to
  introduce some concepts that help us describe arrows and related objects.

  <subsection|Category is about Arrows>

  Category is the fundamental element of category theory. A category consists
  of arrows and objects, which are employed to declare arrows: where an arrow
  emits, and where it ends. Moreover, several properties relating to these
  components should be satisfied.

  Strangely, in category, arrow is called morphism, a word derived from
  isomorphism. And isomorphism is constructed from iso-morphe-ism, where
  morphe, a Greek word, means shape or form. So, isomorphism means equal
  shape or form. This can be easily illustrated in topology, where the two
  isomorphic tologogical space share the same form (but may not the same
  shape). But semantically, this is far from what arrow should mean. So, the
  question is why mathematician use the word morphism for arrow.

  <\definition>
    [Category] A <with|font-series|bold|category> <math|<math-ss|C>> consists
    of

    <\itemize>
      <item>a collection of <with|font-series|bold|objects>,
      <math|ob<rsub|<math-ss|C>>>,

      <item>for each <math|A,B\<in\>ob<rsub|<math-ss|C>>>, a collection of
      <with|font-series|bold|morphisms> from <math|A> to <math|B>,
      <math|mor<rsub|<math-ss|C>><around*|(|A,B|)>>,

      <item>for each <math|f\<in\>mor<rsub|<math-ss|C>><around*|(|A,B|)>> and
      <math|g\<in\>mor<rsub|<math-ss|C>><around*|(|B,C|)>>, a
      <with|font-series|bold|composition> of <math|f> and <math|g> that
      furnishes an arrow <math|g\<circ\>f\<in\>mor<rsub|<math-ss|C>><around*|(|A,C|)>>,
      and

      <item>for each <math|A\<in\>ob<rsub|<math-ss|C>>>, an
      <with|font-series|bold|identity> <math|1<rsub|A>\<in\>mor<rsub|<math-ss|C>><around*|(|A,A|)>>,
    </itemize>

    such that the following axioms are satisified:

    <\itemize>
      <item><with|font-series|bold|associativity>: for each
      <math|f\<in\>mor<rsub|<math-ss|C>><around*|(|A,B|)>>,
      <math|g\<in\>mor<rsub|<math-ss|C>><around*|(|B,C|)>>, and
      <math|h\<in\>mor<rsub|<math-ss|C>><around*|(|C,D|)>>, we have
      <math|<around*|(|h\<circ\>g|)>\<circ\>f=h\<circ\><around*|(|g\<circ\>f|)>>,
      and

      <item><with|font-series|bold|identity>: for each
      <math|f\<in\>mor<rsub|<math-ss|C>><around*|(|A,B|)>>, we have
      <math|f\<circ\>1<rsub|A>=1<rsub|B>\<circ\>f>.
    </itemize>
  </definition>

  But, this notation system is a little complicated. Usually, we simplify it
  by employing the notations from set theory.

  <\notation>
    Given category <math|<math-ss|C>>, we simplify the notation
    <math|A\<in\>ob<rsub|<math-ss|C>>> by <math|A\<in\><math-ss|C>>, and for
    each <math|A,B\<in\><math-ss|C>>, denote
    <math|f\<in\>mor<rsub|<math-ss|C>><around*|(|A,B|)>> by
    <math|f:A\<rightarrow\>B> or <math|A<above|\<longrightarrow\>|f>B>.
  </notation>

  Now, category becomes much more familiar to us. We can think the objects of
  <math|<math-ss|C>> as sets, and morphism as function, which is the map
  between sets. Indeed, the collection of functions does form a category: the
  category of sets.

  <\definition>
    [Category of Set] The <with|font-series|bold|category of sets>, denoted
    as <math|<math-ss|Set>>, has the collection of all sets as its objects,
    and for each <math|A,B\<in\><math-ss|Set>>, the collection of all
    functions from <math|A> to <math|B> as its morphisms from <math|A> to
    <math|B>.
  </definition>

  It is easy to check that the axioms are satisfied. But, be caution!
  <math|<math-ss|Set>> is just a specific category, it helps us understanding
  what a category might look like. But, <math|<math-ss|Set>> has much more
  axioms, or restrictions, than the category itself, thus may blind us to the
  potential power of arrows.

  Indeed, there exists categories whose objects are not sets, or whose
  morphisms are not maps. So, a better way of thinking category is keeping
  objects and morphisms abstract. You can think objects as colored dots and
  morphisms as arrows between the colored dots.

  <subsection|Objects may not be Sets>

  We know that <hlink|the symmetry group of rectangle is dihedral group
  <math|D<rsub|2>>|https://proofwiki.org/wiki/Definition:Symmetry_Group_of_Rectangle>.
  The group elements are operations: identity, rotation of <math|180>
  degrees, and reflections along vertical and horizental directions. The
  operand is unique: the rectangle. These operations can be viewed as arrows
  from the rectangle to itself. So, this symmetry group describes a category,
  called <math|<math-ss|B>D<rsub|2>>. The axioms of category are satisfied
  because of the group properties. In this category, object is not a set, but
  an rectangle.

  In fact, all groups are examples illustrating that objects may not be sets.
  Here, we need the definition of isomorphism in category.

  <\definition>
    [Isomorphism in Category] In a category <math|<math-ss|C>>, for any
    objects <math|A,B\<in\><math-ss|C>>, a morphism <math|f:A\<rightarrow\>B>
    is an <with|font-series|bold|isomorphism> if there exists
    <math|g:B\<rightarrow\>A> such that <math|g\<circ\>f=1<rsub|A>> and
    <math|f\<circ\>g=1<rsub|B>>.
  </definition>

  With the aid of isomorphism, we definition the groupid.

  <\definition>
    [Groupid] A <with|font-series|bold|groupid> is a category in which all
    morphisms are isomorphisms.
  </definition>

  Now, we come to the big step: define the group! But, wait a minute. We have
  learned abstract algebra and known what a group is. The point here is that
  category theory provide a new, but equivalent, way of defining group, using
  arrows!

  <\definition>
    [Group as Category] A group is a groupid in which there is only one
    object.
  </definition>

  <\notation>
    Because there is only one object, we can simplify the notation of
    morphism like <math|f:A\<rightarrow\>B> to <math|f>, and denote
    <math|f\<in\><math-ss|G>> for that <math|f> is a morphism of a group
    <math|<math-ss|G>>.
  </notation>

  If we start at defining group by arrows, we have to declare that the
  properties (axioms) of group studied in algebra are satisfied.

  <\theorem>
    Let <math|<math-ss|G>> a group, then we have

    <\itemize>
      <item><with|font-series|bold|associativity>: for
      <math|\<forall\>f,g,h\<in\><math-ss|G>>,
      <math|<around*|(|f\<circ\>g|)>\<circ\>h=f\<circ\><around*|(|g\<circ\>h|)>>,

      <item><with|font-series|bold|identity element>: there exists
      <math|1\<in\><math-ss|G>> such that for
      <math|\<forall\>f\<in\><math-ss|G>>, <math|f\<circ\>1=1\<circ\>f=f>.

      <item><with|font-series|bold|inverse element>: for
      <math|\<forall\>f\<in\><math-ss|G>>, there exists
      <math|g\<in\><math-ss|G>> such that <math|f\<circ\>g=g\<circ\>f=1>.
    </itemize>
  </theorem>

  <\proof>
    The associativity of group is identified as the associativity of
    category. The same for identity element. The inverse element comes from
    the fact that all morphisms are isomorphisms.
  </proof>

  So, a group is a category. And as compared with the group defined in
  abstract algebra, we find that the unique object in this category is not
  set, and that discussing what the object should be is meaningless.

  <subsection|Morphisms may not be Maps>

  To illustrate that morphisms may not be maps, we need to define preorder
  and poset.

  <\definition>
    [Preorder] Given a set <math|S>, a preorder <math|P> on <math|S> is a
    subset of <math|S\<times\>S> such that the following axioms are
    satisfied:

    <\itemize>
      <item><with|font-series|bold|reflexivity>: for
      <math|\<forall\>a\<in\>S>, <math|<around*|(|a,a|)>\<in\>P>, and

      <item><with|font-series|bold|tansitivity> for
      <math|\<forall\>a,b,c\<in\>S>, if <math|<around*|(|a,b|)>\<in\>P> and
      <math|<around*|(|b,c|)>\<in\>P>, then <math|<around*|(|a,c|)>\<in\>P>.
    </itemize>
  </definition>

  For example, \Pno greater than\Q is a preorder, where <math|S> is the set
  of real numbers and <math|<around*|(|a,b|)>\<in\>P> means
  <math|a\<leqslant\>b>. \PIs subset of\Q is another example of preorder,
  where <math|S> is the set of sets and <math|<around*|(|a,b|)>\<in\>P> means
  <math|a\<subseteq\>b>.

  <\definition>
    [Poset] A preordered set, or <with|font-series|bold|poset>,
    <math|<around*|(|S,P|)>> is a set <math|S> equiped with a preorder
    <math|P> on <math|S>.
  </definition>

  With these prelimiaries, we claim that a poset is a category.

  <\definition>
    [Poset as Category] Given poset <math|<around*|(|S,P|)>>, a category
    <math|<math-ss|Poset>> can be constructed by regarding the elements in
    <math|S> as objects and regarding <math|<around*|(|a,b|)>\<in\>P> as
    <math|a\<rightarrow\>b>.
  </definition>

  Because of the axioms of preorder, the axioms of category are satisfied.
  The category <math|<math-ss|Poset>> illustrates that morphisms are not
  maps. In <math|<math-ss|Poset>>, morphisms are \Pno greater than\Qs or \Pis
  subset of\Qs.

  <subsection|Category Describes Universality>

  Now, equipped with category, we can describe the generalized theorem on the
  universal property we met in the discrete topology.

  <\theorem>
    [Universal Property in Category] For a morphism
    <math|h:A\<rightarrow\>B>, we say that <math|h> satisfies the universal
    property if, for any morphism <math|f:A\<rightarrow\>C>, there exists
    unique morphism <math|g:B\<rightarrow\>C> such that <math|f=g\<circ\>h>.
    Then we claim that, given two morphisms <math|h:A\<rightarrow\>B> and
    <math|h<rprime|'>:A\<rightarrow\>B<rprime|'>>, if the universal property
    holds for both of them, then there must be an isomorphism
    <math|\<varphi\>> such that <math|h<rprime|'>=\<varphi\>\<circ\>h>.
  </theorem>

  The proof now becomes trivial.

  <section|Duality>

  <subsection|Supremum and Infimum are Dual>

  Arrows can represent many mathematical objects. For example, in
  <math-ss|<math|Poset>> with set <math|\<bbb-R\>> and preorder
  <math|\<leqslant\>>, we can describe supremum as follow.

  <\definition>
    [Supremum in Category] Given a subset <math|A\<subset\>\<bbb-R\>>. An
    <math|x\<in\>\<bbb-R\>> is the <with|font-series|bold|supermum> of
    <math|A> if it satisfies:

    <\itemize>
      <item>for <math|\<forall\>a\<in\>A>, <math|a\<rightarrow\>x> and,

      <item>for <math|\<forall\>y\<in\>\<bbb-R\>> and
      <math|\<forall\>a\<in\>A>, if <math|y\<rightarrow\>a>, then
      <math|y\<rightarrow\>x>.
    </itemize>
  </definition>

  This is, again, a weired definition on supremum. But, if you check
  carefully, you can see that this definition is equivalent to that studied
  in analysis. Also, we can define the infimum in the same fashion.

  <\definition>
    [Infimum in Category] Given a subset <math|A\<subset\>\<bbb-R\>>. An
    <math|x\<in\>\<bbb-R\>> is the <with|font-series|bold|infimum> of
    <math|A> if it satisfies:

    <\itemize>
      <item>for <math|\<forall\>a\<in\>A>, <math|x\<rightarrow\>a> and,

      <item>for <math|\<forall\>y\<in\>\<bbb-R\>> and
      <math|\<forall\>a\<in\>A>, if <math|a\<rightarrow\>y>, then
      <math|x\<rightarrow\>y>.
    </itemize>
  </definition>

  Weired again, but now you may have been familiar with the weired. Hint: the
  word weired also has the meaning of fate. Indeed, you are on the load to
  wonderland. By comparing the definition of infimum to that of supremum, we
  find all statements are the same except that we replaced supremum by
  infimum and <math|\<rightarrow\>> by <math|\<leftarrow\>>, or by exchanging
  domain and codomain. All about is flipping the arrows. So, in category
  theory, it is possible to reclaim a theorem about supremum by flipping the
  arrows, then we get a theorem about infimum, without redo the proof!

  <subsection|Duality is Free Lunch>

  This is the power of duality. Two concepts are dual if we can get one from
  the other by flipping the arrows in the other. For example, supremum and
  infimum are dual. With duality, we can double the theorems in category
  theory without redo the proofs. The dual theorems are free!

  Another example comes from the duality of direct product and direct sum of
  two objects in a category. You may have been familiar with the direct
  product and the direct sum of two sets. Given two sets <math|A> and
  <math|B>, recall that the direct product
  <math|A\<times\>B\<assign\><around*|{|*<around*|(|a,b|)>\|a\<in\>A,b\<in\>B|}>>,
  and that the direct sum, or the disjoint union,
  <math|A\<cup\><rsub|d>B:=<around*|{|<around*|(|a,1|)>\|a\<in\>A|}>\<cup\><around*|{|<around*|(|b,2|)>\|b\<in\>B|}>>.
  Again, for generalizing the concepts using category theory, we have to
  re-write the concepts using arrows. And again, this re-writing looks weired
  at the first sight.

  <\definition>
    [Direct Product of Two Objects] Given a category <math|<math-ss|C>>. For
    any <math|A,B\<in\><math-ss|C>>, the <with|font-series|bold|direct
    product> of <math|A> and <math|B> is another object
    <math|C\<in\><math-ss|C>> together with two morphisms
    <math|\<alpha\>:C\<rightarrow\>A> and <math|\<beta\>:C\<rightarrow\>B>
    such that, for any <math|C<rprime|'>\<in\><math-ss|C>>, any
    <math|\<alpha\><rprime|'>:C<rprime|'>\<rightarrow\>A> and
    <math|\<beta\><rprime|'>:C<rprime|'>\<rightarrow\>B>, there exists an
    unique morphism <math|\<gamma\>:C<rprime|'>\<rightarrow\>C> so that
    <math|\<alpha\><rprime|'>=\<alpha\>\<circ\>\<gamma\>> and
    <math|\<beta\><rprime|'>=\<beta\>\<circ\>\<gamma\>>.
  </definition>

  So, a direct product of objects <math|A> and <math|B> and a triplet
  <math|<around*|(|C,\<alpha\>,\<beta\>|)>>. The same for direct sum.

  <\definition>
    [Direct Product of Sum Objects] Given a category <math|<math-ss|C>>. For
    any <math|A,B\<in\><math-ss|C>>, the <with|font-series|bold|direct
    product> of <math|A> and <math|B> is another object
    <math|C\<in\><math-ss|C>> together with two morphisms
    <math|\<alpha\>:A\<rightarrow\>C> and <math|\<beta\>:B\<rightarrow\>C>
    such that, for any <math|C<rprime|'>\<in\><math-ss|C>>, any
    <math|\<alpha\><rprime|'>:A\<rightarrow\>C<rprime|'>> and
    <math|\<beta\><rprime|'>:B\<rightarrow\>C<rprime|'>>, there exists an
    unique morphism <math|\<gamma\>:C\<rightarrow\>C<rprime|'>> so that
    <math|\<alpha\><rprime|'>=\<gamma\>\<circ\>\<alpha\>> and
    <math|\<beta\><rprime|'>=\<gamma\>\<circ\>\<beta\>>.
  </definition>

  Notice that flipping arrows in composition <math|f\<circ\>g> gives
  <math|g\<circ\>f>. With the aid of this, we find that the definitions of
  direct product and of direct sum are dual. Even though this is
  superficially distinct from the definitions in set theory, but they are
  equivalent, as you can check directly.

  There are two benefits brought by re-writing by arrows. The first is about
  generalization. Re-writing by arrows can generalize the concepts from set
  theory to more mathematical domains, like group theory. Indeed, from these
  new definitions, we get the direct product and direct sum of groups, in the
  category <math|<math-ss|Grp>>.

  The other benefits is about duality. To see this, we claim a non-trivial
  theorem about direct product, and see that a non-trivial theorem about
  direct sum is fulfilled on its own. This theorem claims that the direct
  product is, in the sense of isomorphism, unique.

  <\theorem>
    [Uniqueness of Direct Product] Given a category <math|<math-ss|C>>. For
    any <math|A,B\<in\><math-ss|C>> and any two direct products
    <math|<around*|(|C,\<alpha\>,\<beta\>|)>> and
    <math|<around*|(|C<rprime|'>,\<alpha\><rprime|'>,\<beta\><rprime|'>|)>>.
    Then, there exists an unique isomorphism
    <math|\<gamma\>:C<rprime|'>\<rightarrow\>C> such that
    <math|\<alpha\><rprime|'>=\<alpha\>\<circ\>\<gamma\>> and
    <math|\<beta\><rprime|'>=\<beta\>\<circ\>\<gamma\>>.
  </theorem>

  That is, <math|C> and <math|C<rprime|'>>, <math|\<alpha\>> and
  <math|\<alpha\><rprime|'>>, <math|\<beta\>> and <math|\<beta\><rprime|'>>
  are equivalent in the sense of isomorphism.

  <\proof>
    \;
  </proof>

  By flipping the arrows in the theorem and its proof, we get the theorem
  claims that the direct sum is unique, in the sense of isomorphism.

  <\theorem>
    [Uniqueness of Direct Sum] Given a category <math|<math-ss|C>>. For any
    <math|A,B\<in\><math-ss|C>> and any two direct products
    <math|<around*|(|C,\<alpha\>,\<beta\>|)>> and
    <math|<around*|(|C<rprime|'>,\<alpha\><rprime|'>,\<beta\><rprime|'>|)>>.
    Then, there exists an unique isomorphism
    <math|\<gamma\>:C\<rightarrow\>C<rprime|'>> such that
    <math|\<alpha\><rprime|'>=\<gamma\>\<circ\>\<alpha\>> and
    <math|\<beta\><rprime|'>=\<gamma\>\<circ\>\<beta\>>.
  </theorem>

  You see, it is free lunch.

  <subsection|Morphisms in the Dual Category of <math|<math-ss|Set>> are Not
  Maps>

  There are also dual categories. The dual of <math|<math-ss|Set>> is denoted
  by <math|<math-ss|Set><rsup|op>>, wherein all arrows are flipped. So, in
  <math|<math-ss|Set><rsup|op>>, we find that arrows are not functions, not
  even maps! Yet another example whose morphisms are not maps.

  <section|Functor>

  <subsection|Functor is the Morphism of the Category of Categories>

  We need some examples of category to introduce the next core concept of
  category theory: functor. The first example is the category of topological
  spaces.

  <\definition>
    [Category of Topological Spaces] The <with|font-series|bold|category of
    topological spaces>, denoted as <math|<math-ss|Top>>, has the collection
    of all topological spaces as its objects, and for each
    <math|A,B\<in\><math-ss|Top>>, the collection of all continuous maps from
    <math|A> to <math|B> as its morphisms from <math|A> to <math|B>.
  </definition>

  The next example is the categroy of groups.

  <\definition>
    [Category of Groups] The <with|font-series|bold|category of groups>,
    denoted as <math|<math-ss|Grp>>, has the collection of all groups as its
    objects, and for each <math|A,B\<in\><math-ss|Top>>, the collection of
    all homomorphisms from <math|A> to <math|B> as its morphisms from
    <math|A> to <math|B>.
  </definition>

  From these two examples, we find an almost free method to construct a
  category out of objects. That is, a method to assign the morphisms. This
  method employs the maps that preserve the structure of object as the
  morphisms. For example, in <math|<math-ss|Top>>, the preserved structure is
  continuity, and in <math|<math-ss|Grp>>, it is the group structure.

  Notice that the objects of a category can be anything. So, it can also be
  categories! To construct a category out of categories, the morphisms
  between two categories can be the maps that preserve the structure of
  category. These structure preserving maps in the category of categories are
  functors.

  <\definition>
    [Functor] Given two categories <math|<math-ss|C>> and <math|<math-ss|D>>,
    a <with|font-series|bold|functor> <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>
    maps

    <\itemize>
      <item>for <math|\<forall\>A\<in\><math-ss|C>>,
      <math|F<around*|(|A|)>\<in\><math-ss|D>>, and

      <item>for <math|\<forall\>A,B\<in\><math-ss|C>> and
      <math|\<forall\>f:A\<rightarrow\>B>,
      <math|F<around*|(|f|)>:F<around*|(|A|)>\<rightarrow\>F<around*|(|B|)>>,
    </itemize>

    such that the structure of category is preserved, that is

    <\itemize>
      <item><with|font-series|bold|composition>: for
      <math|\<forall\>A,B,C\<in\><math-ss|C>> and
      <math|f:A\<rightarrow\>B,g:B\<rightarrow\>C>,
      <math|F<around*|(|f\<circ\>g|)>=F<around*|(|f|)>\<circ\>F<around*|(|g|)>>,

      <item><with|font-series|bold|identity>: for
      <math|\<forall\>A\<in\><math-ss|C>><math|>,
      <math|F<around*|(|1<rsub|A>|)>=1<rsub|F<around*|(|A|)>>>.
    </itemize>
  </definition>

  Imagine a category as a series of diagrams with colored dots and arrows
  between dots. The apply of a functor enlarges the size of the dots and
  arrows, indicating that it has become another category, but the structure,
  or form, of the diagrams are invariant.

  <section|Natural Transformation>
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.2|5>>
    <associate|auto-11|<tuple|2.3|5>>
    <associate|auto-12|<tuple|3|5>>
    <associate|auto-13|<tuple|3.1|5>>
    <associate|auto-14|<tuple|4|?>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|1.2|2>>
    <associate|auto-5|<tuple|1.3|3>>
    <associate|auto-6|<tuple|1.4|3>>
    <associate|auto-7|<tuple|1.5|4>>
    <associate|auto-8|<tuple|2|4>>
    <associate|auto-9|<tuple|2.1|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Category,
      Functor, and Natural Transformation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Category>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>A Proof can be Universal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Category is about Arrows
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Objects may not be Sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Morphisms may not be Maps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Category Describes
      Universality <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Duality>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Supremum and Infimum are
      Dual <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Duality Furnishes Free Lunch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>The Dual Category of
      <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Set>>>>
      is Weired <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Functor>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Natural
      Transformation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>