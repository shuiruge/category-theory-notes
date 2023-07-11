<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Category, Functor, and Natural Transformation><label|chapter:
  Category, Functor, and Natural Transformation>

  <with|font|TeX Gyre Schola|><section|Category>

  <subsection|Category is about arrows>

  Category is the fundamental element of category theory. A category consists
  of arrows and objects, which are employed to declare arrows: where an arrow
  emits, and where it ends. Moreover, several properties relating to these
  components should be satisfied.

  Strangely, in category, arrow is called morphism, a word derived from
  isomorphism. And isomorphism is constructed from iso-morphe-ism, where
  morphe, a Greek word, means shape or form. So, isomorphism means equal
  shape or form. This can be easily illustrated in topology, where the two
  isomorphic topological space share the same form (but may not the same
  shape). But semantically, this is far from what arrow should mean. So, the
  question is why mathematician use the word morphism for arrow. A guess is
  that it may come from homomorphism; and in algebra, a homomorphism is an
  arrow between algebraic structures.

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
      furnishes a morphism <math|g\<circ\>f\<in\>mor<rsub|<math-ss|C>><around*|(|A,C|)>>,
      and

      <item>for each <math|A\<in\>ob<rsub|<math-ss|C>>>, an
      <with|font-series|bold|identity> <math|1<rsub|A>\<in\>mor<rsub|<math-ss|C>><around*|(|A,A|)>>,
    </itemize>

    such that the following axioms are satisfied:

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
    <math|f:A\<rightarrow\>B>, <math|A<above|\<longrightarrow\>|f>B>, or
    <math|f\<in\><math-ss|C><around*|(|A,B|)>>.
  </notation>

  Now, category becomes much more familiar to us. We can think the objects of
  <math|<math-ss|C>> as sets, and morphism as function, which is the map
  between sets. Indeed, the collection of sets and functions does form a
  category: the category of sets.

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

  Indeed, there exist categories whose objects are not sets, or whose
  morphisms are not maps. So, a better way of thinking category is keeping
  objects and morphisms abstract. You can think objects as dots and morphisms
  as arrows between the dots.

  <subsection|Objects may not be sets>

  We know that <hlink|the symmetry group of rectangle is dihedral group
  <math|D<rsub|2>>|https://proofwiki.org/wiki/Definition:Symmetry_Group_of_Rectangle>.
  The group elements are operations: identity, rotation of <math|180>
  degrees, and reflections along vertical and horizontal directions. The
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
    <math|f\<circ\>g=1<rsub|B>>. Denote <math|A\<cong\>B> if <math|A> and
    <math|B> are isomorphic.
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
    [Group as Category] A <with|font-series|bold|group> is a groupid in which
    there is only one object.
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

  <subsection|Morphisms may not be maps>

  To illustrate that morphisms may not be maps, we need to define preorder
  and poset.

  <\definition>
    <label|definition: Preorder>[Preorder] Given a set <math|S>, a
    <with|font-series|bold|preorder> <math|P> on <math|S> is a subset of
    <math|S\<times\>S> such that the following axioms are satisfied:

    <\itemize>
      <item><with|font-series|bold|reflexivity>: for
      <math|\<forall\>a\<in\>S>, <math|<around*|(|a,a|)>\<in\>P>, and

      <item><with|font-series|bold|transitivity> for
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
    <label|definition: Poset>[Poset] A preordered set, or
    <with|font-series|bold|poset>, <math|<around*|(|S,P|)>> is a set <math|S>
    equipped with a preorder <math|P> on <math|S>.
  </definition>

  With these preliminaries, we claim that a poset is a category.

  <\definition>
    <label|definition: Poset as Category>[Poset as Category] Given poset
    <math|<around*|(|S,P|)>>, a category <math|<math-ss|Poset>> can be
    constructed by regarding the elements in <math|S> as objects and
    regarding <math|<around*|(|a,b|)>\<in\>P> as <math|a\<rightarrow\>b>.
  </definition>

  Because of the axioms of preorder, the axioms of category are satisfied.
  The category <math|<math-ss|Poset>> illustrates that morphisms are not
  maps. In <math|<math-ss|Poset>>, morphisms are \Pno greater than\Qs or \Pis
  subset of\Qs.

  <subsection|Supremum and infimum are dual><label|section: Supremum and
  infimum are dual>

  Arrows can represent many mathematical objects. For example, in
  <math-ss|<math|Poset>> with set <math|\<bbb-R\>> and preorder
  <math|\<leqslant\>>, we can describe supremum as follow.

  <\definition>
    [Supremum in Category] Given a subset <math|A\<subset\>\<bbb-R\>>. An
    <math|x\<in\>\<bbb-R\>> is the <with|font-series|bold|supremum> of
    <math|A> if it satisfies:

    <\itemize>
      <item>for <math|\<forall\>a\<in\>A>, <math|a\<rightarrow\>x> and,

      <item>for <math|\<forall\>y\<in\>\<bbb-R\>> and
      <math|\<forall\>a\<in\>A>, if <math|y\<rightarrow\>a>, then
      <math|y\<rightarrow\>x>.
    </itemize>
  </definition>

  This is, again, a weird definition on supremum. But, if you check
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

  Weird again, but now you may have been familiar with the weird. Hint: the
  word weird also has the meaning of fate. Indeed, you are on the load to
  wonderland. By comparing the definition of infimum to that of supremum, we
  find all statements are the same except that we replaced supremum by
  infimum and domain by codomain (for instance, replaced
  <math|y\<rightarrow\>x> by <math|x\<rightarrow\>y>). Two statements are
  <with|font-series|bold|dual> if you can get one from the other by simply
  flipping all the arrows, or, equivalently, by exchanging the domain and
  codomain for each morphism in the statement. We say that supremum and
  infimum are dual.

  <subsection|Morphisms in the dual category of <math|<math-ss|Set>> are not
  maps>

  There are also dual categories. Given a category <math|<math-ss|C>>, its
  <with|font-series|bold|dual category>, denoted by
  <math|<math-ss|C><rsup|op>>, is obtained from <math|<math-ss|C>> by
  exchanging the domain and codomain for each morphism in <math|<math-ss|C>>.

  So, in the dual category of <math|<math-ss|Set>>, i.e.
  <math|<math-ss|Set><rsup|op>>, we find that arrows are not functions, not
  even maps! Yet another example whose morphisms are not maps.

  <section|Why Category?>

  <subsection|Arrows generalize concepts and theorems from one area to every
  area in mathematics><label|section: Arrows generalize concepts and theorems
  from one area to every area in mathematics>

  Why category theory? Or say, why arrows? One benefit of re-claim everything
  in arrows is the ability of generalizing a concept in one area to area
  domain in mathematics. An example comes from generalizing the Cartesian
  product in the set theory.

  You have been familiar with the Cartesian product of two sets. Given two
  sets <math|A> and <math|B>, recall that the Cartesian product
  <math|A\<times\>B\<assign\><around*|{|*<around*|(|a,b|)>\|a\<in\>A,b\<in\>B|}>>.
  Again, for generalizing the concepts using category theory, we have to
  re-write the concepts using arrows. And again, this re-writing looks weird
  at the first sight.

  <\definition>
    <label|definition: Product of Two Objects>[Product of Two Objects] Given
    a category <math|<math-ss|C>>. For any <math|A,B\<in\><math-ss|C>>, the
    <with|font-series|bold|product> of <math|A> and <math|B> is another
    object <math|C\<in\><math-ss|C>> together with two morphisms
    <math|\<alpha\>:C\<rightarrow\>A> and <math|\<beta\>:C\<rightarrow\>B>
    such that, for any <math|C<rprime|'>\<in\><math-ss|C>>, any
    <math|\<alpha\><rprime|'>:C<rprime|'>\<rightarrow\>A> and
    <math|\<beta\><rprime|'>:C<rprime|'>\<rightarrow\>B>, there exists a
    unique morphism <math|\<gamma\>:C<rprime|'>\<rightarrow\>C> so that
    <math|\<alpha\><rprime|'>=\<alpha\>\<circ\>\<gamma\>> and
    <math|\<beta\><rprime|'>=\<beta\>\<circ\>\<gamma\>>.
  </definition>

  So, a product of objects <math|A> and <math|B> and a triplet
  <math|<around*|(|C,\<alpha\>,\<beta\>|)>>. Applying to
  <math|<math-ss|Set>>, as you can check directly, it goes back to the
  Cartesian product of two sets. We can also apply it to
  <math|<math-ss|Grp>>, which furnishes the group direct product:

  <\definition>
    [Group Direct Product] Given two groups <math|G> and <math|H>, the
    <with|font-series|bold|group direct product> of <math|G> and <math|H> is
    defined as <math|<around*|{|<around*|(|g,h|)>\|g\<in\>G,h\<in\>H|}>>
    equipped with group multiplication <math|<around*|(|g,h|)>\<times\><around*|(|g<rprime|'>,h<rprime|'>|)>\<assign\><around*|(|g\<circ\>g<rprime|'>,h\<cdot\>h<rprime|'>|)>>
    where <math|\<circ\>> is the multiplication of <math|G> and
    <math|\<cdot\>> of <math|H>.
  </definition>

  It is like the Cartesian product, but extra structure are
  <with|font-shape|italic|implied<underline|>>.

  Also, all specific categories would be benefited from a theorem claimed in
  category theory. Such as the uniqueness of product in the sense of
  isomorphism.

  <\theorem>
    [Uniqueness of Product] Given a category <math|<math-ss|C>>. For any
    <math|A,B\<in\><math-ss|C>> and any two products
    <math|<around*|(|C,\<alpha\>,\<beta\>|)>> and
    <math|<around*|(|C<rprime|'>,\<alpha\><rprime|'>,\<beta\><rprime|'>|)>>.
    Then, there exists a unique isomorphism
    <math|\<gamma\>:C<rprime|'>\<rightarrow\>C> such that
    <math|\<alpha\><rprime|'>=\<alpha\>\<circ\>\<gamma\>> and
    <math|\<beta\><rprime|'>=\<beta\>\<circ\>\<gamma\>>.
  </theorem>

  That is, <math|C> and <math|C<rprime|'>>, <math|\<alpha\>> and
  <math|\<alpha\><rprime|'>>, <math|\<beta\>> and <math|\<beta\><rprime|'>>
  are equivalent in the sense of isomorphism.

  <\proof>
    Left to reader.
  </proof>

  This theorem holds not only for Cartesian product of sets, but also, for
  instance, for the group direct product.

  <subsection|Duality Helps Create New Concepts and Theorems, Freely!>

  Another benefit of viewing everything in arrows is duality. In category
  theory, it is natural to think what would happen if we exchange domain and
  codomain for all the arrows. Just like the relation between supremum and
  infimum, it is natural to ask what if we exchange domain and codomain for
  all the arrows in the definition of product. This furnishes a new concept
  we called coproduct.

  <\definition>
    <label|definition: Coproduct of Two Objects>[Coproduct of Two Objects]
    Given a category <math|<math-ss|C>>. For any <math|A,B\<in\><math-ss|C>>,
    the <with|font-series|bold|coproduct> of <math|A> and <math|B> is another
    object <math|C\<in\><math-ss|C>> together with two morphisms
    <math|\<alpha\>:A\<rightarrow\>C> and <math|\<beta\>:B\<rightarrow\>C>
    such that, for any <math|C<rprime|'>\<in\><math-ss|C>>, any
    <math|\<alpha\><rprime|'>:A\<rightarrow\>C<rprime|'>> and
    <math|\<beta\><rprime|'>:B\<rightarrow\>C<rprime|'>>, there exists a
    unique morphism <math|\<gamma\>:C\<rightarrow\>C<rprime|'>> so that
    <math|\<alpha\><rprime|'>=\<gamma\>\<circ\>\<alpha\>> and
    <math|\<beta\><rprime|'>=\<gamma\>\<circ\>\<beta\>>.
  </definition>

  Again, a coproduct of objects <math|A> and <math|B> and a triplet
  <math|<around*|(|C,\<alpha\>,\<beta\>|)>>. Comparing with product,
  coproduct is nothing but exchanging domain and codomain for all the arrows
  in the statement of product.

  Applying to <math-ss|<math|Set>>, as it can be directly checked, we get the
  disjoint union of two sets. Given two sets <math|A> and <math|B>, recall
  that the disjoint union <math|A\<cup\><rsub|d>B:=<around*|{|<around*|(|a,1|)>\|a\<in\>A|}>\<cup\><around*|{|<around*|(|b,2|)>\|b\<in\>B|}>>.
  This is a surprise, since, unlike the duality between supremum and infimum,
  Cartesian product and disjoint union do not look like a pair at the first
  sight!

  Recall the theorem that product is unique in the sense of isomorphism. If
  we also exchange domain and codomain for all the arrows in the statement of
  the theorem, as well as in the statement of its proof, then we get another
  theorem: coproduct is unique in the sense of isomorphism, without re-do the
  proof!

  As a summary, the duality in category theory furnishes free lunch, which
  include not only the dual concepts that are very generic, but also the dual
  theorems that need no proof. All about is flipping arrows.

  <section|Functor>

  <subsection|Structure preserving map builds category out of objects>

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

  The next example is the category of groups.

  <\definition>
    [Category of Groups] The <with|font-series|bold|category of groups>,
    denoted as <math|<math-ss|Grp>>, has the collection of all groups as its
    objects, and for each <math|A,B\<in\><math-ss|Grp>>, the collection of
    all homomorphisms from <math|A> to <math|B> as its morphisms from
    <math|A> to <math|B>.
  </definition>

  From these two examples, we find an almost free method to construct a
  category out of objects. That is, a method to assign the morphisms. This
  method employs the maps that preserve the structure of object as the
  morphisms. For example, in <math|<math-ss|Top>>, the preserved structure is
  continuity, and in <math|<math-ss|Grp>>, it is the group structure.

  <subsection|Functor is the morphism of the category of categories>

  Notice that the objects of a category can be anything. So, it can also be
  categories! To construct a category out of categories, the morphisms
  between two categories can be the maps that preserve the structure of
  category. These structure preserving maps in the category of categories are
  functors.

  <\definition>
    [Functor] Given two categories <math|<math-ss|C>> and <math|<math-ss|D>>,
    a <with|font-series|bold|functor> <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>
    is a map that takes

    <\itemize>
      <item>for each <math|A\<in\><math-ss|C>>,
      <math|F<around*|(|A|)>\<in\><math-ss|D>>, and

      <item>for each <math|A,B\<in\><math-ss|C>> and each
      <math|f\<in\><math-ss|C><around*|(|A,B|)>>,
      <math|F<around*|(|f|)>\<in\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>,
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

  <big-figure|<image|figures/functor.png|0.5par|||>|<label|figure: Functor>
  Indicates the functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>. This
  diagram commutes.>

  Functor as morphism does build a category of categories. Indeed, functors
  can be composed by extending the commutative diagram <reference|figure:
  Functor> to the right (figure <reference|figure: Functor Composition>).
  Identity functor is the one that maps everything in a category to itself.
  Finally, associativity and identity axioms can be checked directly.

  <big-figure|<image|figures/functor-composition.png|0.75par|||>|<label|figure:
  Functor Composition> Extending the commutative diagram <reference|figure:
  Functor> to the right. This diagram commutes.>

  Imagine a category as a series of diagrams with dots and arrows between
  dots. The apply of a functor changes the style of the dots and arrows. This
  means it has become another category, but the structure, or form, of the
  diagrams are invariant.

  <subsection|Functor preserves the structure of category>

  It should be checked that functor preserves the structure of category.
  Comparing with the definition of category, functor has preserved
  composition and identity. So, we just have to prove that the axioms of
  category are also preserved.

  Directly, for each <math|A<above|\<rightarrow\>|f>B<above|\<rightarrow\>|g>C<above|\<rightarrow\>|h>D>
  in <math|<math-ss|C>>, we have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|F<around*|(|f|)>\<circ\>F<around*|(|g|)>|)>\<circ\>F<around*|(|h|)>>>|<row|<cell|<around*|{|composition
    of F|}>=>|<cell|F<around*|(|f\<circ\>g|)>\<circ\>F<around*|(|h|)>>>|<row|<cell|=>|<cell|F<around*|(|<around*|(|f\<circ\>g|)>\<circ\>h|)>>>|<row|<cell|<around*|{|associativity
    of <math-ss|C>|}>=>|<cell|F<around*|(|f\<circ\><around*|(|g\<circ\>h|)>|)>>>|<row|<cell|<around*|{|composition
    of F|}>=>|<cell|F<around*|(|f|)>\<circ\>F<around*|(|g\<circ\>h|)>>>|<row|<cell|=>|<cell|F<around*|(|f|)>\<circ\><around*|(|F<around*|(|g|)>\<circ\>F<around*|(|h|)>|)>,>>>>
  </align>

  so the associativity axiom is preserved. And, for each
  <math|f:A\<rightarrow\>B> in <math|<math-ss|C>>, since

  <\align>
    <tformat|<table|<row|<cell|>|<cell|F<around*|(|f|)>\<circ\>F<around*|(|1<rsub|A>|)>>>|<row|<cell|<around*|{|identity
    of F|}>=>|<cell|F<around*|(|f|)>\<circ\>1<rsub|F<around*|(|A|)>>>>|<row|<cell|<around*|{|identity
    of <math-ss|D>|}>=>|<cell|1<rsub|F<around*|(|B|)>>\<circ\>F<around*|(|f|)>>>|<row|<cell|<around*|{|identity
    of F|}>=>|<cell|F<around*|(|1<rsub|B>|)>\<circ\>F<around*|(|f|)>,>>>>
  </align>

  the identity axiom is preserved.

  <subsection|Surjective functor may not be full><label|section: Surjective
  functor may not be full>

  Since functor preserves the structure of category, the image of a functor
  should be a subcategory of the codomain of the functor. Explicitly, given a
  functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>, the image
  <math|F<around*|(|<math-ss|C>|)>> is a subcategory of <math|<math-ss|D>>.
  Naturally, we can consider if the subcategory
  <math|F<around*|(|<math-ss|C>|)>> is <math|<math-ss|D>> itself. Naturally,
  you may think that <math|F<around*|(|<math-ss|C>|)>=<math-ss|D>> if for
  each object <math|A<rprime|'>\<in\><math-ss|D>>, there exists an object
  <math|A\<in\><math-ss|C>> such that <math|F<around*|(|A|)>=A<rprime|'>>.
  This, however, is not true.

  A functor is not a map. In fact, it has two maps as components: the map on
  objects and that on morphisms. So, <math|F<around*|(|<math-ss|C>|)>> can
  still be a proper subcategory of <math|<math-ss|D>> even though the map
  <math|F:ob<rsub|<math-ss|C>>\<rightarrow\>ob<rsub|<math-ss|D>>> is
  surjective, as long as for some objects <math|A,B\<in\><math-ss|C>>, the
  map <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is not. So, for functor, we have to distinguish two kinds of surjection.
  One is that the map <math|F:ob<rsub|<math-ss|C>>\<rightarrow\>ob<rsub|<math-ss|D>>>
  is surjective, for which we say <math|F> is
  <with|font-series|bold|surjective on objects>. The other is that, for every
  <math|A,B\<in\><math-ss|C>>, the map <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is surjective, for which we say <math|F> is <with|font-series|bold|full>.

  Surjection on objects and fullness are two independent properties of
  functor. We may find a functor is not surjective on objects, but is full.
  That is, there is object in <math|<math-ss|D>> that is out of the image of
  <math|F>, but for every two objects in the image of <math|F>, say
  <math|F<around*|(|A|)>> and <math|F<around*|(|B|)>>, the map on morphisms
  <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is surjective.

  <subsection|Injective functor may not be faithful><label|section: Injective
  functor may not be faithful>

  The same discussion applies for the injection of functor. Again, you may
  think that <math|F<around*|(|<math-ss|C>|)>> can still be multiple-to-one
  correspondent to <math|<math-ss|C>> even though the map
  <math|F:ob<rsub|<math-ss|C>>\<rightarrow\>ob<rsub|<math-ss|D>>> is
  injective, as long as for some objects <math|A,B\<in\><math-ss|C>>, the map
  <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is not. So, again, there are two kinds of injection. One is that map
  <math|F:ob<rsub|<math-ss|C>>\<rightarrow\>ob<rsub|<math-ss|D>>> is
  injective, for which we say <math|F> is <with|font-series|bold|injective on
  objects>. The other is that, for every <math|A,B\<in\><math-ss|C>>, the map
  <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is injective, for which we say <math|F> is
  <with|font-series|bold|faithful>.

  For the same reason, injection on objects and faithfulness are two
  independent properties of functor.

  <subsection|Fully faithful functor reflects isomorphisms>

  Fully faithful functor is found to be important because it reflects
  isomorphisms. To be clear, recall that notation <math|X\<cong\>Y> means
  there is an isomorphism between objects <math|X> and <math|Y>, we have the
  following lemma.

  <\lemma>
    <label|lemma: Fully Faithful Functor>[Fully Faithful Functor] Given a
    fully faithful functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    some <math|X,Y\<in\><math-ss|C>>, we have

    <\equation*>
      X\<cong\>Y\<Leftrightarrow\>F<around*|(|X|)>\<cong\>F<around*|(|Y|)>.
    </equation*>
  </lemma>

  <\proof>
    First, we are to prove that <math|X\<cong\>Y\<Rightarrow\>F<around*|(|X|)>\<cong\>F<around*|(|Y|)>>.
    The <math|X\<cong\>Y> means there exists
    <math|\<alpha\>:X\<rightarrow\>Y> and <math|\<beta\>:Y\<rightarrow\>Z>
    such that <math|\<beta\>\<circ\>\<alpha\>=1<rsub|X>> and
    <math|\<alpha\>\<circ\>\<beta\>=1<rsub|Y>>. By the composition axiom, we
    have <math|F<around*|(|\<beta\>\<circ\>\<alpha\>|)>=F<around*|(|\<beta\>|)>\<circ\>F<around*|(|\<alpha\>|)>>.
    And by the identity axiom, we have <math|F<around*|(|1<rsub|X>|)>=1<rsub|F<around*|(|X|)>>>.
    So, we have <math|F<around*|(|\<beta\>|)>\<circ\>F<around*|(|\<alpha\>|)>=1<rsub|F<around*|(|X|)>>>.
    The same, we get <math|F<around*|(|\<alpha\>|)>\<circ\>F<around*|(|\<beta\>|)>=1<rsub|F<around*|(|Y|)>>>.
    This simply means <math|F<around*|(|X|)>\<cong\>F<around*|(|Y|)>>.

    Then, we are to prove that <math|F<around*|(|X|)>\<cong\>F<around*|(|Y|)>\<Rightarrow\>X\<cong\>Y>.
    The <math|F<around*|(|X|)>\<cong\>F<around*|(|Y|)>> means there exists
    <math|\<omega\>:F<around*|(|X|)>\<rightarrow\>F<around*|(|Y|)>> and
    <math|\<zeta\>:F<around*|(|Y|)>\<rightarrow\>F<around*|(|X|)>> such that
    <math|\<zeta\>\<circ\>\<omega\>=1<rsub|F<around*|(|X|)>>> and
    <math|\<omega\>\<circ\>\<zeta\>=1<rsub|F<around*|(|Y|)>>>. Since <math|F>
    is full, we must have <math|\<alpha\>:X\<rightarrow\>Y> and
    <math|\<beta\>:Y\<rightarrow\>X> such that
    <math|\<omega\>=F<around*|(|\<alpha\>|)>> and
    <math|\<zeta\>=F<around*|(|\<beta\>|)>>. By the composition axiom, we
    have <math|\<zeta\>\<circ\>\<omega\>=F<around*|(|\<beta\>|)>\<circ\>F<around*|(|\<alpha\>|)>=F<around*|(|\<beta\>\<circ\>\<alpha\>|)>>.
    By the identity axiom, <math|1<rsub|F<around*|(|X|)>>=F<around*|(|1<rsub|X>|)>>.
    So, we have <math|F<around*|(|\<beta\>\<circ\>\<alpha\>|)>=F<around*|(|1<rsub|X>|)>>.
    Since <math|F> is faithful, this implies
    <math|\<beta\>\<circ\>\<alpha\>=1<rsub|X>>. The same, we get
    <math|\<alpha\>\<circ\>\<beta\>=1<rsub|Y>>. This simply means
    <math|X\<cong\>Y>.
  </proof>

  <subsection|Image of functor may not be a category>

  The image of a group homomorphism is a subgroup of the codomain. But, this
  is not generally true for category. (Remind that group is the category with
  single object.)

  What is the problem? Since functor preserves the structure of category, the
  composition, identity, and the axioms of associativity and identity of
  category are automatically fulfilled. All left is the closure of
  composition.

  Consider a functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>, the
  generic pattern to be examined would be
  <math|F<around*|(|A|)><above|\<rightarrow\>|F<around*|(|f|)>>F<around*|(|B|)><above|\<rightarrow\>|F<around*|(|g|)>>F<around*|(|C|)>>
  in the image <math|F<around*|(|<math-ss|C>|)>>. The problem is if
  <math|F<around*|(|g|)>\<circ\>F<around*|(|f|)>> still in the
  <math|F<around*|(|<math-ss|C>|)>>? By the axiom of composition,
  <math|F<around*|(|g|)>\<circ\>F<around*|(|f|)>=F<around*|(|g\<circ\>f|)>>.
  So, that <math|F<around*|(|g|)>\<circ\>F<around*|(|f|)>> is in
  <math|F<around*|(|<math-ss|C>|)>> is equivalent to that <math|g\<circ\>f>
  is in <math|<math-ss|C>>. The later is only possible when the domain of
  <math|g> is exactly the codomain of <math|f>, but this may not be true. For
  instance, let <math|A<above|\<rightarrow\>|f>B> and
  <math|B<rprime|'><above|\<rightarrow\>|g>C> with
  <math|F<around*|(|B|)>=F<around*|(|B<rprime|'>|)>>, then <math|g\<circ\>f>
  does not exist at all, neither does <math|F<around*|(|g\<circ\>f|)>>. So,
  <math|F<around*|(|g|)>\<circ\>F<around*|(|f|)>> is not in
  <math|F<around*|(|<math-ss|C>|)>>, and <math|F<around*|(|<math-ss|C>|)>> is
  not a category.

  Why is it so? The key point in this analysis is
  <math|F<around*|(|B|)>=F<around*|(|B<rprime|'>|)>>. It is this construction
  that destroyed the <math|g\<circ\>f>. In other words, <math|F> is not
  injective on objects.

  Contrarily, when <math|F> does be injective on objects, then there must be
  a unique <math|B> that is mapped to <math|F<around*|(|B|)>>. In this case,
  there is no choice but <math|A<above|\<rightarrow\>|f>B<above|\<rightarrow\>|g>C>.
  This means <math|g\<circ\>f> exists in <math|<math-ss|C>>, so does the
  <math|F<around*|(|g\<circ\>f|)>>, or <math|F<around*|(|g|)>\<circ\>F<around*|(|f|)>>,
  in <math|F<around*|(|<math-ss|C>|)>>. So, the closure of
  <math|F<around*|(|<math-ss|C>|)>> is satisfied. Now,
  <math|F<around*|(|<math-ss|C>|)>> becomes a category.

  We conclude this section by a theorem.

  <\theorem>
    <label|theorem: Functorial Image as Category>[Functorial Image as
    Category] Given a functor <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>,
    the image <math|F<around*|(|<math-ss|C>|)>> is a category if and only if
    <math|F> is injective on objects.
  </theorem>

  In the case of group, there is only one object, so a functor, or group
  homomorphism, is always injective on objects.

  <section|Natural Transformation>

  <subsection|Natural transformation is morphism of the category of functors>

  As we have defined category, and as we have built a category out of
  categories by defining functor, we can also build a category out of
  functors by defining natural transformation. Precisely, given two
  categories <math|<math-ss|C>> and <math|<math-ss|D>>, a category of
  functors from <math|<math-ss|C>> to <math|<math-ss|D>>, denoted by
  <math|<around*|[|<math-ss|C>,<math-ss|D>|]>>, has the collection of all
  functors from <math|<math-ss|C>> to <math-ss|D> as its objects. In
  addition, for any two functors <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>,
  the morphism from <math|F> to <math|G> is a natural transformation.

  <\definition>
    [Natural Transformation] Given two functors
    <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>, a
    <with|font-series|bold|natural transformation>
    <math|\<eta\>:F\<rightarrow\>G> is a family of morphisms in
    <math|<math-ss|D>>, <math|<around*|{|\<eta\><rsub|A>:F<around*|(|A|)>\<rightarrow\>G<around*|(|A|)>\|\<forall\>A\<in\><math-ss|C>|}>>,
    such that for each <math|A,B\<in\><math-ss|C>> and each
    <math|f:A\<rightarrow\>B>, we have <math|G<around*|(|f|)>\<circ\>\<eta\><rsub|A>=\<eta\><rsub|B>\<circ\>F<around*|(|f|)>>.
    The <math|\<eta\><rsub|A>> is called a <with|font-series|bold|component>
    of <math|\<eta\>>.
  </definition>

  <\remark>
    [Component] With the aid of component, natural transformation, which is
    originally designed as a morphism between functors, now reduces to simply
    a collection of morphisms between objects (in the target category
    <math|<math-ss|D>>), which has already been defined. Comparing with
    morphism between functors, morphism between objects is much familiar to
    us. So, this definition of natural transformation with component is easy
    to understand and would be easy to use.
  </remark>

  <big-figure|<image|figures/natural-transformation.png|0.7par|||>|<label|figure:
  Natural Transformation> Indicates the natural transformation
  <math|\<eta\>:F\<rightarrow\>G>. The diagram commutes.>

  Natural transformation as morphism does build a category of functors.
  Indeed, natural transformation can be composed by extending the commutative
  diagram <reference|figure: Natural Transformation> to the right (in the
  same way as figure <reference|figure: Functor Composition> for functor).
  Identity natural transformation has identity morphism as its component
  (recall that components of a natural transformation are simply morphisms in
  the target category). Finally, associativity and identity axioms can be
  checked directly.

  Remember the metaphor for functor, wherein the action of a functor is like
  applying a style to the dots and arrows of the diagrams, the action of
  <math|\<eta\>> is like changing the style of dots and arrows from style
  <math|F> to style <math|G>.

  <subsection|Natural transformation preserves the structure of functor>

  TODO

  <subsection|Natural isomorphism is equivalent to isomorphisms in category.>

  With the category of functors, we can discuss whether two functors are
  equivalent or not. This relates to the isomorphism between functors. Since
  a morphism in this category is called a natural transformation, an
  isomorphism is called a natural isomorphism. Given the general definition
  of isomorphism, a natural transformation <math|\<alpha\>:F\<rightarrow\>G>
  is <with|font-series|bold|natural isomorphism> between functors
  <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>, if there exists a natural
  transformation <math|\<beta\>:G\<rightarrow\>F> such that
  <math|\<beta\>\<circ\>\<alpha\>=1<rsub|F>> and
  <math|\<alpha\>\<circ\>\<beta\>=1<rsub|G>>. As usual, if natural
  isomorphism exists between <math|F> and <math|G>, then denote
  <math|F\<cong\>G>.

  This definition is quite complicated, since it is an isomorphism on
  <math|<around*|[|<math-ss|C>,<math-ss|D>|]>>, which we are not familiar
  with. But, because <math|\<alpha\>> is a family of morphisms of category
  <math|<math-ss|D>>, we can first consider a much simpler case, that is,
  <math|\<alpha\><rsub|A>:F<around*|(|A|)>\<rightarrow\>G<around*|(|A|)>> is
  isomorphic. This isomorphism is of category <math|<math-ss|D>>, instead of
  <math|<around*|[|<math-ss|C>,<math-ss|D>|]>>. So, we guess, or hope, that,
  if for each <math|A\<in\><math-ss|C>>, there exists a morphism on
  <math|<math-ss|D>>, <math|\<beta\><rsub|A>:G<around*|(|A|)>\<rightarrow\>F<around*|(|A|)>>,
  such that <math|\<alpha\><rsub|A>\<circ\>\<beta\><rsub|A>=1<rsub|G<around*|(|A|)>>>
  and <math|\<beta\><rsub|A>\<circ\>a<rsub|A>=1<rsub|F<around*|(|A|)>>>, then
  the family of <math|\<beta\><rsub|A>> might be the correct natural
  transformation <math|\<beta\>> we need.

  <\lemma>
    <label|lemma: Natural Isomorphism>[Natural Isomorphism] A natural
    transformation <math|\<alpha\>> is a natural isomorphism if and only if
    each component of <math|\<alpha\>> is an isomorphism.
  </lemma>

  <\proof>
    The relation <math|\<beta\>\<circ\>\<alpha\>=1<rsub|F>> means that
    <math|\<beta\>\<circ\>\<alpha\>> acts as <math|1<rsub|F>>. What does the
    natural transformation <math|1<rsub|F>> acts? For each
    <math|A\<in\><math-ss|C>>, <math|<around*|(|1<rsub|F>|)><rsub|A>=1<rsub|F<around*|(|A|)>>>;
    and the relation <math|F<around*|(|f|)>\<circ\><around*|(|1<rsub|F>|)><rsub|A>=<around*|(|1<rsub|F>|)><rsub|A>\<circ\>F<around*|(|f|)>>
    should hold. But, if <math|<around*|(|1<rsub|F>|)><rsub|A>=1<rsub|F<around*|(|A|)>>>,
    then the relation becomes <math|F<around*|(|f|)>\<circ\>1<rsub|F<around*|(|A|)>>=1<rsub|F<around*|(|B|)>>\<circ\>F<around*|(|f|)>>,
    which is fulfilled on its own. So, the relation
    <math|\<beta\>\<circ\>\<alpha\>=1<rsub|F>> simply means, for each
    <math|A\<in\><math-ss|C>>, <math|\<beta\><rsub|A>\<circ\>\<alpha\><rsub|A>=1<rsub|F<around*|(|A|)>>>.
    The same statement holds for <math|\<alpha\>\<circ\>\<beta\>=1<rsub|G>>,
    that is, <math|\<alpha\><rsub|A>\<circ\>\<beta\><rsub|A>=1<rsub|G<around*|(|A|)>>>.
    So, we find the conclusion that <math|\<alpha\>> is a natural isomorphism
    on <math|<around*|[|<math-ss|C>,<math-ss|D>|]>> if and only if for each
    <math|A\<in\><math-ss|C>>, <math|\<alpha\><rsub|A>> is an isomorphism on
    <math|<math-ss|D>>.
  </proof>

  With this lemma, a isomorphism on <math|<around*|[|<math-ss|C>,<math-ss|D>|]>>
  now reduces to a family of isomorphisms on <math|<math-ss|D>>, which is
  quite familiar to us.

  <subsection|Isomorphic objects should be viewed as one>

  Isomorphic topological spaces are the same. So it is for the isomorphic
  groups, isomorphic vector spaces, and so on. This means we should view
  isomorphic objects are one object. Regarding to morphisms, consider
  isomorphic objects <math|X> and <math|Y>, and another object <math|Z> of
  the same category. If <math|X> and <math|Y> are viewed as one, then there
  should be bijections between <math|mor<around*|(|X,Z|)>> and
  <math|mor<around*|(|Y,Z|)>>, and between <math|mor<around*|(|Z,X|)>> and
  <math|mor<around*|(|Z,Y|)>>.

  If visualizing a category as diagrams of dots and arrows between dots, then
  we should pinch two isomorphic objects together. This leads to equivalent,
  but simplified, diagrams. The category obtained by pinching isomorphic
  objects as one in category <math|<math-ss|C>> is called the
  <with|font-series|bold|skeleton> of <math|<math-ss|C>>.

  Currently, this viewpoint is simply for intuition. Later in TODO, we will
  prove this fact seriously.

  <subsection|Natural isomorphism describes equivalence between categories>

  Given two categories <math|<math-ss|C>> and <math|<math-ss|D>>, how can we
  say they are equivalent? A natural possibility is using isomorphic functor.
  Precisely, there exist functors <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>
  and <math|G:<math-ss|<math|<math-ss|D>\<rightarrow\>>C>>, such that
  <math|G\<circ\>F=1<rsub|<math-ss|C>>> and
  <math|F\<circ\>G=1<rsub|<math-ss|D>>>. Even though this definition is quite
  natural, however, it is not true. The reason is that there exist isomorphic
  objects. For instance, if <math|G\<circ\>F<around*|(|A|)>=B>, which is not
  equal, but isomorphic, to <math|A>, then the categories can still be
  equivalent. This reflects our previous idea that isomorphic objects should
  be viewed as one. So, instead of <math|G\<circ\>F<around*|(|A|)>=A>, as
  <math|G\<circ\>F=1<rsub|<math-ss|C>>> indicates, we should say
  <math|G\<circ\>F<around*|(|A|)>\<cong\>A>. By lemma <reference|lemma:
  Natural Isomorphism>, <math|G\<circ\>F\<cong\>1<rsub|<math-ss|C>>> means,
  for each <math|A\<in\><math-ss|C>>, there exists an isomorphism
  <math|\<alpha\><rsub|A>:<around*|(|G\<circ\>F|)><around*|(|A|)>\<rightarrow\>A>,
  that is <math|<around*|(|G\<circ\>F|)><around*|(|A|)>\<cong\>A>. This
  implies that, instead of <math|G\<circ\>F=1<rsub|<math-ss|C>>>, the correct
  condition for equivalence should be <math|G\<circ\>F\<cong\>1<rsub|<math-ss|C>>>.
  The same, <math|F\<circ\>G\<cong\>1<rsub|<math-ss|D>>>.

  <\definition>
    [Equivalent Categories] Categories <math|<math-ss|C>> and
    <math|<math-ss|D>> are <with|font-series|bold|equivalent> if there exist
    functors <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|<math|<math-ss|D>\<rightarrow\>>C>> such that
    <math|><math|G\<circ\>F\<cong\>1<rsub|<math-ss|C>>> and
    <math|F\<circ\>G\<cong\>1<rsub|<math-ss|D>>>.
  </definition>

  Historically, functor is defined for describing natural transformation, and
  natural transformation, or natural isomorphism, is defined for describing
  equivalence between categories.

  <section|Summary>

  <subsection|Category theory is built by recursion>

  In this chapter we first defined category. This was the unique starting
  point; and all the left were built by recursion. When the category was
  defined, the object was quite abstract and generic. It could be anything.
  So, it could be category itself! This implied a category of categories.
  Therein, the morphism, or functor, was defined as the structure preserving
  map. Again, when functor was defined, object could then be functor! A
  category of functors could be built, where the morphism was natural
  transformation.

  So, the basic conceptions, which are category, functor, and natural
  transformation, were defined recursively.

  <subsection|Proof in category theory is easy>

  As you might noticed, the proof in category theory is almost nothing but
  expanding definitions. Once you have clearly realized what the concepts
  mean, you get the proof.

  Why is proof in category theory so easy? An educated guess is that category
  theory is quite fundamental. In analysis, almost for every critical
  concept, there are a plenty of lemmas, theorems, and corollaries related to
  this concept. This is because analysis is not fundamental, and is supported
  by other mathematical areas, such as set theory, topology, and linear
  algebra (for higher dimension). So, to prove a theorem, there would be a
  large amount of combinations of the more fundamental lemmas, theorems, and
  corollaries. The proof, thus, cannot be generally easy. But, for category
  theory, there is no other mathematical area that supports, and the
  combination is quite limited. Even though most proofs in category theory
  are trivial, the theorems to be proven are generally quite far-reaching.
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
    <associate|auto-10|<tuple|2.2|4>>
    <associate|auto-11|<tuple|3|5>>
    <associate|auto-12|<tuple|3.1|5>>
    <associate|auto-13|<tuple|3.2|5>>
    <associate|auto-14|<tuple|1|6>>
    <associate|auto-15|<tuple|2|6>>
    <associate|auto-16|<tuple|3.3|6>>
    <associate|auto-17|<tuple|3.4|7>>
    <associate|auto-18|<tuple|3.5|7>>
    <associate|auto-19|<tuple|3.6|7>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|3.7|8>>
    <associate|auto-21|<tuple|4|8>>
    <associate|auto-22|<tuple|4.1|8>>
    <associate|auto-23|<tuple|3|9>>
    <associate|auto-24|<tuple|4.2|9>>
    <associate|auto-25|<tuple|4.3|9>>
    <associate|auto-26|<tuple|4.4|10>>
    <associate|auto-27|<tuple|4.5|10>>
    <associate|auto-28|<tuple|5|10>>
    <associate|auto-29|<tuple|5.1|10>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-30|<tuple|5.2|10>>
    <associate|auto-4|<tuple|1.2|2>>
    <associate|auto-5|<tuple|1.3|2>>
    <associate|auto-6|<tuple|1.4|3>>
    <associate|auto-7|<tuple|1.5|4>>
    <associate|auto-8|<tuple|2|4>>
    <associate|auto-9|<tuple|2.1|4>>
    <associate|chapter: Category, Functor, and Natural
    Transformation|<tuple|1|1>>
    <associate|definition: Coproduct of Two Objects|<tuple|17|5>>
    <associate|definition: Poset|<tuple|10|3>>
    <associate|definition: Poset as Category|<tuple|11|3>>
    <associate|definition: Preorder|<tuple|9|3>>
    <associate|definition: Product of Two Objects|<tuple|14|4>>
    <associate|figure: Functor|<tuple|1|6>>
    <associate|figure: Functor Composition|<tuple|2|6>>
    <associate|figure: Natural Transformation|<tuple|3|9>>
    <associate|lemma: Fully Faithful Functor|<tuple|21|7>>
    <associate|lemma: Natural Isomorphism|<tuple|25|9>>
    <associate|section: Arrows generalize concepts and theorems from one area
    to every area in mathematics|<tuple|2.1|4>>
    <associate|section: Injective functor may not be faithful|<tuple|3.5|7>>
    <associate|section: Supremum and infimum are dual|<tuple|1.4|3>>
    <associate|section: Surjective functor may not be full|<tuple|3.4|7>>
    <associate|theorem: Functorial Image as Category|<tuple|22|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>|| Indicates the
      functor <with|mode|<quote|math>|F:<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>>\<rightarrow\><rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|D>>>>.
      This diagram commutes.>|<pageref|auto-14>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>|| Extending the
      commutative diagram <reference|figure: Functor> to the right. This
      diagram commutes.>|<pageref|auto-15>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>|| Indicates the
      natural transformation <with|mode|<quote|math>|\<eta\>:F\<rightarrow\>G>.
      The diagram commutes.>|<pageref|auto-23>>
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Category,
      Functor, and Natural Transformation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Category>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Category is about arrows
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Objects may not be sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Morphisms may not be maps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Supremum and infimum are
      dual <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Morphisms in the dual
      category of <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Set>>>>
      are not maps <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Why
      Category?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Arrows generalize concepts
      and theorems from one area to every area in mathematics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Duality Helps Create New
      Concepts and Theorems, Freely! <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Functor>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Structure preserving map
      builds category out of objects <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Functor is the morphism of
      the category of categories <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Functor preserves the
      structure of category <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Surjective functor may not
      be full <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Injective functor may not be
      faithful <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|3.6<space|2spc>Fully faithful functor
      reflects isomorphisms <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|3.7<space|2spc>Image of functor may not be
      a category <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Natural
      Transformation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Natural transformation is
      morphism of the category of functors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Natural transformation
      preserves the structure of functor <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Natural isomorphism is
      equivalent to isomorphisms of category.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Isomorphic objects should be
      viewed as one <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Natural isomorphism
      describes equivalence between categories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Summary>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Category theory is built by
      recursion <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Proof in category theory is
      easy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>
    </associate>
  </collection>
</auxiliary>