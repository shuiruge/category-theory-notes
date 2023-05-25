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
      <math|mor<rsub|<math-ss|C>><around*|(|A,B|)>>, where <math|A> is the
      <with|font-series|bold|domain> and <math|B> the
      <with|font-series|bold|codomain>,

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
    [Category of Sets] The <with|font-series|bold|category of sets>, denoted
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
  infimum and domain by codomain (for instance, replaced
  <math|y\<rightarrow\>x> by <math|x\<rightarrow\>y>). Two statements are
  <with|font-series|bold|dual> if you can get one from the other by simply
  flipping all the arrows, or, equivalently, by exchanging the domain and
  codomain for each morphism in the statement. We say that supremum and
  infimum are dual.

  <subsection|Morphisms in the Dual Category of <math|<math-ss|Set>> are Not
  Maps>

  There are also dual categories. Given a category <math|<math-ss|C>>, its
  <with|font-series|bold|dual category>, denoted by
  <math|<math-ss|C><rsup|op>>, is obtained from <math|<math-ss|C>> by
  exchanging the domain and codomain for each morphism in <math|<math-ss|C>>.

  So, in the dual category of <math|<math-ss|Set>>, i.e.
  <math|<math-ss|Set><rsup|op>>, we find that arrows are not functions, not
  even maps! Yet another example whose morphisms are not maps.

  <subsection|Arrows Generalize Concepts and Theorems from One Area to Every
  Area in Mathemtatics>

  Why category theory? Or say, why arrows? One benefit of re-claim everything
  in arrows is the ability of generalizing a concept in one area to area
  domain in mathematics. An example comes from generalizing the Cartesian
  product, also called direct product, in the set theory.

  You have been familiar with the direct product of two sets. Given two sets
  <math|A> and <math|B>, recall that the direct product
  <math|A\<times\>B\<assign\><around*|{|*<around*|(|a,b|)>\|a\<in\>A,b\<in\>B|}>>.
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
  <math|<around*|(|C,\<alpha\>,\<beta\>|)>>. Applying to
  <math|<math-ss|Set>>, as you can check directly, it goes back to the
  Cartesian product of two sets. We can also apply it to
  <math|<math-ss|Grp>>, which furnishes the group direct product:

  <\definition>
    [Group Direct Product] Given two groups <math|G> and <math|H>, the
    <with|font-series|bold|group direct product> of <math|G> and <math|H> is
    defined as <math|<around*|{|<around*|(|g,h|)>\|g\<in\>G,h\<in\>H|}>>
    equipped with group multiplication <math|<around*|(|g,h|)>\<times\><around*|(|g<rprime|'>,h<rprime|'>|)>\<assign\><around*|(|g\<circ\>g<rprime|'>,h\<cdot\>h<rprime|'>|)>>
    where <math|\<circ\>> is the muliplication of <math|G> and
    <math|\<cdot\>> of <math|H>.
  </definition>

  It is like the Cartesian product, but extra structure are implied.

  Also, all specific categories would be benefited from a theorem claimed in
  category theory. Such as the uniqueness of direct product in the sense of
  isomorphism.

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

  This theorem holds not only for Cartesian product of sets, but also, for
  instance, for the group direct product.

  <subsection|Sub-Blah is Nothing but An Arrow>

  Yet another example illustrating that arrows help generalize concepts is
  the sub-blah. For instance, subset, subgroup, and subspace in topology.
  These relates to subobject, which is the concept generalized by arrows.

  <\definition>
    [Subobject] Given a category <math|<math-ss|C>>, for each
    <math|A,B\<in\><math-ss|C>>, <math|B> is a
    <with|font-series|bold|subobject> of <math|A> if there exists a morphism
    <math|f:A\<rightarrow\>B>.
  </definition>

  This holds naturally for <math|<math-ss|Set>>, where morphism is map. Since
  morphisms in <math|<math-ss|Grp>> or <math|<math-ss|Top>> are structure
  preserving maps, then this definition holds also for subgroup or subspace
  of toplogy.

  <subsection|Duality is Free Lunch>

  Another benefit of viewing everything in arrows is duality. In category
  theory, it is natural to think what would happen if we exchange domain and
  codomain for all the arrows. Just like the relation between supremum and
  infimum, it is natural to ask what if we exchange domain and codomain for
  all the arrows in the definition of direct product. This furnishes a new
  concept we called direct sum.

  <\definition>
    [Direct Sum of Two Objects] Given a category <math|<math-ss|C>>. For any
    <math|A,B\<in\><math-ss|C>>, the <with|font-series|bold|direct product>
    of <math|A> and <math|B> is another object <math|C\<in\><math-ss|C>>
    together with two morphisms <math|\<alpha\>:A\<rightarrow\>C> and
    <math|\<beta\>:B\<rightarrow\>C> such that, for any
    <math|C<rprime|'>\<in\><math-ss|C>>, any
    <math|\<alpha\><rprime|'>:A\<rightarrow\>C<rprime|'>> and
    <math|\<beta\><rprime|'>:B\<rightarrow\>C<rprime|'>>, there exists an
    unique morphism <math|\<gamma\>:C\<rightarrow\>C<rprime|'>> so that
    <math|\<alpha\><rprime|'>=\<gamma\>\<circ\>\<alpha\>> and
    <math|\<beta\><rprime|'>=\<gamma\>\<circ\>\<beta\>>.
  </definition>

  Again, a direct sum of objects <math|A> and <math|B> and a triplet
  <math|<around*|(|C,\<alpha\>,\<beta\>|)>>. Comparing with direct product,
  direct sum is nothing but exchanging domain and codomain for all the arrows
  in the statement of direct product.

  Applying to <math-ss|<math|Set>>, as it can be directly checked, we get the
  disjoint union of two sets. Given two sets <math|A> and <math|B>, recall
  that the disjoint union <math|A\<cup\><rsub|d>B:=<around*|{|<around*|(|a,1|)>\|a\<in\>A|}>\<cup\><around*|{|<around*|(|b,2|)>\|b\<in\>B|}>>.
  This is a surprise, since, unlike the duality between supremum and infimum,
  Cartesian product and disjoint union do not look like a pair at the first
  sight!

  Recall the theorem that direct product is unique in the sense of
  isomorphism. If we also exchange domain and codomain for all the arrows in
  the statement of the theorem, as well as in the statement of its proof,
  then we get another theorem: direct sum is unique in the sense of
  isomorphism, without re-do the proof!

  As a summary, the duality in category theory furnishes free lunch, which
  include not only the dual concepts that are very generic, but also the dual
  theorems that need no proof. All about is flipping arrows.

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

  <subsection|Discrete Category is as Simple as Aplysia>

  Aplysia is an invertebrate animal living in the sea. It has a simple neural
  system, with large neurons. Because of this simplicity, we can do more
  experiments on it quickly and easily. Aplysia, thus, contribute quite a lot
  in the study of neural science.

  In category theory, there are some categories like aplysia. For example, a
  monoid is a category where the <math|ob> is simple (<math|ob> has only one
  element). Now, we introduce the opposing example, the distrete category,
  where <math|mor> is simple (<math|mor<around*|(|A,B|)>> has only one
  element, for each <math|A,B\<in\>ob>).

  <\definition>
    [Discrete Category] A <with|font-series|bold|discrete category>
    <math|<math-ss|D>> is a category in which for each
    <math|A\<in\><math-ss|D>>, <math|mor<rsub|<math-ss|D>><around*|(|A,A|)>=<around*|{|1<rsub|A>|}>>,
    and for each <math|A,B\<in\><math-ss|D>> with <math|A\<neq\>B>,
    <math|mor<rsub|<math-ss|D>><around*|(|A,B|)>=\<oslash\>>. That is, there
    is only identity morphism from an object to itself; and there is not
    morphism between distinct objects.
  </definition>

  So, a discrete category can be directly constructed out of a set. It is
  free of charge. You may remember the discrete topology, which is the same
  situation. (So, you may think the universal property held by the discrete
  topology may be held also for discrete category. That is, given a set
  <math|S>, for any category <math|<math-ss|X>> and any function
  <math|f:S\<rightarrow\><math-ss|X>>, there exists an unique functor
  <math|F:<math-ss|D>\<rightarrow\><math-ss|X>> such that
  <math|f=F\<circ\><math-ss|D>>, where the <math|<math-ss|D>> indicates the
  constructor, as in the case of discrete topology. If so, then by the
  theorem of uniqueness, discrete category is the unique, up to isomorphism,
  category that satisfies this universal property.)

  What is a functor between two discrete categories? It is quite simple: just
  a function between the <math|ob>s of them. So, in discrete categories,
  functor is reduced to function, which would be much better for
  understanding, since set theory is much familiar for us.

  As we will see, the concept natural transformation is quite complicated and
  abstract. Discrete category would be an aplysia for illustrating what
  natural transformation is.

  <subsection|Haskell's Compiler can Make Magic>

  In Haskell <\footnote>
    A concise cheat sheet of Haskell syntax can be found on
    <hlink|Hackage|https://hackage.haskell.org/package/CheatSheet-1.10/src/CheatSheet.pdf>.
  </footnote>, there is a category called <math|<math-ss|Hask>>, in which
  objects are types and morphisms are functions between types. For instance,
  <samp|Int> is a type, and <samp|Float> is another. A function <samp|floor>
  converts a <samp|Float> to an <samp|Int>, as

  <\code>
    floor :: Float -\<gtr\> Int
  </code>

  Functor is everywhere in Haskell. For example, <samp|List> is a functor.
  Indeed, list as a functor accepts a type (category) <samp|a> to furnish
  another type <samp|List a>, applying to morphism as follow.

  <\code>
    instance Functor List where

    \ \ -- Applied to morphism

    \ \ fmap :: a -\<gtr\> b -\<gtr\> List a -\<gtr\> List b

    \ \ fmap = map
  </code>

  \P<samp|Maybe>\Q is another functor. It is used for substituting the
  <samp|None> in Python for an unified data type. It consists of
  <samp|Nothing> (for <samp|None>) and <samp|Just x> for any variable
  <samp|x>, applying to morphism as follow.

  <\code>
    <\code>
      instance Functor Maybe where

      \ \ -- Applied to morphism

      \ \ fmap :: a -\<gtr\> b -\<gtr\> Maybe a -\<gtr\> Maybe b

      \ \ fmap f Nothing = Nothing

      \ \ fmap f Just x = Just (f x)
    </code>
  </code>

  In haskell, you can do some magic. For example, given a list, we first map
  a function <math|f> to every element of the list, and then get the head of
  the mapped list. And if the given list is empty, <samp|Nothing> shoud be
  returned. So, we have

  <\code>
    head :: List a -\<gtr\> Maybe a
  </code>

  In fact, the <samp|a> is irrelevant to our operation. So <samp|head> is a
  map between two functors <samp|List> and <samp|Maybe>. Interestingly, the
  compiler knows that, for any function <samp|f>,

  <\code>
    head . (fmap f) == (fmap f) . head
  </code>

  Notice that the type of LHS and of RHS of the equality are different:

  <\code>
    -- Let f :: a -\<gtr\> b

    LHS :: List a -\<gtr\> List b -\<gtr\> Maybe b

    RHS :: List a -\<gtr\> Maybe a -\<gtr\> Maybe b
  </code>

  With this, we can compute <samp|head> before <samp|fmap> on a list, which
  would be much faster if the list size is large. The reason why the compiler
  knows this property is that <samp|head> is declared as natural
  transformation, for which this very property is ensured. As you can see,
  declaring some function as natural transformation is very important in
  Haskell.

  <subsection|Natural Transformation is the Morphism of the Category of
  Functors>

  As we have defined category, and as we have built a category out of
  categories by defining functor, we can also build a category out of
  functors by defining natural transformation. Precisely, given two
  categories <math|<math-ss|C>> and <math|<math-ss|D>>, we have the
  collection of all functors from <math|<math-ss|C>> to <math-ss|D> as
  objects. But, given two functor <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>,
  what is the morphism between <math|F> and <math|G>?

  Remember the case in <math|<math-ss|Top>> and <math|<math-ss|Grp>>, for
  which we construct the category out of the objects; the morphism between
  two objects are the structure perserving map. The same goes for the
  category of functors, in which we know what the objects are and have to
  define the morphisms. So, what is the structure of functor? For each
  <math|A,B\<in\><math-ss|C>> and <math|f:A\<rightarrow\>B>, while <math|F>
  maps <math|A> to <math|F<around*|(|A|)>> and <math|B> to
  <math|F<around*|(|B|)>>, it shall also map <math|f> to
  <math|F<around*|(|f|)>>. In another word,
  <math|F<around*|(|f|)>\<circ\>F=F\<circ\>f>. This is the structure of
  functor. You can imagine that all dots and arrows are transformed to
  another style, with the forms of diagram invariant.\ 

  So, letting <math|\<alpha\>:F\<rightarrow\>G> be the morphism from <math|F>
  to <math|G>, while <math|\<alpha\>> maps <math|F<around*|(|A|)>> to
  <math|G<around*|(|A|)>> and <math|F<around*|(|B|)>> to
  <math|G<around*|(|B|)>>, it shall also map <math|F<around*|(|f|)>> to
  <math|G<around*|(|f|)>>. In another word,
  <math|G<around*|(|f|)>\<circ\>\<alpha\>=\<alpha\>\<circ\>F<around*|(|f|)>>.
  With the same metaphor, the action of <math|\<alpha\>> is like changing the
  style of dots and arrows from style <math|F> to style <math|G>.

  Notice that this is consistent with the <samp|head> in Haskell. Given any
  two specific types (two objects) <samp|a> and <samp|b>, <math|F f>
  corresponds to the <samp|fmap f> on <samp|List>, and <math|G f> to the
  <samp|fmap f> on <samp|Maybe>. The statement
  <math|G<around*|(|f|)>\<circ\>\<alpha\>=\<alpha\>\<circ\>F<around*|(|f|)>>,
  then, corresponds to <samp|(fmap f) . head == head . (fmap f)>.

  As a summary, we have introduced the structure preserving map between
  functors, called natural transformation, as follow.

  <\definition>
    [Natural Transformation] Given two categories <math|<math-ss|C>> and
    <math|<math-ss|D>>, and two functors <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>,
    map <math|\<alpha\>:F\<rightarrow\>G> is a <with|font-series|bold|natural
    transformation> <math|\<alpha\>> is defined as the family
    <math|<around*|{|\<alpha\><rsub|A>:F<around*|(|A|)>\<rightarrow\>G<around*|(|A|)>\|A\<in\><math-ss|C>|}>>
    that satisfies the axiom:

    <\itemize>
      <item>for each <math|A,B\<in\><math-ss|C>> and each
      <math|f:A\<rightarrow\>B>, we have <math|G<around*|(|f|)>\<circ\>\<alpha\><rsub|A>=\<alpha\><rsub|B>\<circ\>F<around*|(|f|)>>.
    </itemize>
  </definition>

  <\notation>
    The category of functors between category <math|<math-ss|C>> and category
    <math|<math-ss|D>> is denoted by <math|<around*|[|<math-ss|C>,<math-ss|D>|]>>.
  </notation>

  <subsection|Isomorphic Objects should be Viewed as One>

  Isomorphic topological spaces are the same. The same is for the isomorphic
  groups, isomorphic vector spaces, and so on. So, we should view isomorphic
  objects are one object. If visualizing a category as diagrams of dots and
  arrows between dots, then we should pinch two isomorphic objects together.
  This leads to equivalent, but simplified, diagrams. The category obtained
  by pinching isomorphic objects as one in category <math|<math-ss|C>> is
  called the <with|font-series|bold|skeleton> of <math|<math-ss|C>>.
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
    <associate|auto-10|<tuple|1.8|5>>
    <associate|auto-11|<tuple|1.9|5>>
    <associate|auto-12|<tuple|1.10|6>>
    <associate|auto-13|<tuple|2|6>>
    <associate|auto-14|<tuple|2.1|7>>
    <associate|auto-15|<tuple|3|7>>
    <associate|auto-16|<tuple|3.1|8>>
    <associate|auto-17|<tuple|3.2|8>>
    <associate|auto-18|<tuple|3.3|8>>
    <associate|auto-19|<tuple|3.4|9>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|3.5|10>>
    <associate|auto-21|<tuple|3.5|10>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|1.2|2>>
    <associate|auto-5|<tuple|1.3|3>>
    <associate|auto-6|<tuple|1.4|4>>
    <associate|auto-7|<tuple|1.5|4>>
    <associate|auto-8|<tuple|1.6|4>>
    <associate|auto-9|<tuple|1.7|5>>
    <associate|footnote-1|<tuple|1|8>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnr-1|<tuple|1|8>>
    <associate|footnr-2|<tuple|2|?>>
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

      <with|par-left|<quote|1tab>|1.6<space|2spc>Supremum and Infimum are
      Dual <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Surjection and Injection are
      Dual <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Morphisms in the Dual
      Category of <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Set>>>>
      are Not Maps <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|1.9<space|2spc>Arrows Generalize Concepts
      and Theorems from One Area to Every Area in Mathemtatics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Sub-Blah is Nothing but An
      Arrow <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|1.11<space|2spc>Duality is Free Lunch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Functor>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Functor is the Morphism of
      the Category of Categories <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Natural
      Transformation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Discrete Category is as
      Simple as Aplysia <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Haskell's Compiler can Make
      Magic <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Natural Transformation is
      the Morphism of the Category of Functors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Isomorphic Objects should be
      Viewed as One <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>What is Equivalence between
      Categories? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>
    </associate>
  </collection>
</auxiliary>