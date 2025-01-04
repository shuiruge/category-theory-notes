<TeXmacs|2.1.4>

<style|book>

<\body>
  <chapter|Category, Functor, and Natural Isomorphism><label|chapter:
  Category, Functor, and Natural Isomorphism>

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
      <item>a collection<\footnote>
        Usually in set theory, a collection of something is a set. But in
        fact, not every collection is a set, such as the collection of all
        sets that do not contain itself, which is Russell's paradox. In this
        situation, we call the collection a <strong|class>. It looks like a
        \Psuper\Q set, beyond the axioms of set theory. Throughout this note,
        we do not distinguish set from class, just using the word
        \Pcollection\Q for general purpose. In many textures, a class that is
        in fact a set is said to be <strong|small>. So, we do not distinguish
        small from large too. In addition, we employ the notation
        <math|\<in\>> of set theory for indicating that something is in some
        collection.
      </footnote> of <with|font-series|bold|objects>, denoted by
      <math|<math-ss|C>> itself,

      <item>for each <math|A,B\<in\><math-ss|C>>, a collection of
      <with|font-series|bold|morphisms> from <math|A> to <math|B>, denoted by
      <math|<math-ss|C><around*|(|A,B|)>>, where <math|A> is the
      <with|font-series|bold|domain> and <math|B> the
      <with|font-series|bold|codomain>,

      <item>for each <math|f\<in\><math-ss|C><around*|(|A,B|)>> and
      <math|g\<in\><math-ss|C><around*|(|B,C|)>>, a
      <with|font-series|bold|composition> of <math|f> and <math|g> that
      furnishes a morphism <math|g\<circ\>f\<in\><math-ss|C><around*|(|A,C|)>>,
      and

      <item>for each <math|A\<in\><math-ss|C>>, an
      <with|font-series|bold|identity> <math|1<rsub|A>\<in\><math-ss|C><around*|(|A,A|)>>,
    </itemize>

    such that the following axioms are satisfied:

    <\itemize>
      <item><with|font-series|bold|associativity>: for each
      <math|f\<in\><math|<math-ss|C>><around*|(|A,B|)>>,
      <math|g\<in\><math|<math-ss|C>><around*|(|B,C|)>>, and
      <math|h\<in\><math|<math-ss|C>><around*|(|C,D|)>>, we have
      <math|<around*|(|h\<circ\>g|)>\<circ\>f=h\<circ\><around*|(|g\<circ\>f|)>>,
      and

      <item><with|font-series|bold|identity>: for each
      <math|f\<in\><math|<math-ss|C>><around*|(|A,B|)>>, we have
      <math|f\<circ\>1<rsub|A>=1<rsub|B>\<circ\>f>.
    </itemize>
  </definition>

  We also use the notation <math|f:A\<rightarrow\>B> or
  <math|A<above|\<longrightarrow\>|f>B> for
  <math|f\<in\><math|<math-ss|C>><around*|(|A,B|)>>.

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
    [Group as Category]<label|definition: Group as Category> A
    <with|font-series|bold|group> is a groupid in which there is only one
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
    Let <math|<math-ss|G>> a group (defined in <reference|definition: Group
    as Category>). We have

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
    <math|<around*|(|S,P|)>>, a category <math|<math-ss|Poset><around*|(|S,P|)>>
    can be constructed by regarding the elements in <math|S> as objects and
    regarding <math|<around*|(|a,b|)>\<in\>P> as <math|a\<rightarrow\>b>.
  </definition>

  Because of the axioms of preorder, the axioms of category are satisfied.
  The category <math|<math-ss|Poset>> illustrates that morphisms are not
  maps. In <math|<math-ss|Poset><around*|(|\<bbb-R\>,\<leqslant\>|)>>,
  morphisms are \Pno greater than\Qs. And in
  <math|<math-ss|Poset><around*|(|pow<around*|(|\<bbb-R\>|)>,\<subseteq\>|)>>
  where <math|pow> represents power set<\footnote>
    Let <math|A> be a set. The <strong|power set> of <math|A>, denoted by
    <math|pow<around*|(|A|)>>, is the set of all subsets of <math|A>.
  </footnote>, they are \Pbeing subset of\Q.

  <subsection|Supremum and infimum are dual><label|section: Supremum and
  infimum are dual>

  Arrows can represent many mathematical objects. For example, in
  <math|<math-ss|Poset><around*|(|\<bbb-R\>,\<leqslant\>|)>>, we can describe
  supremum as follow.

  <\definition>
    [Supremum in Category] Given a subset <math|A\<subset\>\<bbb-R\>>. An
    <math|x\<in\>\<bbb-R\>> is the <with|font-series|bold|supremum> of
    <math|A> if it satisfies:

    <\itemize>
      <item>for <math|\<forall\>a\<in\>A>, <math|a\<rightarrow\>x> and,

      <item>for <math|\<forall\>y\<in\>\<bbb-R\>>, if <math|a\<rightarrow\>y>
      for <math|\<forall\>a\<in\>A>, then <math|x\<rightarrow\>y>.
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

      <item>for <math|\<forall\>y\<in\>\<bbb-R\>>, if <math|y\<rightarrow\>a>
      for <math|\<forall\>a\<in\>A>, then <math|y\<rightarrow\>x>.
    </itemize>
  </definition>

  Weird again, but now you are on the load to wonderland. By comparing the
  definition of infimum to that of supremum, we find all statements are the
  same except that we replaced supremum by infimum and domain by codomain
  (for instance, replaced <math|y\<rightarrow\>x> by
  <math|x\<rightarrow\>y>). Two statements are <with|font-series|bold|dual>
  if you can get one from the other by simply flipping all the arrows, or,
  equivalently, by exchanging the domain and codomain for each morphism in
  the statement. We say that supremum and infimum are dual.

  Applying this to category, we find the dual category.

  <\definition>
    [Dual Category] Given a category <math|<math-ss|C>>, its
    <with|font-series|bold|dual category>, denoted by
    <math|<math-ss|C><rsup|op>>, is obtained from <math|<math-ss|C>> by
    exchanging the domain and codomain for each morphism in
    <math|<math-ss|C>>.
  </definition>

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
  re-write the concepts using arrows (in fact, re-writing concepts using
  arrows is the hardest part in category theory). And again, this re-writing
  looks weird at the first sight.

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

  <subsection|Duality helps create new concepts and theorems, freely!>

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
  <math|F:<math|<math-ss|C>>\<rightarrow\><math-ss|D>> on objects is
  surjective, as long as for some objects <math|A,B\<in\><math-ss|C>>, the
  map <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is not surjective. So, for functor, we have to distinguish two kinds of
  surjection. One is that the map <math|F:<math-ss|C>\<rightarrow\><math-ss|D>>
  on objects is surjective, for which we say <math|F> is
  <with|font-series|bold|surjective on objects>. The other is that, for every
  <math|A,B\<in\><math-ss|C>>, the map <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is surjective, for which we say <math|F> is <with|font-series|bold|full>.

  Surjection on objects and fullness are two independent properties of
  functor. We may find a functor that is not surjective on objects, but is
  full. That is, there is object in <math|<math-ss|D>> that is out of the
  image of <math|F>, but for every two objects in the image of <math|F>, say
  <math|F<around*|(|A|)>> and <math|F<around*|(|B|)>>, the map on morphisms
  <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is always surjective.

  <subsection|Injective functor may not be faithful><label|section: Injective
  functor may not be faithful>

  The same discussion applies for the injection of functor. Again, you may
  think that <math|F<around*|(|<math-ss|C>|)>> can still be multiple-to-one
  correspondent to <math|<math-ss|C>> even though the map
  <math|F:<math|<math|<math-ss|C>>\<rightarrow\><math-ss|D>>> on objects is
  injective, as long as for some objects <math|A,B\<in\><math-ss|C>>, the map
  <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is not injective. So, again, there are two kinds of injection. One is that
  map <math|F:<math|<math-ss|C>>\<rightarrow\><math-ss|D>> on objects is
  injective, for which we say <math|F> is <with|font-series|bold|injective on
  objects>. The other is that, for every <math|A,B\<in\><math-ss|C>>, the map
  <math|F:<math-ss|C><around*|(|A,B|)>\<rightarrow\><math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>>
  is injective, for which we say <math|F> is
  <with|font-series|bold|faithful>.

  For the same reason, injection on objects and faithfulness are two
  independent properties of functor.

  <subsection|Fully faithful functor preserves isomorphisms>

  Fully faithful functor is found to be important because it preserves
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
  generic pattern to be examined will be <math|F<around*|(|A|)><above|\<rightarrow\>|F<around*|(|f|)>>F<around*|(|B|)><above|\<rightarrow\>|F<around*|(|g|)>>F<around*|(|C|)>>
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

  <section|Natural Isomorphism>

  <subsection|Isomorphic objects should be viewed as one>

  Isomorphic topological spaces are the same. So it is for the isomorphic
  groups, isomorphic vector spaces, and so on. Generally, given an object in
  a category, we can construct many objects that are isomorphic to each other
  just by copying the object. This means we shall view isomorphic objects are
  one object. Regarding to morphisms, consider isomorphic objects <math|X>
  and <math|Y>, and another object <math|Z> of category
  <math|<math-ss|C>><math|>. If <math|X> and <math|Y> are viewed as one, then
  there will be bijections between <math|<math-ss|C><around*|(|X,Z|)>> and
  <math|<math-ss|C><around*|(|Y,Z|)>>, and between
  <math|<math-ss|C><around*|(|Z,X|)>> and
  <math|<math-ss|C><around*|(|Z,Y|)>>.

  If visualizing a category as diagrams of dots and arrows between dots, then
  we shall pinch two isomorphic objects together. This leads to equivalent,
  but simplified, diagrams. The category obtained by pinching isomorphic
  objects as one in category <math|<math-ss|C>> is called the
  <with|font-series|bold|skeleton> of <math|<math-ss|C>>.

  <subsection|Natural isomorphism describes equivalence between categories>

  Given two categories <math|<math-ss|C>> and <math|<math-ss|D>>, how can we
  say they are equivalent? A natural possibility is using identity functor,
  which maps identically on object and morphism. Precisely, there exist
  functors <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
  <math|G:<math-ss|<math|<math-ss|D>\<rightarrow\>>C>>, such that
  <math|G\<circ\>F=1<rsub|<math-ss|C>>> and
  <math|F\<circ\>G=1<rsub|<math-ss|D>>>, where <math|1<rsub|<math-ss|C>>> and
  <math|1<rsub|<math-ss|D>>> are identity functors. Even though this
  definition is quite natural, however, it is not true. The reason is that
  there exist isomorphic objects. For instance, if
  <math|<around*|(|G\<circ\>F|)><around*|(|A|)>=A<rprime|'>>, which is not
  identical but isomorphic to <math|A>, then the categories can still be
  equivalent. This reflects our previous idea that isomorphic objects shall
  be viewed as one. So, instead of <math|<around*|(|G\<circ\>F|)><around*|(|A|)>=A>,
  as <math|G\<circ\>F=1<rsub|<math-ss|C>>> indicates, we shall demand
  <math|<around*|(|G\<circ\>F|)><around*|(|A|)>\<cong\>A> (recall that the
  <math|\<cong\>> between objects means that there is an isomorphism between
  them in the category they belong to).

  We have discussed about how <math|G\<circ\>F> acts on objects. Since
  <math|F> and <math|G> are functors, <math|G\<circ\>F> also acts on
  morphisms. For any <math|A,B\<in\><math-ss|C>>, we have
  <math|<around*|(|G\<circ\>F|)><around*|(|A|)>=A<rprime|'>\<cong\>A> and
  <math|<around*|(|G\<circ\>F|)><around*|(|B|)>=B<rprime|'>\<cong\>B>. Then
  for any <math|f:A\<rightarrow\>B>, it is mapped to
  <math|<around*|(|G\<circ\>F|)><around*|(|f|)>:A<rprime|'>\<rightarrow\>B<rprime|'>>.
  Since <math|A> and <math|A<rprime|'>> are viewed as one, so are <math|B>
  and <math|B<rprime|'>>, there has to be a bijection between
  <math|<math-ss|C><around*|(|A,B|)>> and
  <math|<math-ss|C><around*|(|A<rprime|'>,B<rprime|'>|)>>, since they should
  be viewed as one too. To find out this bijection, we first draw the
  commutative diagram in figure <reference|figure: natural isomorphism>. If
  this diagram commutes, then we have <math|<around*|(|G\<circ\>F|)><around*|(|f|)>=\<alpha\><rsub|B>\<circ\>f\<circ\>\<alpha\><rsub|A><rsup|-1>>.
  So, the map

  <\equation*>
    \<varphi\><around*|(|f|)>\<assign\>\<alpha\><rsub|B>\<circ\>f\<circ\>\<alpha\><rsub|A><rsup|-1>
  </equation*>

  takes <math|f> to <math|<around*|(|G\<circ\>F|)><around*|(|f|)>>. We are to
  show <math|\<alpha\>> is bijective between
  <math|<math-ss|C><around*|(|A,B|)>> and
  <math|<math-ss|C><around*|(|A<rprime|'>,B<rprime|'>|)>>. To do this, we
  have to prove that <math|\<varphi\>> is one-to-one (injective) and onto
  (surjective). For injection, suppose <math|\<varphi\><around*|(|f|)>=\<varphi\><around*|(|f<rprime|'>|)>>,
  then <math|\<alpha\><rsub|B>\<circ\>f\<circ\>\<alpha\><rsub|A><rsup|-1>=\<alpha\><rsub|B>\<circ\>f<rprime|'>\<circ\>\<alpha\><rsub|A><rsup|-1>>,
  which implies <math|f=f<rprime|'>>. Then for surjection, let
  <math|g:A<rprime|'>\<rightarrow\>B<rprime|'>>, we construct
  <math|f:=\<alpha\><rsub|B><rsup|-1>\<circ\>g\<circ\>\<alpha\><rsub|A>>,
  which has <math|\<varphi\><around*|(|f|)>=\<alpha\><rsub|B>\<circ\><around*|(|\<alpha\><rsub|B><rsup|-1>\<circ\>g\<circ\>\<alpha\><rsub|A>|)>\<circ\>\<alpha\><rsub|A><rsup|-1>=g>.
  So, we have shown that <math|\<varphi\>> is bijective.

  We summarize this section in the following definition.

  <\definition>
    [Equivalent Categories] \ Categories <math|<math-ss|C>> and
    <math|<math-ss|D>> are said <strong|equivalent> if there are functors
    <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|<math|<math-ss|D>\<rightarrow\>>C>> as well as a set of
    isomorphisms <math|\<alpha\>\<assign\><around*|{|\<alpha\><rsub|X>:\|\<forall\>X\<in\><math-ss|C>|}>>
    in <math|<math-ss|C>>, such that figure <reference|figure: natural
    isomorphism> commutes.
  </definition>

  <big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D494844520000028D0000018A0802000000E622EC3F0000000373424954080808DBE14FE00000200049444154789CEDDD795C54F5FE3FF0F70C0C03A82C22501A3AAE941B222EB8036EB896B95E4D4533AF6671F3762DCB0AF51686A482A96499205773C3A5FBCBEB920A226A2A2EA4E002B22882209BECCB2CBF3F3EB7F39D0BB39C190638D0EBF9D771E6339FF3E6D4635E73CEF99CCF47A452A9080000001A45454585959515FFF6E2862B05000000EA09390D0000D078CCCDCD0D6A8F9C060000683C66666606B5474E030000341E914864587B8C23030000102C9C4F438B75E5CA95C58B1777E9D2452412B569D3C6D3D373E7CE9D4AA5B2A9EB02003000721A5AA0C2C2C259B3660D1D3AF4E6CD9BEBD6AD4B48483878F0A0542A5DB66CD9F4E9D3B9A856A954212121D9D9D94D5B2D00800EB8EE0D2D4D4646C6D8B16393939367CF9EBD67CF1EA954CA5E2F2A2AEADCB9735151D1E79F7FBE7EFD7A22BA78F1A29797577676B693935393960C00A015CEA7A145292A2A1A3F7E7C7272B2BBBB7B64642417D244646767377FFE7C22DAB66D5B454505118587878F1831824F4897959575E9D265F3E6CD0D5739008046C86968513EF8E083070F1E10517070B0858545AD77DDDDDD89A8B0B0F0CC99336565655151514B962CE1D36D6060605A5A5A565696C90B0600D0CDB0A7AD01842C29292932329288BA76ED3A7AF4E8BA0D5C5C5CD8467272F2AD5BB7ECEDED67CF9EADB7DBD4D4D44D9B3611516E6EAE49EB0500D00FE7D3D072848787B3F1163366CCD0D8C0C6C6866D2425250507076FD8B0412291E8ED76E5CA951E1E1E849C0680A6809C8696E3C2850B6C63ECD8B11A1B7057C2232323870D1B3677EE5CBD7D9E3E7D9A88D8E571E43400343E5CF7869683DD3F16894483070FD6D880CB697B7BFB3D7BF6E8EDB0A6A6E6E38F3F3E72E4C8FDFBF709390D004D01E7D3D072B0A5E29C9D9D5BB76EADB10137FDFDDCB9735F7EF965BD1D8686864E9C38B16BD7AE0E0E0E849C0680A680F3696839468C18919292525252A252A934CEA07BF4E851B6515252A2B7B79C9C9CDDBB775FBF7E9D88DAB56B4744353535858585F6F6F626AD1A0040179C4F43CBF1B7BFFDCDCCCCACACACECECD9B3B5DE4A4A4AF2F1F1D9BE7D7BFBF6EDE98F2BE405050541414172B95C636FAB57AF5EB3664DAB56AD88889D4F134EA901A0D121A7A1E5707373DBBA75AB582C9E376FDEAE5DBB121212626262C2C2C2C68C193370E0403737B7A4A4A42FBEF882887EFBEDB7D8D8D81933661C3F7E5CE35AB057AF5E4D494999376F1EFBA79D9D9D582C26E43400343ACC1B0A2D4D5C5CDCA64D9BE2E2E20A0B0B6D6D6D7BF7EE3D61C284850B177237A4D7AF5FBF63C78EA2A2A2B163C7EEDAB5CBD9D9B9560F2A956AF0E0C1898989EC8637939F9F4F44515151D3A74F6FB4BF050000390D50DB8F3FFE181717F7CF7FFE53FD455F5FDFC4C4C4EDDBB7BFFBEEBB4D551800FC09611C19C0FF282A2ADAB061435C5CDC4B2FBDA4FEBAB3B3736262E2B367CF9AAA3000F873C2FD6980FFF1D9679F2D5EBCB85648D31F43C990D300D0C890D30044443535354F9E3C61B7AE3B75EAA43E08BCA6A6E6D9B367A5A5A544F4E0C183BCBC3C6D43C401004C0E390D4044B478F1E28E1D3B060404A854AAB7DE7AEBCB2FBFE4DE9A3F7FFECB2FBF7CF2E449228A8D8D7574745CBC7871D3550A2D477575F5A2458B5E7AE925B6D02AF074E3C60D8944B275EBD67AF6B363C70EA9541A1F1F6F92AA74A8AEAE7674749C3F7F7E555595319F5735A4B0B0B0F5EBD757565636E85E00EAAFBABA5AA150347515F0275253533375EA540B0B8BD8D8D8A6AEA5F961BFA4D7AF5F6F740F1B376E24A2A0A02093D4A337ECCE9F3F2F9148264C9860442036604E1F3A7488FD14F8FDF7DF1B6E2F0000CD8E42A1606BAAEEDEBDBBA96B69AE162C5840441B376E34E2B3DBB66D23A2050B1698A4129E61B77BF76E229A32658AA1A7040D95D3E5E5E51D3B7664A5FFFAEBAF0DB4170080E6E8ABAFBE22A269D3A619F7F1478F1E6DDAB469FAF4E9DDBB77B7B5B51589441616161E1E1E8181814545455C338542E1E7E7B762C50A13555D2F8989891A67F3E5EFCE9D3BEA1D969494C86432B1587CFAF469832AB978F1A2999959C78E1D8B8B8BEBFF771914766CF685356BD618B48B86CA6936EB13B36FDFBE06DA0B0040B373FDFA758944D2BA75EB67CF9E19F441854271E8D0A13163C6708127168B3B74E83068D0A0C183073B3A3A1291B3B3F3F9F3E7552A955C2E7FEBADB788282222A261FE0EC3444747BBB9B9F5EDDBB7478F1EEA93003A3838F4EEDDBB6FDFBEECDD3E7DFAF4ECD9B36BD7AE6DDBB6AD95D3191919B5FA3C75EA14EB2137379767194545459D3A7522A25F7EF9C5247F974161979B9B6B6363231289CE9E3DCB7F170D92D36969699696965CE95BB66C6988BD0000343B4AA5D2CDCDCD8893AAEBD7AF7B7878B02F553333B359B366FDF4D34FF9F9F9EA3D9F3B77AE67CF9E969696D7AE5D9B3F7F3E6BFCF4E95353FF11F5C5FD2144949E9EAEADD9D3A74F3FF9E413F6A3C4CCCC4C2E97D76DE3E5E545447E7E7E3C77FDFEFBEF13D1B061C38C2CFD7F1911766BD7AE25225757D7AAAA2A9E7B69909C9E366D9AFA8FA04F3EF9A421F60200D0EC1C38708088ACADAD0B0A0A787EA4A6A666E5CA956C8679229A376F5E6A6AAAB6C6858585AEAEAEDC096BEFDEBD4D54B8C994949470E5F5EAD54B6FFB152B561051A74E9D34BE1B1D1D4D442291E8C68D1B7ABBCAC8C8904AA54464E8A5726D8C08BBE2E2E2366DDA10D1E6CD9B79EEC5F4CF659D3D7BF6D8B163AEAEAEDC2B39393926DF0B0040B3A352A90202028868E6CC993C17482D2E2E9E3469D2962D5B944AA58D8DCDD1A347F7EEDDDBB973676DEDEDECEC76ECD8C13DE23F7EFC7893546E42972E5DE2CA1B33668CDEF6ECEA3DBB585D979797578F1E3D542A557070B0DEAEBEFAEAABAAAA2A994C3676EC58434AD6CCB8B06BD3A60D1B42B879F3669E33319838A7E572B9BFBF7FDBB66DF7EEDDCBBD88258600A0B98B898961572CEBE3C2850B0F1E3C20223F3F3F3EEDF3F3F3870F1F7EE6CC19227270703877EE5CAD13388D7C7C7CB82017604EB33360864F4EB3515ADA729A88162E5C48445151519999993AFA292B2BDBB76F1F6B5FCF116D54BFB05BB46811116566661E3972844F7B13E7F4B7DF7E7BEFDEBD0D1B36B01B300C721A009ABB3D7BF6AC5BB72E2626A63E9DB0EF745B5BDBE1C387EB6D5C5D5DFDE69B6FDEB9738788CCCDCD8F1F3F3E60C0009E3B1A34681011595B5B8F1C39B21EF53608EE189A9B9B8F1A354A6F7B36098C8E4B0893264D2222B95CAE3BF68E1D3B565656464493274F36A45ECDEA13769E9E9E6C1E627613442F53E6746E6EEEBA75EB060C18B064C9128944C25DD5414E034073C7CEE7D2D3D38DEEA1A6A6262A2A8A88468F1EAD71D5F35A962F5F1E1B1BCBB6030303F9443BC7C9C98988BCBCBCD8ED58E1282D2DBD71E306DB1E306000BB53ABEEE9D3A7DF7FFF7D797939F74A414101E9CC69373737B66AADEE9CFEE9A79F88A85DBB76FDFBF737B6FCFFAA67D889C56276E1FDD4A953ECA7839EF6F5A9B596D5AB571717176FDBB68D8D77600F0910EE4F0340F3C7C615D727A7AF5FBFFEE2C50B221A3A74A8DEC6C78E1D63D3621051AF5EBDFEFEF7BF1BB42F85424144BEBEBE8697F95F72B93C2B2B2B2F2F4F65D2B58F2F5EBCC8DD94F5F6F6AEDB60D7AE5DCB962D539F48951D34F5DBC0750D1E3C9888AE5CB9A26D06D69A9A1AF6A3C7D3D3931B9167B4FA879DA7A727115556565EBE7C596F6393E5F4B56BD7222222FCFCFCD8F122B5D22B2A2AD81A060000CD944C2623A23D7BF618DDC3C58B17D986FA95528D4A4B4BFDFDFDB97F06050599999919B4AFA2A222229A3061828135924AA53A7CF8B08F8F8FB5B575870E1D1C1D1D6D6D6D67CE9C79EDDA3543BBD248FDE6B4C69C3E72E448CF9E3DD96561C6C7C7273F3F7FC890213ABAEDD7AF1F11C9E572EE64BD969B376FB23357BD075F2F93841D2B9888AE5EBDAAB7B169725AA552BDFFFEFB3636361B366CE05E6CD7AE1DB78D4BDF00D0ACC964B2808080F4F4743608C8080909096CA377EFDEBA5B7EF7DD77DC90A81E3D7A4C9C38D1D07D6DDAB4292525A55BB76E067DAAA8A8C8D7D777D6AC59BFFFFEFBECD9B3D7AE5DBB72E5CA912347FEFCF3CF9E9E9E1F7DF451FDCFADB99C964824C3860DABF5EECF3FFF7CE7CE9D5A37ADC56271DD394F6AE10EA9B69CE67FF0753355D8E92D589DFE7B247C8487875FBB762D3434D4D9D9997BB156E95DBA7431C9BE00009A849F9FDF9E3D7B626262626262D8657083DCBB778F88241289FAF7645D0A8582CD3ECD2C5DBAD488C1C9751750D7ABA2A262DCB871F1F1F16BD6AC59BD7A75EBD6ADB9B732333357AD5A151C1C5C5A5ABA63C70E437BE6BC78F1E2D6AD5B6C7BD0A041D6D6D66C5BA552E5E4E41C3E7C78CD9A35F4C72D0683BCF2CA2B6C232D2D4D630376F089C8C5C5C5D0CED5992AEC1C1C1CACACAC2A2A2AB415FC3F8C7BB85B5D515191939353DFBE7D6B4D16B36AD52A6E2FC78F1FAFFF8E00009A56787838FD716E6DE867D9B7B9B6F93A38717171EA5FD1292929C6956A2876A53D2C2C4CE3BB4AA5F2AF7FFD2B111D3C78D0E85DFCFBDFFFD69F4944864EA7AA52A91E3F7ECC3EFBC61B6F686C3063C60CD6202D2DCDE8FA4D1B762CCEEDECECF4B634C1F9F4DAB56B7373730F1F3E5CEB0E8AFA0D8686BEEE1D1717979292D2A0BB000020A2B7DF7EFBC71F7F5CB76EDD9E3D7BBCBCBC468D1AC5E761E89A9A9AFCFC7CFADF732F8DCE9F3FCF6DBBBABA76EDDAB57EF5F2929D9D1D16163679F2E465CB96696C201289424242CE9D3BF7D9679FCD9A35CBB8BDA8DF9C76777767E7D3353535252525E9E9E96C08D86BAFBDA6FB7A8346DC517DF6EC99C606DCEB7A8FBF0EA60DBB76EDDAA5A6A6161515555555E919966FCC8F0A3577EFDE3537379F376F5EDDB77EF8E1076E2F5F7EF9653D77A41BCF490300004C8ECFB9357BB88878CC2CCD9DF911D1FCF9F34DF315A90FFBBAD63B9BE6D75F7F4D44090909C6ED851B3C259148CACACAD4DF7AF1E2051B06BF7CF972237A562A95ACE7BE7DFB6A6CD0B76F5FD6A0A6A6C698D21B20ECB847DBF5CE205BDFF3697F7F7F2B2B2B8D13B6A9FFC468E847B3DE7EFB6D3ECFCB0300D4D3FDFBF78382828848269379797975EAD489CF3C655555556C437DD9068DD44FC8DCDDDD75B4CCC8C8E8D6AD9B8EB927CDCCCC9E3C79C29E2DD68DDDBEE506306BC3A64FB973E70E177BFC151414FCFEFBEF5C3FDCCD69C6C6C666F2E4C9972F5F36E2E63411894422A9545A5555A5FEE0B53A76FCCDCCCCF83CB9AE91C9C3CECACA8A6D949797EB9E44B65E397DE8D0217689A67DFBF6BA5B36F475EFE1C3871B340900008011626262D878EF808000E3A611D53B288C4B74FA63CA4C6DF2F2F258B22A148AA2A2A2FBF7EF736FD9DBDBF7E8D1C3D9D999E780B2D2D252B1586C6363A3BB191B775D5C5CCCA7CF5A626262B8B35E8D4F64E5E6E68A4422E3729A8854267DCEBB9686083BFE051B9FD3E5E5E5FFF8C73F9C9C9CBA77EFAEB1815C2EE79E0CC3542700D002B0908E8E8E36344EB8D3476D137170B8877189482291E868E9E1E1A13EE8CCC5C5853DCD259148525252F43ECB546BA74AA532373757F7BDE1ACACAC5A15F2A77E735AE3D18B8F8FEFDDBB379B49CD502A95AABABA9A88B4DDE865C75FA150C8E572434FA91B28EC2A2B2BD986DE39E38CCFE92FBFFCF2C99327A74F9F1E376E9CC606D5D5D5DCEE91D300D0DCAD5DBB363D3DDDCFCFCF88733E2EA7B96F676DD4078E691B1555D7E3C78FB947AE870E1D6A504813119B45E4D4A9536C4D0B6D4E9F3E4D3C2E8F6BC48D8FB3B0B0D03823DB962D5B6C6D6D8DE899D48E6ADD894819F5E3AFFEC8191F0D14765CCDFAEB31EC4EFA1F1E3E7C28954A5F7FFD75DDCDB843D6B66D5BE37604002010F5F9CE54A954EC1EA44C26D3DDECE4C993DCF7F37BEFBDC7B3736E9251326ADC6E656565870E1D7AF5EA555959A9ADCD93274F6C6D6D7D7C7C0CED5CA552A9A7D7C891238DE841B7274F9EB0CEB53D97C5AD33969E9E6E50CF0D1776EC07199FE7B28C9C8FCCDFDF5F24126DDEBC5977336E047C414101BB280100D01C45444410EFF52835622B79646565A974DE98F4F1F1E1D6703C74E810CF258AD9992EC367B1C85AA452695050506262E292254B34EEB1B0B070E6CC99151515DF7CF38DA19D138FE942EBE9E9D3A76C839BF0A416EE90722D796AB8B0633711B415ACCE989C3E7AF4E8A953A73EFAE823BDB3AEA83FA9864BDF00D0DCD5E7B912F685595D5DAD7BA891858545606020DBCECDCDFDF4D34FF5F6FCE8D1236E0A115B5B5BFECB5FAA9B376FDE471F7DB477EF5E6F6FEF73E7CE71AF2B148AFDFBF70F1E3CF8FAF5EBBB77EFD63D045D1BF587C28D1E29A60377CDBF67CF9E1A1B7069C59D79F3D17061979F9FCF462A682B589DC1399D9D9DFDFEFBEFDBDADA7EFCF1C77A1BAB8F56E77FA3050040682E5CB840F5CB180F0F0FB671F7EE5DDD2DE7CE9DCBCD37121C1CFCF5D75F7323A5EB4A4C4CF4F5F5E586A7797B7B1BBA6807272828283434F4D6AD5B63C68C7174741C3264C8800103DAB66D3B77EEDCF2F2F293274FCE9B37CFB89ED56F4EB3A5A24C8B3BA4DA1E18E37FF0390D1A767A0B5667404E2B95CA5F7FFD75D4A85159595952A954EFAA204AA552FDF24E6A6A2AFF7D010008CAC2850B030202D8AA59C6E1865F716B42E8B07DFBF6152B56B0ED4F3EF964C890213FFCF043767636F7A55A5E5E7EFAF4E9850B17BABBBBE7E6E6868686B2FBDF6C6163A3F9FBFBA7A4A46CD8B0A15FBF7E2F5EBCA8AAAAF2F2F2DAB973677272B2D13DDFBF7F9F9B2FB267CF9E7A9F2037023BA456565603070ED4D8A07FFFFE6CF03C9F83DF0861C795C1EB0A0D9FDBDD010101FDFAF5AB3580D0D2D272E0C08177EFDEADD5F8C9932743860CE9DFBF7FADF6E6E6E6AFBEFAEAA0418356AE5CC9F3363B00408B515656C6A6B698316306CF8F1C3F7EBCD6BACB1289A47DFBF6767676EC9F6666663366CC78F4E8914AA58A8E8E6ED5AA15DB6E72376FDE1C3F7EFCD0A1437BF7EE5D6B4A936EDDBA0D1B36CCC7C767F4E8D1B1B1B126D91D9BCBC5D7D757471B36FF177B024D5B9B460BBB3973E610918D8D4D555595DEBF8E574EF7E9D34763C65B5A5A3E7DFAB456E35F7EF945F72F83458B16F1D92900400BC3461DDBD9D9D55AC84107A55279E2C489F7DE7BAF5FBF7E4E4E4E1289C4C6C6A66BD7AEAFBFFEFAE6CD9B6B8D5E7EFEFC7903546D8C909010DD41404462B1B86EF819E1F6EDDBACC3C8C8481DCD42434359B3F8F8786D6D1A27EC140A05BB4EBE78F1623E7FA048C5634A94D2D2523333330B0B0BB1586CC40A6B00004044870F1F668B585CB870819BDE19EA29303070CD9A35AD5AB57AF6EC998E6791B3B2B23A75EA2497CBD7AD5BF7C5175F686CD3386177F9F265B6F636CF097378DD9F6EDDBAB5959595999919421A00C068D3A64D635381B2F531C124F6ECD9434473E7CED53D6148FBF6ED67CE9CC9DA6B3B416D9CB063FFF55D5D5D793E3E60E4F3D3000060287373F3952B5712D1E1C3875FBC78D1D4E5B4043131310F1F3EB4B0B058B3668DDEC6AB56AD128944A9A9A9EA0F9E35B292929283070F12D1DAB56B79FE1A404E0300349E77DF7DD7D5D5B5ACAC6CD3A64D4D5D4B4BB07EFD7A227AE79D77B8994C747077776733D5B04F35892D5BB6949494F4E9D387FF32DEBCEE4F030080A99C3B776EECD8B1AD5BB74E4949316ED90960CE9C39337EFCF88E1D3B2624247063E0757BFEFC79CF9E3DF3F2F2FEF39FFF4C9830A1A12BACBBF7EEDDBB9795955DBA74892D12CA07CEA701001AD5E8D1A33FFDF4D392929277DF7DB7A96B69C64A4B4B972D5B26168B23232379863411393A3AEEDBB74F2C162F5FBEBCA4A4A4412BACEBDD77DF7DF1E245404000FF9026E4340040E35BBF7EFDD4A9538F1C39C2C6408111DE7BEFBDB4B4B42D5BB6183A99EBB871E3828282323232FCFDFD1BA8368DC2C3C3A3A2A266CC98F1C9279F18F6493E0F6F010080695555554D9A34492A955EBC78B1A96B697EBEFCF24B220A0C0CAC670F1B376E3461553A4447475B58584C9E3CB9BABADAD0CFE2FE340040D3A8AEAE5EBA74E99933675253531B6236CD962A3E3E7EE8D0A1DF7CF34D3D4F88B76FDFFEE1871F5EBA74899BFDBB81545555B9B8B88C1F3F7ED7AE5DDC4AD5FC21A7010000840BF7A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E132594E67666676EEDC79D5AA55A6EA1000005AA41123468C1831A2A9AB6836CC4DD5915C2E4F4F4FCFCBCB3355870000D022656666367509CD09AE7B0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000844BA452A94CD29142A1C8CFCFB7B4B4B4B1B13149870000D022E5E7E713918383435317D23C982CA7010000C0E470DD1B000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A701009A939B376F7EF7DD774D5D4553DAB469537272B2111FCCCBCB0B0C0C2C2F2F6FC21A8C809C06006836A2A3A3478E1C696F6FDFD48534314F4FCF1B376E18F491A74F9F7A7A7A3E7DFAD4DADABAA96A304E83E4F4B367CF962D5BE6E2E2626B6B3B6DDAB467CF9E35C45E0000FE547EFBEDB7A953A77EF4D147B367CFE6D35EA5529D3B77CEDFDF7FE0C081EDDAB5333333B3B4B41C3B76EC9E3D7BB8158D6FDFBE2D93C9140A4543165E5B404080C870292929ECE31F7EF8E1F4E9D3C78E1D7BF7EE5D9E7B7CFEFCF99831633A77EEBC75EB56FE75DEBA756BCA94290E0E0ECECECE1F7EF8A1FA5132A206A3997EFDE98C8C8C2143865456561E3C78F09FFFFCE7C58B1767CC9871F8F061D3EE0500E04F252F2FAF6FDFBE1D3B76BC74E992999999EEC60A85222C2C6CEBD6ADECDA6CF7EEDDBDBDBD5D5C5C2C2C2CEEDEBD1B15153572E4C843870E3D7AF468CC9831BD7AF58A8D8D6D943FE2BFFEF39FFFDCBC79B3A6A666DFBE7D8F1E3D22A21E3D7ACC9D3B572C168B4422954AA55028AAABABB3B2B22E5DBAC4C5734E4E8E939313DB2E2F2FEFD7AF9F4AA58A8F8FB7B5B5D5BD3B954AE5EBEB7BF5EAD5C4C4C40E1D3AF02CF2C489136FBCF146FFFEFD030202962D5BF6E4C9936DDBB6AD58B1826B60500DF5A232B5C9932713D1B265CB366EDCC876E1E9E969F2BD0000FCA94C9B364D2412DDBC79536FCBF8F87877777722323737F7F3F3BB7BF76EAD066969693D7AF4F0F2F26ADBB62D11AD5DBBB6614AD6CFC3C383C5C4B7DF7EABADCDE79F7F4E4452A954A954AABF7EF2E449225AB06081DEBD84868612D1962D5BF817565656E6ECEC4C44070E1C983871222B72F5EAD5B59AF1AFA13E4C9CD30F1F3E14894444B47FFFFECD9B3713914422397CF8B069F70200F0A7121D1D4D446FBEF9A6DE967BF7EE95482444D4A3478FF8F8786DCD6EDFBECDBEAB89E8D2A54B262D96AF929212EEC2C0EDDBB7B535ABA9A9B1B7B7EFDAB56BDDB7860D1B261289E2E2E274ECA5B0B0D0CECEAE7DFBF6151515FC6BFBE1871F5861D9D9D953A74E25222727A7E4E464E36AA82713E774707030FBDB525353552A554242427676B669770100F067336CD830228A8989D1DD6CF3E6CD2C7D070C18505050A0BBB1B7B73711D9D8D8D4D4D498AE52039C3A758AE585ADADAD42A1D0D172D8B0615E5E5E755F3F70E000118D1B374EC767D7AC5963C435834993261151C78E1D552A556565E58D1B374A4A4A34B6E453433D9938A77D7D7D89A86DDBB6A6ED1600E04FEBD6AD5B44D4B973E75A177E6B898A8A6221FDCA2BAFE4E5E5E9EDF6D34F3F25A2D75F7FDD74951A86154044BEBEBEBA5B7A7B7BBFF5D65B755FAFACACB4B3B323A2C4C4448D1FACAEAE6ED7AE1D11A5A5A5F12F4C2E97B76EDD9AE7050CBD35D49F89C77B5FBD7A95FD94336DB700007F5AFFFAD7BF8868D2A449DC95EABA929292162E5CA852A98868EFDEBD0E0E0E7ABB75747424A23163C698AE52C35CB870816D0C1D3AB4D65B0F1E3C282B2BE3FE595858E8E2E252B707A954CAEA6727B5759D3A752A2F2FAF77EFDE32998C7F6177EFDE2D2D2D257E59A6B786FA33654E27272717161612D1A041834CD82D00C09FD9B163C74867A0AA54AA77DE798705DBCC9933478D1AC5A7DBEAEA6A221A3B76AC41C5949797DFBF7FFFC18307959595067DB0968A8A8AEBD7AFB3EDE1C387ABBF2597CB070C18C06EC933C5C5C59D3A75D2D80FABFFE79F7FD6F8AEDE43A7115718CF2CD35D8309D4FF947CC58A15DA7EE5999B9B676666D67F1700007F4EB9B9B9ECEBF4C99327DADAFCF4D34FDCB7AE8E0159B5ECDBB7CFCFCF8F7F25BFFFFEFBD4A9532D2C2CD88E2C2D2D67CD9AA57168151FE7CE9DE362A2B4B4B4D65B229148FDD2FDA3478F2A2B2B35F6C332552412BD78F1A2EEBB3D7BF624A27FFDEB5F7C4AEAD5AB97C62C138944AFBEFAAA8E0FEAAEA1FECCEB9FF413274EECDCB9B34AA5FAE5975FD8758C8080007671BF4D9B36FC1F560300805AAE5DBB4644F6F6F6AFBCF23D734BFD00002000494441548AB6365BB66C611B9E9E9E6E6E6E3C7B9E3B77EEDCB97379363E72E4C85B6FBDD5B76FDF3D7BF6F4EDDBB7B2B232212161EBD6AD1E1E1EC78E1DF3F1F1E1D90F87BBE8DDAF5FBF56AD5AA9BF151212D2B3674FF54BF75DBA74D1D64FEFDEBDD923D7F1F1F1B5CA282929B97FFF3E11F5EDDB974F49EFBFFF3EFBC5101A1A9A9999E9E4E4B46AD52A22128944AFBDF69A8E0FEAA8C1344C98F9ECC9693B3B3B13F60900F067B67EFD7A2262F36968C4A288D9B8716343D470F3E64DA954EAEFEF5F6B209B42A158BA74A9ADAD6D4A4A8AA17D7217E7E7CD9B979C9C9C9C9CFCF0E1C3B8B8B879F3E611D1F2E5CBF977C51E74FEFEFBEF6BBDCE4DDE525454C4BF37A55269636343068EB0D356834998E07C9A73F3E64DF6FF9309FB0400F833CBC9C921221D1726D5EFE38E1F3FBE216A58BD7AF5800103B66CD952EBB2B0582CDEB163C7AD5BB73EFBECB3FDFBF7F3EFB0AAAA8A0D3A26A27DFBF6EDDBB7AF5683912347F2EFAD43870E393939191919B55E6787AE55AB56064D16969292525C5C4C446CAE987AD6601226CBE9DCDCDCACAC2C22EADFBFBFA9FA0400F8932B2A2A22221D49F3E0C103B6616969D9AB572F8D6D2A2A2A5868D5D5A64D1BDD83C38B8A8ACE9D3B77E8D021B158C3B8633333337F7FFFA54B975656565A5A5AEAE847DD952B57B861689191915656564AA5B2A2A222313171EBD6AD55555506E5343BFD2D2828A85B39E93C741AB1A7E0C8C02CD3568349982CA7D9C93419F81B040000746061A32302F3F3F3D986ABABABB679BFD7AC59C3DDC3AE65D4A8513131313A0A484B4B5328143ABED8FBF7EF5F5151919191E1EAEAAAA31F75DCCDE9DEBD7BCF9F3F5FFDADE4E4E4BB77EFB66FDF9E6757F4C7C1A9BB5AA5DE43A7917159A6AD069330594EDFBE7D9B6DE07C1A00C054D879A78E8537B841586CB60D8D162E5C3872E448A552595858B874E952A55249446FBFFDF6C489135F7DF55593D4A9326449272EA7EB3E31555656C6F3B9328EB9B93911B13F4A9DDE43A711CB324747471D03F7F8D7601226CB69B60CA7B5B535FF9F540000A01B3B51ABAAAAD2D6809B00849D3E6AE4E6E6C6C681A7A4A4B02C118BC54141417CA643E9DAB5ABB9B979424242E7CE9D3536484848904AA51D3B76D4DB15535D5DFDDB6FBFB1EDBA4F6F979595BDFEFAEB3CBB62581ED7BDBEADF7D069C4CEA70D3DE1D4568349986C9E13764DBF5FBF7E86FE780100006DD8E972454585B606A3478F661BA9A9A96CEA121DB8A796DDDDDDF9843411D9D8D88C1B372E343454E319B352A9FCF6DB6F274F9E6C6D6DCDA73722BA7AF52AFB73241249DDFBD0972E5D9A32650ACFAE18D65BDDCB097A0F5D5D999999CF9F3F27226E21AF7AD66012A6C9E9172F5EA4A6A692E17F1B0000E8C0467A6B1B05464483060D62CF07979494FCBFFFF7FF74F776E6CC19B6C1A53B1F81818157AE5CF9E4934F6ABDAE52A956AE5C79E7CE9DAFBEFA8A7F6FDC456F4F4F4F36D3463DB183636F6F5FEB7576E8F2F3F3E57239CFAEB89BD3866699B61A4CC234397DEBD62DF6530B390D0060426CBECCA74F9F6A6B201289424242D8854C7F7F7F6EFEB2BA2E5CB8C0CD6D69504EBBB9B9EDDBB72F242464C48811515151EC59E783070F0E1D3A74F7EEDD51515106DDEEE486AD996A6A71F6A851F7EEDD6BBDCE0E9D52A97CF6EC19CFAE8CCE696D359886499EC2E696B34C4A4A3249870000A0FA637E4D737373DDCB277FF7DD77ECE16617179713274ED45A26B2A4A4E49B6FBEB1B2B2627791A552697979B9A195DCBA75CBD7D7970D9822228944326DDAB4FBF7EF1BD449555595959515EB213636D6D01AEA7AFCF831EBEDD9B367B5DEAAACAC644B71FFFAEBAF3C7B63CB593A393999AA069330CD38323688CCCECECE54430701008088060E1C28168BE572796262A28E93BCBFFEF5AF9D3B777EFBEDB79F3C793269D2A4975F7E79D0A0412FBDF49242A178FCF8F1C58B174522D13FFEF18FCF3FFF7CFEFCF9F9F9F95C58F2D7AF5FBF93274FB2BB9C2291A86BD7AE6DDAB4E1F9D95BB76E5DBC78B1B4B4F4E6CD9BDC0DE38888886BD7AE49A5521B1B9B050B16185A0F93909040449D3A75623382A9934AA56E6E6EF1F1F10909093CCFDD5996797A7A9AAA06D33049DA77EBD68D88A64D9B6692DE000080C3967D0C0909D1DBB2AAAA2A222262FAF4E99D3A75B2B2B2B2B2B2727171993C79724848487E7E3E6B2397CB1F3D7AD4C025D73667CE1C1D31E4E9E96974CFAB57AF26226D0B8AB025AEDF78E30D3E5D656666B27AD8A03953D5507F26C8E982820276BD252C2CACFEBD010080BACD9B371391AFAF6F531722446C3692B367CF6A7C97DD6F6ED3A64D7575B5DEAED822984474EFDE3D13D6507F468E23ABA9A9D9B56BD7B7DF7E5B555575EDDA35954A259148A64F9F6E5C6F0000A0CD5B6FBD65696979FEFCF9BCBCBCA6AE45589293936FDDBAE5E2E2E2EDEDADB181BBBBBB8787474949C9C993273536C8C9C9D9B4695354541411B129C7FBF5EB67D00D5CBD35D49F91F7A7972C59121919494436363669696944F4C61B6F383A3A9AB234000020727474F4F3F3FBEEBBEF222323FFFEF7BF37753902B26BD72E22FAF4D34F35CE3DCEAC5AB56ACE9C39BB76ED9A3A756AADB7AAABAB870F1F9E92924244E9E9E957AE5C21A277DE79C7E435D4934865C8646F1C7B7B7B36F7CDD9B3673FFDF4D31B376EDCB97347F70A9D0000609C9C9C1C5757D756AD5A3D7AF4C8D009AB5BAAFCFCFCCE9D3B3B3A3ADEBF7F9F8DEBD648A5520D1D3AF4EAD5ABB76EDDAAB538774242025BE0B175EBD677EEDC79F5D5575F7EF9E5070F1E58585898B6867A3232FF7BF4E841448B162DBA79F3E6B56BD7366EDC889006006820CECECE1B376ECCCACA0A090969EA5A8462FDFAF5656565E1E1E1BA03522412EDDCB9532A957EFCF1C7B5DE727171B1B4B4343737FFE73FFFC96671F9E9A79FF88734FF1AEACBB8DBDA0F1E3CF0F6F66ED5AA559F3E7D0E1C3860C21BE60000A0D1FCF9F32D2D2D0D1DE5D422C5C6C68AC5E2CF3FFF9C67FB1F7FFC9188C2C3C36BBD7EE2C4895EBD7AB56AD5CAC7C7E7E6CD9B0D5A83D18CBCEE0D00008DACBABAFACD37DF4C4D4DBD7CF972034D25DD2C3C7EFCD8D3D373CA94293B77EEE4FFA9AFBEFA6AC3860DB1B1B12659D4D1B81A8C839C06006836AAAAAAFCFCFCAAABAB8F1C39D2D4B53499C183070F1E3C382424C4D0A15B5BB66C090D0D4D4A4AE2BF6A88C96B3002721A000040B81AFC8700000000180D390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205C26CB698542F1FCF9F392921253750800002D524141414141415357D16C982CA79F3C79E2E4E4E4EFEF6FAA0E0100A045F2F0F0F0F0F068EA2A9A0D5CF7060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B88CC9E9F4F4F4066D0F00007F42080B8D0CCEE9888888CE7F58B468514C4C8CB6966BD7AEF5F6F6168944AC71BDCA040080E6462412B108F0F6F65EBB76ADB666111111EA6181B4AEC5DCD00F787979F9F9F9A5A7A7C7C4C4444444444444040404F8F9F9A9B789898959B468113BD632994C26932D5CB8D04405030040F310101070E1C28598981816197BF6EC090F0FF7F2F2E21AA4A7A7AB9FEFB1B090C9644D51AC80A98C959696161E1ECE0EA84C26DBBF7F3F11F9F9F971FF0D0202028CEE1C00005A8CB4B434160D32992C2020809DBF858787B3B090C964D1D1D14D5DA37089542A557D623E3D3D3D222262DDBA75AFBCF24A666666BF7EFD6EDFBECD0E3A7E1301000027222262D1A2453299ACB2B292889E3D7B4644E1E1E1B5AEC8422DF5CD6966EDDAB5EBD6ADE3FE99969686900600805A58549B9B9B9B9B9B575656464747AB5F06078D4CF35C969F9FDFA851A3D836CEA4010040233F3F3F3F3F3FB95C5E5959A97E9F1474304D4ECB6432EE70E3B803008036DCB062EEEC0E7433D93C272C9E11D20000A00377C11579C193C1CF6569C34EA9F1FC150000E82093C9D8C031DC21E5C934E3C8000000A021607E6F000000E1424E0300000817721A5AA62B57AE2C5EBCB84B972E2291A84D9B369E9E9E3B77EE542A954D5D1700806190D3D0D2141616CE9A356BE8D0A1376FDE5CB76E5D4242C2C18307A552E9B265CBA64F9FCE45B54AA50A0909C9CECE6EDA6A010074C338326851323232C68E1D9B9C9C3C7BF6EC3D7BF648A552F67A515151E7CE9D8B8A8A3EFFFCF3F5EBD713D1C58B17BDBCBCB2B3B39D9C9C9AB46400005D703E0D2D475151D1F8F1E3939393DDDDDD232323B99026223B3BBBF9F3E713D1B66DDB2A2A2A88283C3C7CC488110869001038E434B41C1F7CF0C183070F88283838D8C2C2A2D6BBEEEEEE4454585878E6CC99B2B2B2A8A8A8254B96D46A939B9B2B168B456AC462B1999999B9B9B9542AEDDEBDFB071F7C909797D7387F0E000021A7A1C5484A4A8A8C8C24A2AE5DBB8E1E3DBA6E03171717B6919C9C1C1C1C6C6F6F3F7BF6EC5A6D9C9C9C6A6A6A92929288C8DADA3A2F2FAFBABABAAAAAAAA2A222333373E4C891A1A1A143860C292A2A6AE0BF0600E0BF90D3D042848787B3C1163366CCD0D8C0C6C6866D2425250507076FD8B0412291D46D66666676FBF66D221A3D7AB48383035BD8472291383A3A86868612514A4ACAC993271BEACF0000F85FC86968212E5CB8C036C68E1DABB10177253C323272D8B06173E7CED5DDD5A449936ABDCE0D0EEFD0A1433DAB0500E009390D2D44565616118944A2C183076B6CC0E5B4BDBDFD9E3D7B7474151313434413274E547F51A954AE5AB58A88E6CF9F3F72E44853940C00A01F721A5A082B2B2B227276766EDDBAB5C606E6E6FF5D7566EEDCB92FBFFCB2B67EB2B3B31F3C78D0A74F1FEE7EB642A1888D8DF5F6F68E8B8BDBB46993EE8C0700302D93AD9705D0B4468C18919292525252A252A9442251DD06478F1E651B2525253AFA898E8E26A2C78F1FBBBABAB257CACACAB2B2B2A64F9FBE7FFFFEF6EDDB9BBA7000005D703E0D2DC4DFFEF6373333B3B2B2B2B367CFD67A2B2929C9C7C767FBF6ED2C65D915F2828282A0A020B95C5EAB31CBE9F0F0F0077FC8CCCCBC77EFDEF5EBD7FBF7EF7FE5CA9546F96B0000FE0B390D2D849B9BDBD6AD5BC562F1BC79F376EDDA9590901013131316163666CC98810307BAB9B92525257DF1C51744F4DB6FBFC5C6C6CE9831E3F8F1E3DCC5700ECBE9A14387AABFE8EAEA1A10109093933367CE1C4C120E008D09F386428BC26E21C7C5C5151616DADADAF6EEDD7BC284090B172EE46E48AF5FBF7EC78E1D45454563C78EDDB56B97B3B3B3FAC71F3F7EDCA953A7AE5DBBA6A4A4D4EAF9EAD5AB9E9E9E44F4F0E1C3EEDDBB37CE9F030080FBD3D0A20C1F3E7CF8F0E13A1A7CF1C517ECAC5A238D27D3CCB367CFD886B5B575FD6A04003000AE7B03FC9FF3E7CF13D1B061C3EABE75F0E041221A3264081E9E0680C6849C06F83FDA72FAE0C183FBF7EFB7B6B60E0B0B6B8ABA00E0CF0BD7BD0148A1501417175FBD7A353333B355AB561D3B762C2D2D2522954A959595F5C30F3F848484383A3A1E3D7AD4CDCDADA98B05803F179C4F03D092254BDAB56B3761C204222A2B2BB3B5B56DD3A64D9B366D6C6C6C7AF6EC79E2C489D5AB57DFBF7F5FF79D6F00836465650D1830E0F5D75F6FEA429A991B376E482492AD5BB7D6B39F1D3B7648A5D2F8F8789354A5577575B5A3A3E3FCF9F3ABAAAA0CFEB00A00001A57565656D7AE5D6532594E4E4E53D7D2FC7CF9E59744B47EFD7AA37BD8B871231105050599B02ABDCE9F3F2F9148264C9850595969D00791D300008DEAF9F3E7AFBDF69AB5B5F5DDBB779BBA96E66AC1820544B471E346233EBB6DDB36225AB06081C9ABD26BF7EEDD443465CA148542C1FF53C6E4749F3E7DEA9E978B4422914824168BC562B1999999B9B9B98585859595958D8D4D9F3E7D56AC5871FDFA7523F60500D0922895CAF1E3C713516868A8713D3C7AF468D3A64DD3A74FEFDEBDBBADADAD4824B2B0B0F0F0F0080C0C2C2A2AE29A29140A3F3FBF152B5698A8F07AA9E700CC76EDDAD5EAB0A4A444269389C5E2D3A74F1B54C9C58B17CDCCCC3A76EC585C5CACB7714384DDF4E9D38968CD9A35FC6B36669E933973E6E4E7E7AB542A36A5227BF1A5975EEAD5AB17D746A5522995CAEAEAEAA4A4A4A2A222F6E2C2850BC3C2C2D87A0900007F42A1A1A11F7CF0C1A041837EFBED378D13D16BA3542A8F1C39F2FDF7DF9F3B778E7D6F8BC5E2975F7EB943870E2291283535F5F9F3E7CECECEFBF7EFF7F6F66621BD77EFDE888888850B1736D85FC3D737DF7CB377EF5EA552595C5C9C9191C1BDDEB16347F653432412B1D4502814959595B9B9B96565655CB3CE9D3BA7A6A6D6EAF3F4E9D3BEBEBE0E0E0EF7EEDD737474E453C68B172FDCDCDC3232327EF9E597BA0BD7D6D51061F7FCF9F36EDDBA959494FCFAEBAFA3478FE65376BDAE7B6FD9B285EBE7ECD9B31ADB9496962E5EBC986B3671E244A552599F9D02003453999999ECBBFBD75F7F35E883D7AF5FF7F0F060DFA2666666B366CDFAE9A79F5884304AA5F2DCB9733D7BF6B4B4B4BC76EDDAFCF9F359E3A74F9F9AFA8FA897E2E262EED749B76EDDE472B9B696BFFFFEFB942953584B2F2F2F8D6DBCBCBC88C8CFCF8FE7DEDF7FFF7D221A366C98A1659B36ECD6AE5D4B44AEAEAE5555557CF65EAF9C9E33670E2BC8D2D2B2A2A2425B338542D1BB776FAEFA03070ED467A70000CDD4B265CB8868C89021FC3F525353B372E54AB1F8BFCFE6CC9B372F3535555BE3C2C2425757576ED6FADEBD7B9BA26A533A79F22497057AAFC9D7D4D4B02721172E5CA8B1019B40502412DDB87143EFAE333232A4522911197AA95C65EAB02B2E2E6ED3A60D116DDEBC99CFDEEBF55C565C5C1CDB18326488A5A5A5B66662B178F6ECD9DC3F8F1D3B569F9D020034471919193FFEF823112D5DBA94E7478A8B8B274D9AB465CB16A55269636373F4E8D1BD7BF776EEDC595B7B3B3BBB1D3B7670ABC0B11BE18272E1C2056E7BCC9831BA1B9B9B9BB380ECD4A993C6065E5E5E3D7AF450A954C1C1C17A77FDD5575F555555C964B2B163C71A523291A9C3AE4D9B36ACD9E6CD9BEB2ED9A7A15BC38A55939696C65DAFF7F6F6D6DDD8DEDE9EDB2E2828307AA700004D62EDDAB5E9E9E9F5E9213C3CBCA6A6C6DADA7AE6CC997CDAE7E7E70F1F3EFCCC993344E4E0E070EEDCB969D3A6E9FD948F8F0F17E402CC6976064C446666667A8383883A76EC48DA739A88D8DDF7A8A8282E8F342A2B2BDBB76F1F6B6FD0B0006A98B05BB46811116566661E3972446F01C6E7B4FACF22BDA5ABAF3ED4AD5B37A3770A00D0F8626262D6AD5BC7BE5B8DC672C2DBDBBB55AB567A1B575757BFF9E69B77EEDC21227373F3E3C78F0F183080E78E060D1A4444D6D6D623478EAC47BDA6575A5A7AE3C60DB6EDE1E1616B6BABF72315151544A4E312021B0E2697CB7507DEB163C7D8C0B4C993271B5433354CD8797A7A3A383810D1810307F416607C4EC7C4C4B00D6B6B6BF6BF853672B9FCF0E1C3DC3F8530F81000803F994C56CF1EAE5DBBC6BEC1799EE32E5FBE3C3636966D0706061A34179E93931311797979B1DBB1C271F1E245EE32AF8F8F4FDD06D7AF5F670BDE70D829A98E9C76737363ABD6EACEE99F7EFA8988DAB56BD7BF7F7F43CB6E88B0138BC5ECF2FBA953A7D447B66B6ECCBFD65AB89F1843870EB5B0B0D0D1F2DB6FBF7DFAF429DBFECB5FFE3278F060A3770A00D0F86432994C26ABCF75EFB367CFB20D8DABA6D672ECD83136210611F5EAD5EBEF7FFFBB41FB52281444E4EBEB6B608DFF472E97676565E5E5E5A90C7F7057072EF048CB89E9471F7D141818A8FECA8B172FACACAC5C5C5C7474CB32E5CA952BECE4BBAE9A9A1AF6A3C7D3D3931B91C75F03851D5BCFBEB2B2F2F2E5CBBA0B3032A7D3D3D3B9FF65D9C8786DCE9F3FBF7AF56AB63D72E4C85DBB7619B747008026C4723A2222C2B88F5FBC789188CCCDCDD51FBDD5A8B4B4D4DFDF9FFB6750509099999941FB624FF1B2F9EA0DA252A90E1F3EECE3E3636D6DDDA143074747475B5BDB9933675EBB76CDD0AE34E26E4E4B2492BAABD2E5E4E4C4C5C58D183142FDC5CF3EFB2C373757F711E8D7AF1F11C9E572EEA27A2D376FDE64E7AC46ACA3D37061C7CA26A2AB57AFEA29C2D0E1E90CF75B8F88E2E2E234B691CBE55BB76E9548244424168BDF7BEF3D43273505001088B4B4342292C964C67D9C5D9B757575D5DB527DE8728F1E3D8C9870223B3B3B2525C5D04F1516168E1B378E881C1C1CDE7AEBADB56BD7AE5CB972D2A4491289442412AD5AB5AA9E535FBC78F1828B5B8D4F307FF0C1074474E8D021437B8E8A8A62DD868484686CB073E74ED660FFFEFD8676DE7061979797C7BA7DE38D3774B734725D4BEE6791858585939313F77383555C5454141D1D1D111171EFDE3D7373F32953A67CF5D5571A2760030068166432999F9F5F4444C4A2458BC2C3C30DFAEC8B172FB2B3B38948F7F55B225228146CF66966E9D2A5860E4E26A2975E7AC9D08F5454548C1B372E3E3E7ECD9A35AB57AF6EDDBA35F7566666E6AA55AB8283834B4B4B77ECD86168CF9CD8D85876419EFEF7C454A95426272787858585868612D1A851A30CEDF995575E611BECB7545DF7EEDD631B7A8F7F5D0D17760E0E0E565656151515DACAFE3F86FEB860B8E3A29BB7B737A6F5068096212D2D8D0D2893C964696969FC3F78F7EE5DF695A86DBE0E0EF79C2E63C469B171D895F6B0B0308DEF2A95CABFFEF5AF4474F0E041A377C1E72EFB6BAFBD6644CF8F1F3F661FD776623A63C60CD6C0A0FF6A4C83865D972E5D88C8CECE4E773363CEA7535252B887C9162D5AC486B9B31F7DDC4FBFFCFCFC7DFBF64547470F1C38D0C7C767D3A64DDCB5F886101717A73E1A1E00A021AC58B1E2C71F7FBC7FFFBE979757E7CE9D653259404080DED1E0CF9E3D631BEDDAB5D3DDF2FCF9F3DCB6ABAB6BD7AE5DEB552E3FD9D9D961616193274F66D3A5D5251289424242CE9D3BF7D9679FCD9A35CBB8BD7027A6E6E6E66C80954AA5AAAEAE2E2C2C4C4F4F67A7DABA6F006BC31D55EE38D7C2FFF8D7D2D061D7AE5DBBD4D4D4A2A2A2AAAA2A5D83F30DCD7F95DAB57E22BA72E58AB6664AA5F2C30F3F64CDA452E9F1E3C78DD8174F7E7E7E061D7D000093E073C7FAE8D1A3ACB1DE5592B8333F229A3F7FBE89BE20F5F8E1871F88C76C9A5F7FFD351125242418B18B8282026EA075DD9BD30F1F3E64D3831877BEAE542A59CF7DFBF6D5D8A06FDFBEAC414D4D8D413D3774D8710FB8171414E86866CCF934F7B3A84D9B363A1EBD178944818181C78E1D4B4D4DADAAAA9A376FDEFDFBF7795E4330D4DB6FBF6DC45D0D000083E4E5E5B1F369760EBD70E1423E27095555556C43C794934C6E6E2EB7EDEEEEAEA3654646065BC7425B033333B3274F9EB0F16BBAB1DBB77A9F98658F0EDFB973878B3DFE2E5CB8C0A569DD93E6EEDDBB0F1C38F0CC9933C67D8D8B4422A9545A5555555E5EAEB1013BFE6C0D4A837A6EE8B0E316D42A2F2F579FC8AC967AE5F488112374FFD916161663C68CF9FEFBEF89A8ACAC2C3232F2D34F3F35628F7A0D1F3EDCA0790000008CC0AE767A7979715F83467C5C072ED1E98F2933B5C9CBCB63C9AA50288A8A8AEEDFBFCFBD656F6FDFA3470F6767679E03CA4A4B4BC562B18D8D8DEE666DDBB625A2E2E2623E7DD6A27E3D5FE393D3B9B9B93D7BF674767636A273225299F4396F4E43871DCFB20DCEE9A4A4A49C9C1CB6CDE75E42FBF6EDB96D6ED01D0040B3C3E60DF5F3F33374BCB7B5B535DBD0361107477D1D65F69C8F361E1E1EEA83CE5C5C5CD89D548944929292C2329527474747A552999B9BAB3B26B3B2B26A55C89FFAA8E9BA33BD5456562626266ABB3BAE974AA5AAAEAE26226DB778D9F157281472B99CFF297523845D656525DBD03D739CC1F39C9C3B778EDBE653BAFA8D7D3EB3B9020008504C4C4C4444844C263334A4492DA7B9EF656DD4078E691B1555D7E3C78FB9E14E43870E3528A48968C890214474EAD429DDCD4E9F3E4D3C2E8FD7F5FCF9F3C4C444B63D78F060EE622FC7D2D2F2C4891301010186F6CC7047952D165917FFE3AFAE11C28EAB47FD41B8BA0CCE69EE67918D8D0D9F8952D5AF0EB1FF1B00009A9D3D7BF6109111214D7F4CB84D44F9F9F9BA5BAA4FF6C916E1E0433D518C58B471CC98311D3A74080E0E56BFEA5E4B6666664444848F8F8F718F20731778B5AD633176EC58B62E8511B8A3AAED3A3FFFE3AFAE11C28ED5636767A77BE0826139AD542AB9095A870F1FAE7736BB5F7EF9E5C183076CBB7DFBF67C166503001020F6D567DC8343DCB28CDCE4CFDAF8F8F8708D0F1D3AC4677162FAE34C97D1BBA8735D52A934282828313171C992251AF75858583873E6CC8A8A8A6FBEF9C6D0CEE97F038CCF5A9686E28EAAB6A15BFC8F3FA771C28EDD4AD03BE2CCB09CBE71E346616121DBD67BB8B3B3B3972F5FCEB645225158581877F10100A079494F4F372EA489C8D6D6965D8B7EF2E489EE96161616DC4214B9B9B97CC6223D7AF4E8DFFFFE37B723FECB5FAA9B376FDE471F7DB477EF5E6F6F6FF5B3738542B17FFFFEC183075FBF7E7DF7EEDDBA87A06BC30D22934AA56CF109D3E2AEF9F7ECD9536303369D08F138FE9C4608BBFCFC7C365E415BD91CC3729A5BF285F45D5D79F8F0A197971777F8424343A74E9D6AD0BE000004829D5AD567754B0F0F0F224A4949D1716D99993B772E37A22A3838F8EBAFBFE69E68AA2B3166C217FF0000053D4944415431D1D7D7971B9EE6EDED6DE8A21D9CA0A0A0D0D0D05BB76E8D1933C6D1D171C8902103060C68DBB6EDDCB973CBCBCB4F9E3C396FDE3C23BA7DFAF4E9C3870FD9F6E0C183F53E9966046EBA376D0F8CB183AFDE52AF46083BBD65FF1FDE0F7CABE472F9C08103D9A79C9C9CB4CDC99E9E9EFEE9A79F7223055AB56A65C4BCEA0000C2919696161010C0EEB31AE7B3CF3E635F89376EDCD0DB58A150AC58B182FB961E3468D0F7DF7F9F9595C57DEB9695959D3A756AC182051289C4C6C6263434943D7DBB7DFB76A32B64B2B3B3376CD83066CC98D75E7BAD77EFDE53A74EDDB973677979B9D11D868585717FC8071F7C50CFF234621799ADACACAAAAAA3436A8A8A86083E7A74C99C2A7C3C6093B369F39115DBC7851774B914AE7F35B2A956ACE9C39E9E9E92525253939396CC96E22924AA5EEEEEEEA3FDCD8DF969595C5FDAC20A237DF7C73E3C68D8D33F51D008060454747FBF8F810D1B66DDBD43358879F7FFEF9E38F3FE6EE7A129144227174742C2F2F672B579A99994D9B362D2828A84B972E31313193274FFEFDF7DFB96BBC4D283232F25FFFFA577171F18B172F929393B9EB011289E4D5575FB5B7B7974824666666070F1EB4B3B3ABFFEEDAB76F9F9D9DEDEBEB7BF2E4496D6D468D1A151B1BEBE8E8989393A3F129F6C60FBBBFFCE52F070E1CB0B1B179FEFCB9EE65ADF59C4F3F7FFEBC75EBD61616166666663C976D717070183972644040C0FDFBF7F9FFB2000068C1E472397BF278F2E4C9FC3FA5542A4F9C38F1DE7BEFF5EBD7CFC9C9899D3D77EDDAF5F5D75FDFBC79737A7ABA7AE3E7CF9F9BBA6A23BDF1C61B7A93A243870ED5D5D5F5DFD7EDDBB759879191913A9A7127AFF1F1F11A1B3472D829140A36BE7DF1E2C57A1BEB399F0600009358B162C58E1D3B5AB56A959B9B8B41B5A6121818B866CD9A56AD5A3D7BF64CC753C85959599D3A7592CBE5EBD6ADFBE28B2F1AB3428D2E5FBE3C6CD830228A8E8ED63B3ED1E0E7A70100C008FEFEFE2291A8ACACECF0E1C34D5D4BCBC19E6B9F3B77AEEEA942DAB76F3F73E64CD65E0867A7EC417C5757573E539A23A701001A83ABAB2B1B09CCD6A782FA8B898979F8F0A18585C59A356BF4365EB56A9548244A4D4D557FF0AC499494941C3C789088D6AE5DCBE71A3B721A00A0910407074BA5D24B972EA9AF4B01465BBF7E3D11BDF3CE3BDC4C263AB8BBBBB3C5CDD8A79AD0962D5B4A4A4AFAF4E9C373316FDC9F0600683C010101EBD7AFF7F4F4BC7CF932CFF14AA0D1993367C68F1FDFB163C78484049EE3C69F3F7FDEB367CFBCBCBCFFFCE73F13264C68E80AB5D5D0BD7BF7B2B2B24B972EB1A542F5C2F9340040E3F9E28B2F468D1AF5DB6FBF6DDBB6ADA96B69C64A4B4B972D5B26168B232323F93FDCE5E8E8B86FDF3EB158BC7CF9F292929206AD509B77DF7DF7C58B170101013C439A90D300008D893D37DCA54B97D5AB57272525357539CDD57BEFBD979696B665CB163EE3B0D48D1B372E2828282323C3DFDFBF816AD3213C3C3C2A2A6AC68C199F7CF289011F33F4A92F0000A8A7C78F1F77E9D2452693E5E4E434752DCDCF975F7E4944818181F5EC61E3C68D26AC4AAFE8E8680B0B8BC993271BFAE038EE4F03003481ACACACA953A7BAB8B81C3B76ACA96B694EE2E3E3870E1DFACD37DFD4F38478FBF6ED1F7EF8E1A54B97B8D9BF1B545555958B8BCBF8F1E377EDDA25954A0DFA2C721A000040B8707F1A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E0300000817721A000040B890D3000000C2859C060000102EE4340000807021A7010000840B390D0000205CC869000000E1424E03000008D7FF07FD77C3C4B27FB45F0000000049454E44AE426082>|natural-isomorphism.png>|190pt|110pt||>|<label|figure:
  natural isomorphism>In this <hlink|figure|https://q.uiver.app/#q=WzAsNCxbMCwwLCJBIl0sWzAsMiwiQiJdLFszLDAsIihHIFxcY2lyYyBGKShBKSJdLFszLDIsIihHIFxcY2lyYyBGKShCKSJdLFswLDEsImYiLDFdLFswLDIsIlxcYWxwaGFfQSJdLFsxLDMsIlxcYWxwaGFfe0J9Il0sWzIsMywiKEcgXFxjaXJjIEYpKGYpIiwxXV0=>,
  the <math|\<alpha\><rsub|A>> and <math|\<alpha\><rsub|B>> are
  isomorphisms.>

  The set <math|\<alpha\>> is called a natural isomorphism. Because
  isomorphism is \Pself-dual\Q (being invariant by duality), we can
  equivalently define natural isomorphism by \P<em|<text-dots>as well as a
  set of isomorphisms <math|\<beta\>\<assign\><around*|{|\<beta\><rsub|X>\|\<forall\>X\<in\><math-ss|<samp|D>>|}>>
  in <math|<math-ss|D>>, such that figure <reference|figure: natural
  isomorphism dual> commutes, where the set <math|\<beta\>> is called a
  natural isomorphism.>\Q Thus, natural isomorphism is \Pself-dual\Q too.

  <big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D494844520000028A0000018D080200000019FBC7FE0000000373424954080808DBE14FE00000200049444154789CEDDD69581457FA36F0A79B5510700337C47645511104154545119731AE71098951711D8D4AC6382651C780C6652446D498984505C96054303A89C62D0614774145454551409145408166A7E97E3F9C77EAEA3FF452DD3450E0FDFB54769DAA7ABA928BBBABEA9C5322854241000000509B4A4A4A9A3469C2BFBDB8F64A01000000FD209E0100006A9DB1B1B14EED11CF000000B5CEC8C848A7F688670000805A271289746B8FAE610000004283AB67785B28148AFDFBF78F1831C2C4C4A4499326FDFAF5FBEEBBEFE472797DD70500A002AE9EE1AD909A9AFAFEFBEF171515F9FBFBF7EEDDBBB4B4343434343434D4D7D7F7975F7EA9EFEA0000AA423C43E3979696E6E1E1F1EEBBEF0607072BF7CE183060C0CD9B37CF9C39337AF4E87A2C0F00A03ADCDC86464EA1507CF0C1073E3E3EBB76EDAAD273B253A74E44141515554FA50100A8A5DB302C800667F7EEDDA9A9A9274E9CA8BEEAF9F3E744A4D33C3E00007503F10C8D594949494040C04F3FFD646D6D5D65554141415C5C1C11797878D4476900009AE0E6363466E1E1E156565693274FAEBE6AEFDEBD151515AEAEAE78F00C000284AE61D0980D183060D2A4496BD7AEADF2F9DDBB773D3D3D8D8D8DAF5DBBE6E8E8582FB5010068807886462B2727C7CECE2E2121C1CCCC6CC99225376FDE944AA5CD9B37777575BD76ED9AADAD6D6464A48B8B4B7D970900A0026E6E43A3151515656F6FDFB367CF989898B367CFBE79F3462693656767C7C4C4141414787A7A229B0140B070F50C8DD692254B2A2A2AF6EEDD4B448F1F3F7EFAF4A9919191BDBD7DB76EDDBCBCBCAE5EBDBA67CF9EC58B17D7779900002A209EA1D1EADEBDFB860D1B7C7D7DABAF8A888898316346DBB66D5FBE7CA9759EFA3B77EE7878785CB972A55FBF7EB55329004055B8B90D8D535A5A5A525292B7B7B7CAB54E4E4E44949191919090A07557CB962D2B2B2B4B4F4F3770890000EA219EA1718A8A8AEAD3A78F9D9D9DCAB5E5E5E56C21232343F37EC2C3C32F5FBE4C44AF5EBD326C8500001A209EA1713A7FFEBCBA4B67224A4D4D650B5656561A76525858B871E3C6DEBD7B13E21900EA16E2191AA7A8A8A8112346A85B7BEDDA3522128BC55DBB76D5B0934D9B362D5AB4883D72463C03405D423C4323949494F4FCF973373737750D8E1F3F4E441E1E1EAD5AB5D2B09353A74E2D5FBE9CDD21473C03405D423C4323C45E42555454A472EDC993271313138968CD9A351A76B262C58AA0A0206363E3962D5B12515656562D540A00A01AE2191AA1F3E7CF13D1DDBB77ABAF924AA52B56AC20A279F3E6BDF3CE3BEAF670EAD429232323361D37BBC2C6D53300D425C4333442D1D1D1CD9A35DBB87163454585F2E779797953A64C79F2E489AFAFEFF7DF7FAF6EF3F2F2F2CF3EFBECEBAFBF66FF6457CF886700A84B8867686C121212B2B3B3CF9E3DFBE2C50B6F6FEF93274F3E7CF8F0D2A54B1B376EECD5ABD78D1B3776ECD871F0E041131313757BD8B163C7F8F1E3BB74E9C2FED9A2450B22CAC9C9C11C3E005067306B183436BB76ED0A0909B97DFB764A4A4A6060E0B973E7B2B2B22C2D2DDDDCDCC68F1FEFE7E7C7E2569D8C8C0C474747B1586C6CFCFFDF862E93C9F2F3F389282727875D490300D436C433343653A64C914824C1C1C1FA6D3E6BD6ACA143878E1B378EFB442A95B259C6121212D80200406D33AEEF02000C492E97474747878686EAB7F9E5CB971F3F7E1C1616A63C11B742A1303232AAACACCCCCCC443C0340DDC0B36768546EDFBE5D5050306CD8303DB695C9644B972E0D0E0EAEF2920C9148C4EE876766661AA64A00006D10CFD0A8444545393B3B376FDE5CA7AD4A4A4A1E3C78E0EBEB9B989858E5E9724949097B132511C5C7C7E7E5E5E1791000D401C433342A515151C3870FD775ABEEDDBBF7EAD5EBE8D1A3A5A5A53D7AF460B39A309D3A75EADAB52BBB6E0E0A0A6ADEBC79484888010B86B7597979F9DCB973DBB46953525252DFB53424717171262626BB76EDAAE17EBEFBEE3B3333B3D8D8588354A5417979B9ADADEDAC59B3CACACA74D84C519BF6ECD9B361C386D2D2D25A3D0A00C7D6D6F6E4C993BA6E555A5A2A97CB6BA31E00752A2A2A264E9C686A6A7AF1E2C5FAAEA5E1D9B87123116DD8B041EF3D04050511D1D6AD5B0D528FD6B0FBEBAFBF4C4C4CFEF6B7BFF10FC45A8CE723478EB05F0077EFDEADBDA300003438959595EFBDF71E11EDDFBFBFBE6B69A866CF9E4D444141417A6CBB7BF76E229A3D7BB6412AE11976FBF7EF27A2091326545656F2D96D6DC5737171B1838303ABF8DCB973B5741400808668D3A64D443465CA14AD2D131212AAF455D4D5BD7BF7EAE01BE9E7F2E5CB5F7CF1C5A851A33A76EC686161211289ACACAC7C7C7CC2C2C2643219D72C2727C7D5D535222242795BA9542A9148C462F1993367743A684C4C8C919191838343414141CDBF824E613775EA54225ABB762D9F3DD7563C7FF1C517DCFF1CE1E1E1B57414008006E7E6CD9B2626264D9B36CDCCCCD4DA382A2AAA6FDFBECECECEDDBB77E7A6CA21A2962D5BF6EEDDDBD9D999ADEDD3A78F939353972E5DAACFBA939A9A5A075F4A27F9F9F93B76ECE8D5AB1757A4999959E7CE9D3D3D3DDDDCDC2C2C2C88C8CDCD8D559E9D9DEDECEC4C4429292955F673FAF469762A5EBD7AC5F3D07979791D3B7624A213274E18E4BBE81476AF5EBDB2B6B61689447FFEF9A7D63DD74A3C2727279B9B9B7315070707D7C65100001A1CB95CDEB76F5FFE9750CA94DF915A3DAB382F5FBE5CBD7A35BBE636323252BE0C158283070FB669D3867D0B1B1B1B7F7FFF3367CE283F912D2D2DDDB76F5FB366CDBA76EDFAF4E95396CDDDBA7553B937D615D4CFCF8FE7D1972F5F4E449E9E9E06F8267A855D60602011393A3A969595696E592BF13C65CA14E5DF6EAB57AFAE8DA300003438870E1D22220B0B8BD7AF5FEBB4A1542AE5AE9E7BF5EAA5B5FDD2A54B89A863C78E7A165A0BB2B2B2468D1AC5BE82A9A9696060201BA9A8D2AD5BB7CCCDCDB9AFBC6CD93295CDD8380B9148141717A7B580D4D45433333322D2F57EB83A7A845D414181959515116DDFBE5D734BC3C7F3B973E7D84F03AEE279F3E619FC2800000D8E5C2E677F1BE7CC99A3EBB6EC462EF3F1C71F6B6D7FF5EA55221A366C983E85D682870F1F76EAD489D5DFB3674F3E5D86D7AD5BC77DE5DF7FFF5D5DB3EEDDBB1391AFAFAFD61D2E5AB4888824128941466AE81D760B162C20227B7BFB8A8A0A0DCD0C3CEE592693F9FBFBB768D1E23FFFF90FF721DEC407000D5D747434BB2D5913172E5C484C4C24223F3F3F5DB7551E8EEFE3E3A3B53DEBAFC49EB3D6BBEBD7AF0F1E3C3839399988FAF5EB77F1E2C53E7DFA68DD8AC51811999A9A8E1831425DB33973E610516464645A5A9A86BD151515858787B3F635EC6D47350BBBB973E712515A5ADAD1A347353433703C7FF3CD370F1F3EDCB2650B7BB8C2209E01A0A13B70E0C0FAF5EBA3A3A36BB213F6A7DCC6C666C89021BA6ECB1DDAD8D8D8CBCB4B6B7B36D50977C15A8F525353274D9AF4E6CD1B22EAD0A1C39933675AB56AC56743070787D6AD5B13D1D0A1432D2D2DD5357BE79D7788482693694EBB63C78E15151511D1F8F1E375AA5FA59A849D8787079B9D903DE950C790F1FCEAD5ABF5EBD7BBBBBB2F58B0C0C4C4849B5811F10C000D1DBB0C4D4949D17B0F151515919191443472E448E53ED87C141616C6C5C5B165777777F6F052D9CB972F7FFCF1C7E2E262EE93D7AF5F9300E2B9A8A868E2C4895959594424168B8F1C39C2339B193B3B3B221A33668C86367DFBF66DDBB62D11698EE783070F1251AB56ADFAF5EBC7BF00956A187662B1983D833F7DFA34FBC5A0BA590DAB54F6F9E79F171414ECDEBD5B2C161391ADAD2DFB9CFD87010068B8580FE19AC4F3CD9B37D98BC3070F1EACEBB631313132998C2DABBCCDBB77EFDEC58B172B4F0ECA8EA5FC64542732992C3D3D3D27274751B349E6D7AC5973F7EE5DB6BC70E1420F0F0F9D36AFACAC24A2B163C76A6E3670E04022BA7AF5AABAE9512B2A2A2E5EBC48441E1E1E2CA16AA2E661C7CE436969E9952B57D4B531583CDFB871233434D4CFCF8F9D2652AAB8A4A4A4B0B0D050070200A87B128984880E1C38A0F71E626262D882F2ED509E941F3CAB8CE7A3478F3A393929BFD0C5DBDB3B373777D0A0413A1D48A150444444787B7B5B5858B46FDFDED6D6D6C6C666FAF4E9376EDCD0B566228A8B8BFBF6DB6FD9B28585C5975F7EA9EB1EF2F2F2ECEDEDB53EA87671712122994CC6DD63A8E2D6AD5BEC3A558F935F8541C28E154C44D7AF5F57D7C630F1AC5028962F5F6E6D6DBD65CB16EE43E53B18B8BF0D000D9A442209080848494961FD7AF4101F1FCF167AF7EEADEBB65C3C9B9898787A7A5659FBDFFFFEF7DEBD7B551E488BC5E2EA5394689697973776ECD8193366DCBD7BF7BDF7DE0B0C0C5CB162C5B061C3FEFBDFFF7A78787CFAE9A7BA5E49070404B0CB5F229A3973261763FC5DBC78F1E6CD9B5A9B71A7545D3CD7E4E42B3354D8692DF8FF1FACE6F6EDDB47443B77EE54FE70FEFCF9DC51AE5EBD6A90030100D497E4E4648944229148A2A2A2F4D89C5D30999898E83AAA272F2F8FBDD294FEEF7C1A72B93C232363D7AE5DEC51F4912347F4A88A535C5CDCBF7F7F9148B476ED5AA954AABCEAC58B17BEBEBE44B464C912FE3B7CFCF8B17207E9D8D8D89A94A7D9B56BD7D851D40D39FBC73FFEC11A5CBA74A926073260D83569D28488FAF6EDABAE8101E2392F2FCFCECECED9D9B9CADC34AB56ADE22A3E7EFC78CD0F040050BFD8EB44D995B4AEDBB26B2C3DE609F9EDB7DFF85C90F1992254037F7F7F22DAB3678FCAB572B9FCEF7FFF3B111D3E7C98E70ED94BA5187B7BFB9AD4A6D5F3E7CFD981264F9EACB2C1B469D35883E4E464BD8F62D8B0EBDCB93311356BD64C5D03DD7A0FAA141818F8EAD5AB888808EEF71DA3FC14A4B66F6E5FBA74292929A9560F01004044F3E7CFDFB76FDFFAF5EB0F1C38307CF8702F2F2F3E83982B2A2A727373E9FFDE08E549F9C1B3ABAB2B9B92BAA2A2422A95A6A4A4B0CE503D7BF6646390F4939191B167CF9EF1E3C72F5EBC5865039148B463C78EF3E7CFFFEB5FFF9A3163069F7DFEF5D75FDC321BFB547BB8B3CA5ECD5E1DF7B91EE79F63D8B06BD5AAD5B367CFF2F2F2CACACAD85C6655E9FD3B82B97FFFBEB1B1F1CC9933ABAFFAE9A79FB8A36CDCB8B18607D24C8F31FE000006C1E74A9A0D7322BD667BE6BA1199989814151529AFCACFCF67FDC075BAED5C1DFB73AD75AACB7FFFFBDF44141F1FCF679FCA41B86FDFBE9A94A7955C2E670772767656D9804DDC4D449A27EAD2C0E061376CD830B689BAE95D6B7AF5ECEFEFDFA44993AFBEFAAAFA2AE51F14B53DB66AFEFCF97CC6E90300D4D0A3478FB66EDD4A44128964F8F0E11D3B76E4339B585959195B507E83021FAF5FBFE606260D1830805D3A73ACADADC78F1F7FE5CA1536EE4B6F0F1F3EA4FF0D4FD260C080014474EFDE3D2EEDD4A9ACACE47E911091ABABAB86C6E1E1E11F7EF8A186064E4E4E0909091A1A8844223333B3B2B232E591DFCAD8F9373232D275C439C7E061C79E3D135171713137725A598DE2F9C89123ECF645BB76ED34B7ACED9BDB43860CD163161E00009D444747B39EDB010101FACDF1A9EB7492D1D1D1DCA5A1CA2155AF5EBD128944358CE7C2C242B1586C6D6DADB919EB0A5E5050A075871515155CD9F4BF1946D5292929613715D8606BE5B9391D1C1CECEDED478E1CA9F5888A9A8DCFD6AC36C24E6BC1FAC7737171F13FFFF94F3B3BBB6EDDBAA96C2093C9B8115D989904001A0196CD515151BAC62177D5AB6EDE0C75941F3CAB3C686C6C6CEFDEBDD9EC5A7AB3B5B595CBE5AF5EBDD2FC003B3D3D9D9486F96A606E6EDEB469536E10B089898986C60B162CE0A6D77EFAF469D7AE5DD9B2BBBB3B9F515544A45028CACBCB8948F543DCFF9DFFCACA4A994CA6EB05742D855D6969295B5057B3FEF1BC71E3C6172F5E9C397366F4E8D12A1B9497977347453C034043171818989292E2E7E7A7C7A52A17CFDC1F659EB80E56A6A6A62AA71B0B0E0EB6B1B1D1B59E2AD8EC25A74F9F66AF9750E7CC9933C4E31E38D3A54B176EB4716666A6D64B73E6F2E5CBDC32FF0E65DC59AD3EDD29A37CFE9B366DCA73B74C2D851D57B3DA7AF47B48FEF8F1633333B3499326696EC69DA9162D5AE87720000081A8C9DF4C8542C19E2F4A2412FE9B28FFADAFD55743969696B66FDFBE57AF5EA5A5A5EADABC78F1C2C6C6C6DBDB9BE73E3FFBEC33AEF8C8C8489E5BCD9E3D9BDB8AFF18E5172F5EB04DD40DACE25ECC9C9292C2739F4CED855D972E5D48E3C02A3D670DF3F7F7178944DBB76FD7DC8CEBB9F7FAF56B76E70100A0210A0D0D25BD5E04C9612FD5484F4F57F07E4AAA752E4F43313333DBBA756B4242C282050BB8C9BD95BD79F366FAF4E9252525DBB66DE3B9CFD9B367730390D89B1CB552281467CF9E65CB5656563C2FD389E8E5CB976CC1DEDE5E6503EEC59A5C4B9E6A2FECD893027505937E937AFEFAEBAFA74F9FFEF4D34FD9A86A0D943BD6E3FE36003474351921C2FE60969797F3EF3DA43C74B8869DBFB49A3973E6A79F7EFA9FFFFC67C48811E7CF9FE73EAFACACFCE5975F060E1C78F3E6CDFDFBF76BEE83ADCCC9C969DEBC796CF9F8F1E3274E9CD0BAC9A14387B801CA5E5E5EFC1F1273BDC99C9C9C5436E0D28ABBCEE6A3F6C22E373797F542505730E911CF191919CB972FB7B1B151BE71A18E72777375A3C5010084EFC2850B54B38C747373630BF7EFDFE7B989F283675DDFF5A487AD5BB7EEDCB9F3F6EDDB3E3E3EB6B6B683060D7277776FD1A2C5071F7C505C5C7CEAD4A9993367EAB4C3EDDBB7BBBBBB139142A198356BD6C993273534FEF5D75FB90E6244E4E3E3C3FF40DC295537E24B8F935FAB61A7B560D2299EE572F9B973E7BCBCBCD2D3D3CDCCCCB4BE9783CD2BCBFDF3D9B367FC8F0500202873E6CC09080860EFADD20F77AB96EB30A5D9A3478FB8C9109D9C9C741D30AD1F7F7FFFA4A4A42D5BB6B8B8B8E4E7E79795950D1F3EFC871F7E78F2E4097B45B14E9A366DFAC71F7FB0F937F2F2F2C68F1F3F7DFAF4E3C78F2B0FCDCACDCDFDF9E79F7D7C7CA64E9D6A6F6FCFC69413914E8763A7B4499326FDFBF757D9A05FBF7EACF7389F935F0761C795A1E97E0C9F27D80101012E2E2E555E7E626E6EDEBF7FFFFBF7EF5769FCE2C58B418306F5EBD7AF4A7B6363E31E3D7A0C183060C58A153C9F9C0300341A4545456C268A69D3A6A96B73EBD6AD3163C60C1E3CB877EFDE556620E9DAB5ABA7A7A7B7B7F7C891232F5EBC589795D7904C26DBB2658BF2F52511595858D8DBDB735373585B5BAF5CB9B2B0B050A1506CDDBAD5C1C141A743B46DDB9688C68E1DABA10DFB95C08690A96B536761C75E31626D6D5D5656A6AE0DAF7856F7AE4D7373F3972F5F5669ACF501C3DCB973F91C1400A09161FD879B356B56E59D0A9C1D3B7668FEFB494462B1B87A54085F5151514848C8CC99331D1D1D9B376F6E6C6CDCB2654B2727A73973E6848484E4E7E72B37CECECEE6BFE73B77EEB033131616A6A1D9CE9D3B59330DEFCEAA9BB0ABACAC643F56E6CD9BA7A1609182471FC2C2C242232323535353B158ACEB94370000C0444444B0F7495CB870819B72196A68F3E6CD6BD7AEB5B4B4CCCCCCD430A6393D3DBD63C78E32996CFDFAF55F7CF185CA3675137657AE5C612FEDD63CBF0DAF67CF4D9B366DD2A489919111B21900406F53A64C61D35BB2175382411C387080883EF8E003CDF38DB46BD76EFAF4E9ACBDBAEBD2BA093BF65FDFD1D151F340003DC73D030080AE8C8D8D57AC584144111111F9F9F9F55D4E63101D1DFDF8F1635353D3B56BD76A6DBC6AD52A9148F4ECD933E59163754C2A951E3E7C988802030335FF08403C0300D49D8F3EFAC8D1D1B1A8A8E8EBAFBFAEEF5A1A830D1B3610D1C2850BB98947347075756513CBB0ADEA457070B0542AEDD3A78FD6D766F37AF60C00008672FEFCF951A346356DDA342929A986AFB278CB9D3D7B76CC98310E0E0EF1F1F1CD9A35E3B3497676B69393534E4ECE1F7FFCF1B7BFFDADB62BAC7EF46EDDBA1515155DBE7C99BD9D53035C3D0300D4A9912347AE59B3462A957EF4D147F55D4B03565858B878F162B1581C1616C6339B89C8D6D6363C3C5C2C162F59B2442A95D66A85D57DF4D147F9F9F90101015AB39910CF0000756FC3860D13274E3C7AF428EBD6047A58B66C597272727070B0AE33AD8E1E3D7AEBD6ADA9A9A9FEFEFEB5549B4A212121919191D3A64D5BBD7A35AF0D340CBA0200805A525656F6CE3BEF989999C5C4C4D4772D0DCFC68D1B8968F3E6CD35DC4350509001ABD2202A2ACAD4D474FCF8F1E5E5E53C37C1B3670080FA515E5EBE68D1A2B367CF3E7BF6AC6EE6EC6C1C626363070F1EBC6DDBB61A5EFE7EFBEDB72B57AEBC7CF9323723772D292B2BEBD0A1C3983163F6EEDDCBBD195A2BC433000080E0E0D933000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C00002038068BE7B4B4B44E9D3AAD5AB5CA503B0400804669E8D0A143870EADEF2A84CED8503B92C96429292939393986DA210000344A696969F55D4203809BDB000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C11129140A83ECA8B2B2323737D7DCDCDCDADADA203B0400804629373797885AB66C59DF85089AC1E2190000000C0537B70100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE21900A021B975EBD6F7DF7F5FDF55D4A7AFBFFEFAC993277A6C989393B379F3E6E2E2E27AAC813FC433004083111515356CD8B0E6CD9BD77721F5CCC3C3232E2E4EA74D5EBE7CE9E1E1F1F2E54B0B0B8BFAAA4127B512CF9999998B172FEED0A1838D8DCD9429533233336BE32800006F956BD7AE4D9C38F1D34F3F7DEFBDF75436282A2AB2B4B414E9E8C30F3FACE32F52C583070FD6AD5BE7EDEDDDAE5D3B5353532323231717978D1B37161515B10679797903070EBC7AF52AFBE7CA952BA74E9D3A6AD4A8FBF7EFF33C447676B68F8F4FA74E9D76EDDAC5BFB0DBB76F4F9830A165CB96AD5BB75EB97265656525B74A8F1A7465F8F73DA7A6A60E1A34A8B4B4F4F0E1C35F7EF9654C4CCCB469D32222220C7B140080B74A4E4E8EB3B3B38383C3E5CB978D8C8C54B6292C2CDCB973A75C2E4F4E4E0E0909611F2E5AB4C8DEDE9E884422915C2E97C96485858577EFDEBD7AF52ABBCDBB64C992EFBEFBAECEBE88B23FFEF8E3DFFFFE774C4C0C11D9DADA8E1A35AA73E7CECD9B374F4949397AF4A88585C5F1E3C7DBB56BE7E3E3939090F0E6CD9B264D9AB00D8B8B8B5D5C5C140A456C6CAC8D8D8DE6A328148AB163C75EBF7E3D2121A17DFBF63C6B3B79F2E4E4C993FBF5EB171010B078F1E2172F5EECDEBD7BE9D2A55C039D6AD087C2D0C68F1F4F448B172F0E0A0A6287F0F0F030F8510000DE2A53A64C118944B76EDDE2D3F8F7DF7F677F7E5BB56AA5AE4D6A6A2ACBAACD9B371BAE4CBE32323266CC98C18A1C3162C4B973E72A2B2B951B1415154D9932A573E7CEAEAEAE44347CF8F02A7B3875EA1411CD9E3D5BEBB176EEDC4944C1C1C1FCCB2B2A2A6ADDBA35111D3A7468DCB871ACCECF3FFF5CEF1AF460E0787EFCF8B1482422A25F7EF965FBF6ED4464626212111161D8A30000BC55A2A2A288E8DD77DFE5D9FEB3CF3E63893279F2640DCDB66DDB46443FFFFCB3216AD4C19D3B77DAB66D4B44D6D6D61A8E5E5858D8A14307F645366DDA54BD81A7A7A74824BA74E9928663BD79F3A659B366EDDAB52B2929E15FE14F3FFDC48E9B91913171E24422B2B3B37BF2E4897E35E8C7C0F1FCD5575FB1AFF4ECD9338542111F1F9F919161D8430000BC6D3C3D3D89283A3A9A677B0F0F0FF6A778DBB66D1A9A9D3B774EA7DD1AC4850B17ACADAD89A865CB965A6F06AC5FBF9E7D911B376E545F7BE8D021221A3D7AB4863DAC5DBB9688020303752AF29D77DE21220707078542515A5A1A171727954A55B6E453837E0C1CCF63C78E25A2162D5A1876B700006FADDBB76F1351A74E9DE472399FF64545452626262CD5AE5DBBA6A1E5850B1788282929C940956AF7E4C913D6EDDCD8D898CF15E7D9B36789A879F3E6556E7D33A5A5A5CD9A3523A2848404959B979797B76AD58A88929393F9172993C99A366DCAF37685D61AF466E09EDBD7AF5F2722777777C3EE1600E0ADF5F3CF3F13D13BEFBCC31E1D6A75E5CA958A8A0A22323737670F6E3952A95479B4EE9B376F442211EB3856078A8B8B274D9AF4E6CD1B225AB76E1DBB25A099ADAD2D11797B7B8BC52AD2CACCCCCCC7C78788D8256C75A74F9FCEC9C9E9DDBBB74422E15FE7FDFBF70B0B0B895F9669AD416F868CE7274F9EB0F33E60C00003EE1600E06D76ECD831226219C0477474345B18306080A9A9A9F2AA6FBFFDF6FDF7DFE7FE595050D0BA756B333333FEC51417173F7AF4283131B1B4B494FF56CC975F7EF9E0C10322727070F8F4D34FF96C525E5E4E44A3468D52D780ADFAEF7FFFAB72ADAEA78EB97979D13F000020004944415479F3265BE099659A6BD05FCD2FC0972E5DAAEE379DB1B1715A5A5ACD0F0100F0767AF5EA15FB73FAE2C50B9E9B0C1D3A946DB27AF5EAEAAB962F5FCEFDB3B0B030353595E76EEFDEBD3B71E2442EEFCDCDCD67CC98A1B2B7944A292929DCB63B76ECD0E9A01A728445A94824CACFCFAFBED6C9C98978F77DEBD5AB97CA2C1389443D7AF4D0B0A1E61AF4665CF3801F376E5CA74E9D140AC5891327D8938C80800076E3DECACA8AFF20330000A8E2C68D1B44D4BC79739EB7A04B4B4BD9264454E5EE715C5CDCA54B97FCFDFDB94F2C2D2D2D2D2DF9ECF6E8D1A31F7EF8A1B3B3F38103079C9D9D4B4B4BE3E3E377EDDAE5E6E676ECD8316F6F6FAD7BD8BD7B37BB143637379F33670E9F8312519F3E7D345F95F6EEDD5B241229148AD8D8D82A6548A5D2478F1E1191B3B3339F632D5FBEBCB0B050A150ECDCB9332D2DCDCECE6ED5AA55442412897AF6ECA95F0D3562C0A867239E9B356B66C07D0200BCCD366CD840446CFA0B3ED8102CE6FAF5EB4F9E3C79F2E4C9C3870FF7EDDBD7A64D1B22CACACAD2B5865BB76E999999F9FBFB57E99B565959B968D1221B1B1B3E9DCBD8482A221A376E9CAE0568C60628FFF8E38F553EBF78F1223B625E5E1EFFBDC9E572D6B17CD2A44935AFA1260C70F5CCB975EB16FBDFC880FB0400789B6565651111FFDB90DC8367221A38706095B58E8E8E767676BAD6F0F9E79FBBBBBB07070757B9F72B168BBFFBEEBBDBB76FFFEB5FFFFAE5975F34ECE1D1A3471919196C79CC9831BA16A059FBF6EDB3B2B2525353AB7CCE4E9DA5A5A54E537A2525251514141051955E75FAD55013068BE757AF5EA5A7A71351BF7EFD0CB54F0080B75C5E5E1E11F10F182E9E274C98307BF66C22AAA8A878FDFA755858D88D1B37860D1BA64701E7CF9F3F72E488CABED3464646FEFEFE8B162D2A2D2D35373757B793C4C4446ED9CDCD4D651B8542A12EDE4C4C4C34FC406117BBAF5FBFAE5E39E972EA18368C8D74CC327535D484C1E2995D3A938EBF380000400396311A924F595959191BDD4A4473E6CC993A752AB76AC890212E2E2E5E5E5EBA16909C9C5C5959A9E10F7BBF7EFD4A4A4A5253531D1D1DD5B5C9CDCDE5967BF5EAA5B2CDEFBFFF3E69D22495AB8C8D8D8B8B8BB9C1DC55B09353FD35913A9D3A8E7E59A6AE869A30583CDFB973872DE0EA1900C050D8F82575EFC0A8E2FAF5EBACBD582CAED24789BDFD498F78E649A1F1ED4ACA1DD0D45DCEB25E660A85A2B4B474DDBA754F9F3E25A22143862C5BB6AC6DDBB6EAB299888C8D8D89482E9757F95CA753C76159666B6BABD370707535D484C1E299BDF6D2C2C242C30F280000D009BB2C2B2B2BE3D398BBB3EDE6E656E59DD02F5FBEF4F6F6D66306922E5DBA181B1BC7C7C777EAD4496583F8F8783333330707070D3BE1A6CE26A2FCFC7C36CD5615EDDBB7E7EE6073A3A257AE5C3979F264CD15B218AE9EFA3A9D3A0EBB7AD6F53A535D0D3561B06949D8FD7A1717175D7FAA0000803AECBAB3A4A4844F6336B495544DC4317DFAF4F3E7CFEB5180B5B5F5E8D1A377EEDCA9F2FA582E977FF3CD37E3C78FB7B0B0D0B093FEFDFBB3A7B344C4063B69909898989696464446464623468CD05A213B39D5235FA753C7A4A5A565676793FA07E4BAD650138689E7FCFCFC67CF9E91EE5F09000034601794AC13B266E5E5E557AF5E65CBBACE93A5D9E6CD9BAF5EBDBA7AF5EA2A9F2B148A152B56DCBB776FD3A64D9AF7606262C28D750E0F0FD7DC98CDB34D446E6E6E7CAE47D9C9A972B780FE77EA727373653299D69D30DC83675DB34C5D0D35619878BE7DFB36FB618578060030A08E1D3B12D1CB972FB5B6BC71E306BB86333737E7339D357F7DFBF60D0F0FDFB163C7D0A1432323239F3C79F2F8F1E3C3870F0F1E3C78FFFEFD9191917C9E69AE5BB78E0D0EDEB3678FF2E8AF2AB2B2B2FEFDEF7FB3E5912347F2298F0D1AEAD6AD5B95CFD9A993CBE59999997CF6433588677535D48461E2393636962D60B66D000003EAD3A70F11A5A6A66A9DE39A9B9064F0E0C13A4DA3CDC7D4A953AF5DBBD6B469D3F7DF7FBF7BF7EE8E8E8EB366CD6ADBB66D6C6C2CCF71CCB6B6B6274E9CB0B1B1A9ACAC1C376EDCAE5DBBAADC76AEACAC3C7EFC78FFFEFD150A05EB08A661AA6DCE8B172F587FE9EAE9D3A3470FB61FADB7D3392CCBECECEC58B4F3A4A1869A304CD730D62FAC59B3663D7AF430C80E01008088FAF7EF2F168B653259424242F54B3AB95CBE7FFFFEBCBCBCFCFCFCBD7BF7B20F9F3F7FBE71E3462B2B2B2323231F1F1F43FD597671713975EA147B94291289BA74E9626565A5D31EDCDDDDE3E2E266CD9A75F5EAD58F3FFE78EDDAB59E9E9EEDDAB5333737CFC8C8B872E54A7676F6B469D3F6ECD973F8F0E1CF3EFB6CF0E0C15AF7191F1F4F441D3B766497E6CACCCCCCFAF6ED1B1B1B1B1F1FCFF36E3FCB32EE6DD93C69A8A1460C32F758D7AE5D8968CA942906D91B000070584AA97C8DC4C3870F35BF65F2F4E9D3755FB056E7CE9D5BB06041CF9E3DADADAD4D4C4CDAB4693374E8D075EBD6252626726D1E3F7ECC67579F7FFE3911F9F9F9A95CBB66CD1A229A3C79329F5DB1FE6844C4FAC1F1A7B906BD19209E5FBF7ECDFEFFD8B3674FCDF7060000CAB66FDF4E4463C78EADEF4284884D1EF2E79F7FAA5CCB9E255B59599597976BDD157BFB24113D7CF8D08035E84DCF67CF1515157BF7EEFDE69B6FCACACA6EDCB8A150284C4C4C9467A801000083F8F0C30FCDCDCDFFFAEBAF9C9C9CFAAE45589E3C7972FBF6ED0E1D3AA81B7FE5EAEAEAE6E626954A4F9D3AA5B2415656D6D75F7F1D191949446CC2351717179D1E0768AD416F7A3E7B5EB0604158581811595B5B27272713D1E4C9936D6D6D0D591A000010D9DADAFAF9F97DFFFDF76161619F7CF2497D972320EC71FB9A356B54CE07CEAC5AB5CAD7D777EFDEBD13274EACB2AABCBC7CC8902149494944949292C286A52D5CB8D0E035E847A4D038139B3ACD9B3767D399FEF9E79F6BD6AC898B8BBB77EF9EE637620200807EB2B2B21C1D1D2D2D2D9F3E7DAAEB24D28D556E6E6EA74E9D6C6D6D1F3D7AA461CA4F85423178F0E0EBD7AFDFBE7DBB6FDFBECAABE2E3E3D92B169B366D7AEFDEBD1E3D7AB46DDB363131D1D4D4D4B035E847CFB4EFDEBD3B11CD9D3BF7D6AD5B376EDC080A0A42360300D492D6AD5B070505A5A7A7EFD8B1A3BE6B118A0D1B3614151585848468CE459148F4C30F3F9899997DF6D967555675E8D0C1DCDCDCD8D8F8CB2FBF6493AE1C3C78907F36F3AF414FFA3DB24E4C4C1C316284A5A5659F3E7D0E1D3A64C087E10000A0D2AC59B3CCCDCD75EDB8D4285DBC78512C16AF5BB78E67FB7DFBF6115148484895CF4F9E3CD9AB572F4B4B4B6F6FEF5BB76ED56A0DBAD2F3E6360000D4B1F2F2F277DF7DF7D9B36757AE5C31ECF4CE0DCBF3E7CF3D3C3C264C98F0C30F3FF0DF6AD3A64D5BB66CB978F1A2415EABA85F0D3A413C030034186565657E7E7EE5E5E5478F1EADEF5AEACDC08103070E1CB863C70E5D7B63050707EFDCB9F3C183079A5FE051AB35F08778060000109CDA8A7D000000D01BE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE219000040700C16CF959595D9D9D952A9D4503B04008046E9F5EBD7AF5FBFAEEF2A84CE60F1FCE2C50B3B3B3B7F7F7F43ED1000001A253737373737B7FAAE42E870731B0000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1D1279E5352526AB53D0000BC851016CA748EE7D0D0D04EFF3377EEDCE8E868752D030303478C1821128958E31A950900000D8D482462113062C488C0C04075CD42434395C30221CD18EBBAC1F0E1C3FDFCFC525252A2A3A3434343434343030202FCFCFC94DB444747CF9D3B979D628944229148E6CC9963A0820100A061080808B870E1427474348B8C03070E8484840C1F3E9C6B909292A27C99C7C2422291D447B1C2A3D0577272724848083B8F1289E4975F7E21223F3F3FEED4070404E8BD7300006834929393593448249280800076D9161212C2C2422291444545D5778D82235228143549F7949494D0D0D0F5EBD7DBDBDBA7A5A5B9B8B8DCB973879D6BFC020200004E6868E8DCB97325124969692911656666125148484895FBAFC0D4349E99C0C0C0F5EBD773FF4C4E4E463683A028148A9090909F7FFEF9D2A54BC6C6C63D7BF65CB060C1E2C58BC5620C5E00A83B2CA18D8D8D8D8D8D4B4B4BA3A2A294EF758332C3FC6DF2F3F3F3F2F262CBB86E06A1494D4DF5F4F4DCB973E7871F7E78E9D2A5D3A74FF7EDDB77E9D2A53367CEACEFD200DE2E7E7E7E7E7E7E3299ACB4B454F9612854679878964824DC59C6E90641494B4BF3F4F4747777BF75EBD6FCF9F3070E1CE8E5E5151212D2BF7FFF43870E9D3D7BB6BE0B0478BB703D85B98B3A50C96077F6582A239B4150140AC5071F7CE0E3E3B36BD72E232323E5556CB05F5454543D9506F096E26EAF222F34D37960953AEC021A03A8405076EFDE9D9A9A7AE2C489EAAB9E3F7F4E444D9A34A9F3A200DE6A128984F505C36350CD0CD3350C40804A4A4ADAB76FFFD34F3F4D9D3AB5CAAA82828256AD5A5554549C397366F4E8D1F5521E008006E8B60A8D567878B89595D5E4C993ABAFDABB776F454585ABAB2BB21900840957CFD0680D183060D2A4496BD7AEADF2F9DDBB773D3D3D8D8D8DAF5DBBE6E8E8582FB5010068867886C6292727C7CECE2E2121C1CCCC6CC99225376FDE944AA5CD9B37777575BD76ED9AADAD6D6464A48B8B4B7D970900A01A6E6E43E3141515656F6FDFB367CF989898B367CFBE79F3462693656767C7C4C4141414787A7A229B0140C870F50C8DD392254B2A2A2AF6EEDD4B448F1F3F7EFAF4A9919191BDBD7DB76EDDBCBCBCAE5EBDBA67CF9EC58B17D777990000AA219EA171EADEBDFB860D1B7C7D7DABAF8A888898316346DBB66D5FBE7C291289EABE360000AD70731B1AA1B4B4B4A4A4246F6F6F956B9D9C9C8828232323212141F9F3C8C848D1FF25168B8D8C8C4C4C4C2C2C2CDCDDDDB76FDF5E515151175F0000DE7A88676884A2A2A2FAF4E9636767A7726D7979395BC8C8C850FE7CDAB4691515157BF6EC21A2214386949696969797979595151515C5C7C78B44A2952B577EF0C107B55D3C0000219EA1513A7FFEBCBA4B67224A4D4D650B5656565556191B1BDFBE7D9B88A64C99626666C6DEAB636A6ADAAD5BB7C0C040228A8C8CAC12EA0000B501F10C8D505454D4881123D4ADBD76ED1A1189C5E2AE5DBB565F7BE1C205227AE79D77AA7C9E9E9E4E444D9B36B5B6B63664AD0000AA209EA1B1494A4A7AFEFCB99B9B9BBA06C78F1F27220F0F8F56AD5A5559959999999898D8A54B972AD395E4E6E66ED9B2452412EDD8B1C3D2D2B236CA060050867886C686BD84AAA8A848E5DA93274F26262612D19A356BD46D3B6EDC38EE93E2E2E243870EB9B9B9999999FDF1C71FF3E7CFAF95A20100FE2F83BDB10A4020CE9F3F4F4477EFDEEDDEBD7B955552A974C58A1544346FDEBCEAB7AFE97FF11C111171E6CC1991482497CBDFBC7923954A3FF9E493C0C0405353D3DA2F1F008008E39EA1F169D3A64D595959C78E1D6FDEBC696262C27D9E9797376DDAB4F3E7CFFBFAFA86858529AFE274EBD6EDE9D3A73939392D5AB4E03EFCFDF7DFA74D9BE6ECEC7CF2E44975BDC101000C0B37B7A151494848C8CECE3E7BF6EC8B172FBCBDBD4F9E3CF9F0E1C34B972E6DDCB8B157AF5E376EDCD8B163C7C183075566331B2DEDE8E8A89CCD443461C2045F5FDFD8D8D84F3EF9A4AEBE0700BCED70731B1A95F3E7CF3B3B3BF7EFDF3F2E2E2E303070D1A2455959599696966E6E6E2B57AEF4F3F3AB12BDCAFEFAEB2F22F2F4F4ACBE8ACD64C26E7D0300D401C433342A515151C3870F27228944121A1AAAEBB6443478F0E0EAAB32333389087DB601A0CEE0E636341E72B93C3A3A9AC5B31ED45D3D5754541C3B768C88A64D9B56B3020100F8423C43E371FBF6ED82828261C386E9B1EDD3A74F9F3F7FDEAA55AB2A239E89E8E38F3F4E4D4DEDD1A3C7EAD5AB0D5126008076B8B90D8D47545494B3B373F3E6CD75DAAABCBCBCA0A0E0C0810344E4EAEA5A5858C83E97CBE50909095BB66CF9FDF7DFDDDCDC7EFBEDB7EA93800200D4125C3D43E3C13D78D6498F1E3D5AB76EFDE5975F12D1B973E7ACFEC7C6C6C6DBDB3B3B3B7BCF9E3DD7AE5D6BD7AE9DE12B86B7587A7ABABBBBFBA44993EABB9006262E2ECEC4C464D7AE5D35DCCF77DF7D676666161B1B6B90AAB42A2F2FB7B5B59D356B56595919CF4D70F50C8DC7CD9B37972E5DAAEB56CF9E3DAB8D620034C8C8C818366C586565E51F7FFC51DFB534306E6E6E8181811F7FFC717E7EFEBA75EBF4DBC9575F7DF5E9A79F6EDDBAD5DDDDDDB0E5A9636A6A7AE4C8913163C6E4E6E61E3B76CCCCCC4CFB360A0000A843D9D9D93D7BF6B4B0B0B87FFF7E7DD7D250CD9E3D9B88828282F4D876F7EEDD44347BF66C8357A5D5FEFDFB8968C284099595955A1BEB13CF7DFAF4A91EF3DCEBEBD91BECD96BF89A3469626D6DDDA74F9FA54B97DEBC79538F630100342672B97CCC983144B473E74EAD8D1312124422514D2EDAEEDDBB57075F4A3F972F5FFEE28B2F468D1AD5B163470B0B0B9148646565E5E3E31316162693C9B866393939AEAEAE111111CADB4AA552894422168BCF9C39A3D3416362628C8C8C1C1C1C0A0A0AB436AE8DB09B3A752A11AD5DBB56EBD1F599D4D3D7D737373757A150242626A6A5A5B10FDBB469D3AB572FAE8D42A190CBE5E5E5E50F1E3CC8CBCB631FCE993367CF9E3D4D9A34D1E7FF320080866FE7CE9DFFF8C73F060C1870EDDA35ADD11B1D1DFD8F7FFC43A1509496963E7BF64C2693B1CF5BB66CD9B66D5BB1582C1289D89FF2CACACAB2B2B2376FDEBC7EFD5A790FA9A9A90E0E0EB5F565F4525050101212F2D34F3F252424B04FCCCCCCDAB76FDFB66DDBD2D2D2870F1F161717BBB9B9FDFAEBAF0E0E0E39393923478EBC7BF76E4A4A4AC78E1D95F773E6CC99B163C7B66CD9F2E1C387B6B6B67C0E9D9F9FDFB76FDFD4D4D413274EA89C75BF8ADA08BBECECECAE5DBB4AA5D273E7CE8D1C3952D3E1B506B806C1C1C1DC7EFEFCF34F956D0A0B0BE7CD9BC7351B376E9C5C2EAFC94101001AA8B4B434F627FBDCB973BA6EABFC8ED494941475CD5EBE7CB97AF56A16FC464646CA97A14270F0E0C1366DDAB06F616363E3EFEF7FE6CC99D2D252AE416969E9BE7DFB9A356BD6B56BD7A74F9F3A3B3B1351B76EDD54EE8D7505F5F3F3E379F4E5CB971391A7A7A7AE651B36EC02030389C8D1D1B1ACAC4CC3416B14CFBEBEBEAC0E7373F392921275CD2A2B2B7BF7EECD157DE8D0A19A1C1400A0815ABC7831110D1A3448D70DA552A9B1F1FFEFC9DBAB572FADED591FC98E1D3BEA5365EDC8CACA1A356A14FB0AA6A6A6818181797979EA1ADFBA75CBDCDC9CFBCACB962D53D98CCDF4271289E2E2E2B416909A9ACA3A64E97A3F5C61E8B02B282860A334B76FDFAEE1A0351A5875E9D225B63068D02073737375CDC462F17BEFBDC7FD934DC00400F056494D4DDDB76F1F112D5AB448D76D2F5FBECCDDD9F6F1F1D1DAFEC30F3F24A22A7783EBD1A3478F3C3C3CCE9D3B47443D7BF68C8D8D0D0808B0B1B151D7DED5D575D5AA55DC57664FEBAB1B3E7C78F7EEDD150AC5575F7DA5B5864D9B36959595492412EE57027F860D3B2B2B2BD66CFBF6EDDC7754B1375DABE424272773F7E2478C18A1B9B1F24C11551E8D0000085F6060604A4A4A4DF6101212525151616161317DFA745DB7557E1D0B9F7866CF9B0512CFD7AF5F1F3C787072723211F5EBD7EFE2C58B2ABB5C55B160C102B6606A6AAA2162E6CC9943449191915C1EA9545454141E1ECEDAEBDADBAE36C26EEEDCB94494969676F4E851756DF48FE70B172E70CB5A2B4E4A4AE296BB76EDAAF7410100EA5E7474F4FAF5EBD99F54BDB178183162841EEF56898E8E660BC6C6C65E5E5E5ADB9794941051A74E9D743D90C1A5A6A64E9A34E9CD9B3744D4A143873367CEB46AD58ACF860E0E0EAD5BB726A2A143876A3863AC87974C26D390734474ECD8B1A2A222221A3F7EBC4EF553ED849D878747CB962D89E8D0A143EADAE81FCFDCFF2E16161603060CD0D052269345444470FF643F7600001A0A894452C33DDCB87183FDE156779F5683C2C2C2B8B838B6ECEEEE5E7D72D9972F5FFEF8E38FC5C5C5DC27ECBAADDEE3B9A8A868E2C4895959594424168B8F1C39C2339B193B3B3BD276C6FAF6EDDBB66D5B22D21CCF070F1E24A256AD5AF5EBD78F7F014C6D849D582C66F7D84F9F3ECD7E37A868A36BA11CEE07C5E0C1834D4D4D35B4FCE69B6F5EBE7CC996DF7FFFFD810307EA7D500080BA2791482412494D6E6EFFF9E79F6C41E51B4B358B8989E19E50AABC7ADBBB77EFE2C58BD91533939F9F4F44D5DFEFC2534949C98B172F0A0A0AF4DB9CB366CD9ABB77EFB2E5850B177A7878E8B479656525118D1D3B567333962957AF5E553E03CA2A2A2A2E5EBC48441E1E1E62B1CEA9574B61C7CE466969E9952B575436D0339E535252B8FF5335CF72FCD75F7F7DFEF9E76C79D8B0617BF7EED5EF880000F588C5B3AE2F11E7C4C4C41091B1B1B1F290599E941F3CAB8CE7A3478F3A3939B19BA58CB7B7776E6EEEA04183743A50494949505050DFBE7D2D2C2C1C1C1C6C6C6CDAB76FBF6CD9322E7274121717F7EDB7DFB2650B0B0B36ADBD4EF2F2F2ECEDEDB53EA87671712122994CC6DD63A8E2D6AD5BEC0AB56FDFBEBAD6507B61C7CA26A2EBD7AFAB6EA16BFF7286CD4CC65CBA7449651B994CB66BD72E13131322128BC5CB962D531EDC0600D080B09E4D128944BFCDD90D584747473DB6E5E685363131292A2AAAB2F6F8F1E344F4D1471FE95718E7DEBD7B9D3B7726A2EEDDBB2F5CB870C3860D4B962C61016F616171E4C8115D77A83CEFC7C2850BF528292929292323436BB3C8C84876941D3B76A86CF0C30F3FB006BFFCF28BAE35D45ED8E5E4E4B0DD4E9E3C5965033D5F89C1FD9A333535B5B3B3E37E5CB042F3F2F2A2A2A24243431F3E7C686C6C3C61C2844D9B36F1E9AA0700204C1289C4CFCF2F343474EEDCB92121213A6D9B9F9F9F919141441D3A74D0F5B8F9F9F9B76FDF66CB03060CB0B0B060CB0A85222B2B2B222262EDDAB5A4EDC24EABC78F1F0F1B364C2693858787FBFAFA2ADF018E8D8D5DB468D17BEFBD575959C90DFFD5EAC99327CA6FFBF8FBDFFFAE47555DBA74E1D3CCDEDE9E2DB09F50D53D7CF8902DE871FE6B2FEC5AB66CD9A449939292127565EB79F5CC9D0ECD468C1881A9B601A071484E4E667DC4241249727232FF0DEFDFBFCFFE24CE993347D783FEF6DB6F7CFED8666666EABA674E6565A58B8B4B93264DD44DEE515050E0E6E6666161C1FF5B6FDCB891ABCDDEDE5EEFDAF878FEFC393B90BACBD069D3A6B1063AFD57636A35ECD8ED8A66CD9AA95CABCFD57352521237086CEEDCB9AC9F3A1B49C68D27CBCDCD0D0F0F8F8A8AEADFBFBFB7B7F7D75F7FCDDD67AF0D972E5D52EECE0E00501B962E5DBA6FDFBE478F1E0D1F3EBC53A74E1289242020406BBFEECCCC4CB6A053BF6546F9C1B3ABAB2BBB7AAEA8A8904AA5292929AC3354CF9E3DD91824FD1C3B76ECCE9D3BDBB66D53D7ABD9CACA2A3C3CBC57AF5E9B366DFAE9A79FF8ECF3AFBFFEE296F9CC6E5D13DC59E5CE73157A9FFFDA0EBB56AD5A3D7BF62C2F2FAFACAC4CC52B26754D7B85D27D7C22BA7AF5AABA6672B97CE5CA95AC999999D9F1E3C7F538164F7E7E7E3A9D74000083E0F334FAD75F7F658DF9BCA7A80AEE6F7DF507CFF9F9F9AC1FF892254B74DDADB29933679A9B9B6B98629361EF9FE0F326448542A11C84FBF6EDAB49795AC9E5727620676767950DD8C4DD44545151A1D39E6B3BEC860D1BC6B67AFDFA75F5B5FA5C3D73BFE6ACACAC34BCCB5A24126DDEBCF9D8B163CF9E3D2B2B2B9B3973E6A3478F78DE28D0D5FCF9F3F90CD50700A8899C9C1C76F5CCAE98E7CC99C3E7DAA0ACAC8C2D68980F52A5D7AF5F730393941F3C33D6D6D6E3C78FBF72E54A0D1F3C3F7CF8B0478F1E1AA6D8E40A387DFA74464646FBF6ED35B7ACACAC549E30CBD5D55543E3F0F0703605A93A4E4E4EDCBBAD54128944666666656565CA23BF95B1F3CF5EFEA8A9EE6A6A3BECB8575A1517172B4F37C6D4289E870E1DAAF9DB9A9A9AFAF8F8FCF8E38F44545454141616B666CD1A3D8EA8D5902143860C19521B7B0600E0B05B9AC3870F57BEE7ACEBE6FC4547477397862A8754BD7AF54A2412D5309E0B0B0BDBB56BA7B5598B162D88A8A0A0406B3C5754547065D3FF661855A7A4A484BD424A2693A5A7A72BCFCDE9E0E0606F6FAFE5AD8B4444A4D0FDCDC87CD476D8692E5BE7787EF0E0019B0286F8F51554FEAFCE759F03006870D8A49E7E7E7EBAF6DCE6AE7AD5CD9BA18EF28F00957F6F6363637BF7EECD66D7D29BADADADBAA7B6CAD2D3D35963AD2DCDCDCD9B366D5A5858C8FEC9461CA9B360C1026E7AEDA74F9F721361BABBBBDFBC7953EBB18848A15094979713918AC7B744F4BFF35F59592993C9F85F40D741D8959696B2059595EB3C2DC9F9F3E7B9653E152BFF57D77AF304004098A2A3A3434343251289AED94C4AF1CCFD39E689EB60656A6AAA72BAB1E0E060CD9359F23168D0A0C4C444AD73A29D3973A64B972E3C7B57298F89E293FDCCE5CB97B965FE1DCAB8B35A7DBA5346BFF35F0761C7D5D3B469D3EA6B758E67EED79CB5B5359FC94B957FFDE93A850D0080401C38708088F4C866FADFDCD144949B9BCB7FAB57AF5E3D78F08047A5C018000006AB494441542D7B787870CF2995B9BBBB77EBD64D8F9294CD9E3D9B8894874255F7FBEFBFC7C7C7F37F6382F24C9CF7EEDDE3B9957222F27FED237756DBB469A3B2817EE7BF0EC28ED5D3AC5933959D12748B67B95CCE4D0E3E64C810232323CDED4F9C38919898C896DBB56B3765CA149D0E07002010EC4F9F7E4F79B9173BEA343BA6D6B93C0DA54F9F3EF3E7CFDFB76FDFF7DF7FAFB2C1DDBB77E7CF9F2F91483EF9E4139EFB9C3D7B361710EC555D5A29148AB367CFB2652B2B2BFE6F67E0CEAABADE587A9CFFBA093BF6BC405DD9BAC5735C5C1C7B2F18F1F8DF25232363C992256C592412EDD9B3A74AB74300808622252545EF1E58363636AC5FD58B172FF86FA53C74B8869DBFB4FAE69B6F860D1BB664C9123F3F3F2E6688A8A0A020282868E8D0A172B9FCC48913FC5F85E9E4E4346FDE3CB67CFCF8F113274E68DDE4D0A143DCFD612F2F2FFE0F89B9DE644E4E4E2A1BB0D93F4897F35F0761979B9BCBFA22A82B5BB778E65EBA42DAEE3C3C7EFC78F8F0E1DC59DBB973E7C48913753A16008040B00BA99ABC56D2CDCD8D88929292B841565A293F78D6F55D4FBA3237373F7BF6ECFCF9F3C3C2C27AF6ECE9E0E0E0E5E5D5AB572F3B3BBBCF3EFBAC67CF9E376FDED4F5651EDBB76F678391140AC5AC59B34E9E3CA9A1F1AFBFFECA751023221F1F1FFE07E22665E3C63757C14EBE724BADEA20ECB496ADC3B4243299AC7FFFFE6C2B3B3B3BB95CAEB2594A4ACA9A356BB8C7249696967ACCA50E00201CC9C9C90101015151517AEFE15FFFFA17FB93A86EE2CC2A94BBFEBAB8B8E87D5C5DDDB973E79FFFFCA7A7A767F7EEDDFBF5EB377BF6ECDF7EFB4DEFBDBD7AF58A9B798388A64D9B76ECD8B1FCFC7CAE414E4E4E5858181B3AD5BD7BF7AD5BB7B296090909FC8FC2EE243769D2A4ACAC4C6583929212D67B7CC284097C76583761B773E74EB6614C4C8CCA062285C671570A85C2D7D7372525452A956665657123CDCDCCCC5C5D5D956FC72B548D5A7BF7DD77838282784E6B0E00D058454545797B7B13D1EEDDBB972E5DAAB2CDEDDBB757AF5E2D954A0B0A0A9E3D7BA63CC946D7AE5D5BB76E6D6666261289020202860E1D5A4775D7586565E5575F7DB56DDB36E56E591616162D5AB4E0EEEE5A5B5B2F5CB870FDFAF5969696414141DF7EFB6D6A6A2AFF43B46BD72E232363ECD8B1A74E9D52D7C6CBCBEBE2C58BB6B6B65959592A479FD77DD8BDFFFEFB870E1DB2B6B6CECECE56FD1A69CDF19E9D9DDDB469535353532323239E03EA5BB66C396CD8B0808080478F1EF1FF1D0100D088C96432366278FCF8F1EADAECD8B143EB1F58B1587CFFFEFDBAACDC208A8A8A42424266CE9CE9E8E8D8BC79736363E3962D5B3A3939CD993327242444F97A5AA150646767F3DFF39D3B77D899090B0BD3D08CBB548D8D8D55D9A08EC3AEB2B292BD9F7BDEBC79EADA68B97A0600008358BA74E977DF7D676969F9EAD52BF4933594CD9B37AF5DBBD6D2D232333353E5E861263D3DBD63C78E32996CFDFAF55F7CF1455D56A8D2952B573C3D3D89282A2A4A5DBF3F9DC73D0300801EFCFDFD4522515151514444447DD7D278B0F1E81F7CF081866C26A276EDDA4D9F3E9DB517C245291B40EFE8E8A8E16D1188670080BAE0E8E8C8FAF4F27C272368151D1DFDF8F1635353D3B56BD76A6DBC6AD52A9148F4ECD933E5C94FEA85542A3D7CF830110506066AB8918E780600A8235F7DF5959999D9E5CB9795C73483DE366CD840440B172EE4261ED1C0D5D595BD5E8C6D558F828383A552699F3E7D66CC98A1A1199E3D0300D49D8080800D1B367878785CB97245D7175881B2B367CF8E1933C6C1C1213E3EBE59B3667C36C9CECE767272CAC9C9F9E38F3FFEF6B7BFD57685EA6AE8D6AD5B5151D1E5CB97070C18A0A125AE9E0100EACE175F7CE1E5E575EDDAB5DDBB77D7772D0D586161E1E2C58BC56271585818CF6C26225B5BDBF0F070B158BC64C912A9545AAB15AAF3D1471FE5E7E707040468CE66423C0300D4252323A3C3870F77EEDCF9F3CF3FE7DE7801BA5AB66C597272727070B086AE552A8D1E3D7AEBD6ADA9A9A9FEFEFEB5549B06212121919191D3A64D5BBD7AB5F6D6BA8ED60200801A7AFEFC79E7CE9D2512495656567DD7D2F0B0976B6DDEBCB9867B080A0A3260555A454545999A9A8E1F3FBEBCBC9C4F7B3C7B0600A807E9E9E913274EECD0A1C3B163C7EABB968624363676F0E0C1DBB66DABE1E5EFB7DF7EBB72E5CACB972F733372D7AAB2B2B20E1D3A8C193366EFDEBD6666667C36413C030000080E9E3D030000080EE2190000407010CF000000828378060000101CC433000080E0209E0100000407F10C000020388867000000C1413C030000080EE2190000407010CF00000082F3FF0059458F2B4EC3BD6B0000000049454E44AE426082>|natural-isomorphism-1.png>|190pt|110pt||>|<label|figure:
  natural isomorphism dual>In this <hlink|figure|https://q.uiver.app/#q=WzAsNCxbMCwwLCJBIl0sWzAsMiwiQiJdLFszLDAsIihGIFxcY2lyYyBHKShBKSJdLFszLDIsIihGIFxcY2lyYyBHKShCKSJdLFswLDEsImYiLDFdLFswLDIsIlxcYmV0YV9BIl0sWzEsMywiXFxiZXRhX3tCfSJdLFsyLDMsIihGIFxcY2lyYyBHKShmKSIsMV1d>,
  the <math|\<beta\><rsub|A>> and <math|\<beta\><rsub|B>> are isomorphisms.>

  Not only the equivalence of categories can natural isomorphism be used for,
  but also the equivalence of functors. Given two functors
  <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
  <math|G:<math-ss|<math|>C>\<rightarrow\><math-ss|D>>, they are equivalent
  if there is a set, or natural isomorphism,
  <math|<around*|{|\<alpha\><rsub|X>\|\<forall\>X\<in\><math-ss|D>|}>> such
  that figure <reference|figure: natural isomorphism v1> commutes. We find
  figure <reference|figure: natural isomorphism v1> is much generic than
  figure <reference|figure: natural isomorphism>. Indeed, in figure
  <reference|figure: natural isomorphism v1>, if we replace <math|F> by
  identity functor and <math|G> by <math|<around*|(|G\<circ\>F|)>>, we get
  figure <reference|figure: natural isomorphism> (the same for figure
  <reference|figure: natural isomorphism dual>). \ So, we shall use figure
  <reference|figure: natural isomorphism v1> as the definition of natural
  isomorphism.

  <\definition>
    [Natural Isomorphism] Given two functors
    <math|F:<math-ss|C>\<rightarrow\><math-ss|D>> and
    <math|G:<math-ss|<math|>C>\<rightarrow\><math-ss|D>>, a natural
    isomorphism between <math|F> and <math|G> is a set
    <math|<around*|{|\<alpha\><rsub|X>\|\<forall\>X\<in\><math-ss|D>|}>> such
    that figure <reference|figure: natural isomorphism v1> commutes.
  </definition>

  <big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D4948445200000257000001810802000000C4D6037C0000000373424954080808DBE14FE00000200049444154789CEDDD795C54D5DF07F0EF0CFB262A82B8A0034A889AB8A022A082B8AF992D5A1AB8649669A6A6951A48AE9926662EA9815A5AA9FDF2E9D1444DC07D41DC1593040411904D1659667BFE384FF7353F18863BCCC2E0FDBCFFBACE9C7BEE99A1CE67EE72CE1129954A0200007821949797DBD8D8F02F2F365C530000004C1C521000005E1CE6E6E65A95470A0200C08BC3CCCC4CABF2484100007871884422EDCAE3E9180000102C9C0B020080702105010040B8908200C6505C5C1C1515D5BF7F7F7B7B7B7373733737B7B0B0B0BFFFFEBBA1DB052074484100833B74E8D04B2FBDF4C9279FF4EAD5EBCF3FFFBC74E9D2BC79F3F6EFDFDFBD7BF773E7CE71C52E5FBE7CE0C081066C278000E1E91800C35AB56AD592254BECEDED8F1D3B161010C0BD1E1111B17CF9722727A77BF7EE393B3B1351484848E7CE9DBFFDF6DB866B2C80E0E05C10C080B66DDBB664C91222FAE1871F542390883EFCF0439148949F9FBF6BD72E224A4F4F8F8B8B9B3061029F6AB76CD9E2E8E868880603080DCE05010C253939B9478F1E151515FDFBF73F7DFA74CD02EDDBB77FF4E851F7EEDDAF5DBB161919F9E38F3F2627278BC575FC367DFAF4E94B2FBD545454545252626F6F6F98B6030805CE05010C253C3CBCA2A2828866CE9CA9B6809B9B1B113D78F0A0B0B0302A2A6AC18205754620117DFEF9E745454544949B9BABD7F60208115210C0209E3D7B76E8D02122B2B0B0183B76ACDA324D9A3421A2B2B2B265CB96B56CD972FAF4E975569B989878F3E64D4B4B4B420A02E8035210C020CE9D3B2797CB89A86FDFBE2CED6A626146443B76ECD8B66D5B9DB3002B95CA79F3E67DF7DD77AEAEAE841404D007A4208041646565B10D3F3FBFDACA7029B870E1C2010306D459E78F3FFEE8EDEDEDEBEBEBE2E2424841007DD06E050A00E0895BE7B363C78EB595E14EFE162E5C586785252525AB57AF8E8F8F272227272722CAC9C9D1BD9D000287734100830808086073DB171717AB2D909E9E7EF5EA55B65D52525267852B56AC983973263B0B6CD1A205E15C10401F90820006219148D8E0BFC3870F577B4B26936DD8B0A15BB76E4D9B3665AFB0CBA7BFFFFEBBDA011544F4E0C183D8D8D80F3FFC90FD939D0B22050174872BA20086B275EBD67BF7EE9D3B77EE8D37DE983D7BB6A3A3E3C3870FCF9C39F3F3CF3F3B3B3BFFE73FFF090C0CF4F4F47CF4E8D1C183076FDDBA357BF6EC3FFEF8436D551F7DF4D1575F7DC55D416DDEBC39210501F401A3E6010CA8ACAC6CFDFAF5070E1C484949512A956E6E6E0101016FBEF9E6F0E1C3D9F5D23B77EECC9A35EBCA952B2E2E2E919191616161352BF9DFFFFDDF3163C6B0F33FA6BCBCFCF9F3E75DBB76BD75EB96D13E0BC00B09290860D22A2B2B7BF6ECB97BF76E363A82397EFCF8F4E9D39D9D9D713A08A0235C11053069EBD7AF1F3972A4AFAFAFEA8B9E9E9E449497972793C9EA1C6508001AE0FF1F00D3F5E8D1A3EDDBB7D7BCECC9AE8E2A95CADCDCDCD6AD5B3744D3005E108DE919D1ACAC2C5F5FDF71E3C619E1581B366C68D1A2456D0FEC0118DAB367CF4E9F3E3D7AF468171797AAAA2AD5B78A8B8B1F3F7ECCB61313134B4B4B1BA2810075A8AAAA9A3A75AAABAB6B7979B9A18FA5538FAD6C24B2B2B23A74E820914872727274AFEDE8D1A31111117FFFFD776D05A452E9F0E1C3ADADAD8F1F3FAEFBE100B4929292A2FA3FA98D8DCDF3E7CFD95BF7EEDDABF6BFB048247AF0E041C33618A01AA9543A76EC584B4BCBD3A74FEB5EDB9D3B7722232335F4C6BAF4D88D23059F3E7DEAEDED6D6B6B7BFBF66DDD6B4B4B4B63F37A6CDAB44943B1E2E2E22E5DBAD8D8D8242424E87E5000AD5456562A148A866E05407DC8E5F237DF7C93887EF8E107DD6B93C964DDBA7523A2575F7D5543B17AF7D87ABB223A71E244910E5E7FFD750D67AB93274FBE77EFDEEAD5ABBB74E9A27B53172E5CC8CED0354F40E5E0E0B077EF5E994CF6FAEBAF7317A0008CC3D2D2920DA500300EA9547AF8F0E18F3FFEB85FBF7E6DDAB4B1B4B43433337375759D3469524242826AC9C4C4441717170DCF27AF59B3E6975F7E193F7EFCD4A953756FD8B66DDB6EDEBC4986EBB175CA68156FBEF9A68F8F4FD7AE5D9D9D9D55EBEFD4A953B76EDDBA75EBE6E3E3D3AD5BB72E5DBA787979B9B9B9595858A8169B3A756A6D356FDCB89188FAF4E9A3979FC6A74E9DE20EFAEEBBEFD659FED34F3F25A2010306E0873900BC90525353172F5EDCB2654BD544F1F6F6EEDFBF7F972E5DCCCCCC8868CA9429E5E5E54AA5F2D2A54B8E8E8E1289A4B6DAAE5CB9626161616F6F9F9D9DAD7BDBF2F2F29A356BC65AE5E9E95967F97AF4D8FABF22AA3AF985866C934AA5B1B1B19D3B776625232222D416CBCCCC64572F4F9C38A17BDBA45269D7AE5DB9E68D1B37AECE5D0A0B0BD9DF20262646F7060000988E8A8A8AF0F0702B2B2BD6257A78784446465EB972453542F2F3F3172F5ECCAED85DB972C5D1D151C3298442A1F0F1F121A2254B96E8A585EFBDF71ED7633B3A3AD659BE1E3DB6FE5370F1E2C55CA30F1C38A0B970464606FB03444747AB2D306BD62C22EAD7AF9F5EDA161515A57A02CAB3DAF0F070226AD9B225F7840200406377E9D22536F094885C5D5D7FFCF147994C565BE12D5BB690CA2A28070F1E545BECE79F7F26225B5BDB828202DD5B9894942416FFD76DBB8A8A8A3AF7D2B6C7D67F0A72ABA989C5E2FCFCFC3ACB0F1B368C884E9D3A55F3ADB4B43476E1B4B68CD44A6E6E6ED3A64D3D3C3CB88BB11E1E1E7C767CF4E811FB4B6CDBB64DF766000034B8DF7EFB8D5BFC6BDCB87179797975EEC22D8169666656585858B38042A1F0F2F222A2D0D050BD34323030D0C2C2C2DDDD9D4BC1478F1ED5B997B63DB69E53B0A4A484FBB1D0AB572F3EBBBCFBEEBB44F4CF3FFFD47C8B45BAADAD6D6969A9EE6D63073A71E204F79DDADBDBF3DC77C8902144D4A95327DD9B0100D0B0B66EDDCA9D634D9D3A55C329A0AADDBB77B35DFCFDFDD516888B8B6305E2E2E2746FE44F3FFDC4AEACAA3E62939898C8675FAD7A6C3D8F9A3F7BF6AC4C2663DB2121217C76292F2F373333737373ABF916FB16828383EDECEC746CD8D5AB5777EDDA3569D2A4C18307B76AD58ABD585A5ACA7338E7A851A388283939F9C68D1B3AB60400A07E22222262626274ACE4E8D1A3B367CF562814443472E4C85DBB76B1E75FEAD4A74F1FB63162C408B5057EFCF147227274740C0C0CD4B191A5A5A58B162DF2F0F058BA7429D76313EF7554B4EAB1F59C82DC6F01221A346850CD02870F1F3E73E68CEA2B0505056DDBB6ADF6C828115DBE7C998D1D66974C75A1542AE7CC99636B6BFBF5D75F1391EAA3503CBFD3E1C387B38D43870EE9D8180080FA59BE7CF9F2E5CB75A9E1CE9D3B13274E6411D8B66DDBBD7BF7F21F90C35678A65AFA64A9547AF0E041220A0909D17D6EDB952B573E7EFC78E3C68DD6D6D686EEB1F59C82F1F1F16CC3C2C2A2E6CF81F2F2F2499326B16F8AF3ECD9337629B99A93274FB20D7F7F7F1D5BB577EFDE0B172E7CF1C5176CC645D5B11C9A07A070BCBCBCD873477FFDF5978E8D0100A89FA0A0A0B4B4B47AEF2E97CBDF79E79D929212F6CF75EBD6B1852AF9EF4E442D5AB4E8D5AB57CD77AF5CB9F2ECD933D2478F9D9292B261C3861123468C1933860CDF63EB33054B4A4AAE5EBDCAB67BF7EE5DF332E6D1A347CBCBCBFBF7EF5FED45B52B8BB253467373731D47CA9794942C5EBCF8A5975E9A376F1E7B45F53BE5BF300D7BFC372929492A95EAD21E00005D70271BDAFAF6DB6F939292D876EFDEBD274E9CA8D5EE45454544347CF8F06ACF6D32DC453ED655EAE2A38F3E2222EE917E43F7D8FA4CC1D3A74FB31F0B44141C1C5CED5D994CB676ED5A22E21E34629A346962696959B336763DB743870ED6D6D6BAB42A3232323B3B7BD3A64DDC45D7162D5A70EFF2FF4ED940C38A8A8ABB77EFEAD21E0080FA090D0D2522EE2915AD545454AC5CB992FB277756C05F870E1D6EDFBEFDDD77DFA97D97BB03A73A26BB1E8E1E3D7AF4E8D1F9F3E773A3380CDD63EB3305556F0A06050571DB52A9F4FCF9F323478EBC72E54AE7CE9DB98BCB1A3C7BF6ECC9932744A4F6A919FEEEDFBF1F1515357EFC78D50BD9F5FB4EDBB66DCB365253537569120040FD040505492492F8F8F87A9C0EFEF4D34F7979796CBB79F3E6AFBDF69AB63588C5E22E5DBA3469D244EDBB6C9E770B0B0BD5DB78DAAAAAAAFAE8A38FDAB66DBB74E952EE4543F7D8FA5C5F503505D983AA350D1C38904F559999996CA34D9B36BA34E9A38F3E323737FFE69B6F545F54BD14CEF32A331171ABB8A5A7A7EBD2240080FA914824E1E1E153A74E9D3A75AAB63FC7D9787666E4C8916AAFC0E98275DAAD5BB7D665FEDBF5EBD7A7A4A4FCFAEBAFAA37D40CDD63EBED5CB0A8A8E8FAF5EB6CDBC9C9292020202020C0CFCFAF67CF9EAA49A67A8EA841767636DB50FD15A0ADC3870FC7C6C67EF6D967EDDBB7577D9DAD50CAF0FF65C1B5846B1B008091858585B16764DCDDDDF99F115656569E3B778EFB271B48A04752A9343F3F9F74EBB11F3F7EBC72E5CA418306555B5CC1D6D6961BE06F881E5B6FE782090909ECE95B229A356BD68A152B54DF3D74E8103B01E7792E585C5CCC36EA7D53B0A2A2E2E38F3FEED0A1C3A2458BAABD55BF14E45AF2FCF973AD5AA2FBF81E0000CEA851A31C1D1D0F1F3E1C1616261289828282060E1C181616A66197949414D5B1D1DCC83F7D61139B900E3D36112D5CB8B0AAAA6AF3E6CD35DF6ADEBC395B26E2E9D3A74AA592CFE9A6163DB60E43FBFF0B7BAA87A939F3B542A1B0B2B2F2F6F6E659DBFEFDFB59555F7EF965FDDAC346D5FCF1C71F35DF2A2828E09AFAF2CB2FF3ACF0C2850B6C9719336668D5923AFF5A00003AD2DC0BA9AEA5D3A44913CDEB2DCC983143F3B13EF8E0836ABBB0C7388828242444ABEE91C3166F5AB06081DA77D9FA820C9F893995DAF4D87A3B17E4BE654B4BCB9AE3458A8B8B2B2B2B6B3E385AA7FA5D624E4F4F5FB3660D11B1E1261AF03F1754D637CFA2A3A3EBB72300805ABFFFFEFBE1C38789482291848686D679A7A9B2B292DB6ED7AE9DE67ED5D2D232202040A954565656FEF3CF3F6C8004D3A54B9766CD9A0D1E3CB8B67DEBD763CBE5F23973E610D1FAF5EBD7AF5FAFB9706E6E2E9F618EFC7B6CFDA4605E5EDEEDDBB7D9769F3E7D6C6D6DAB15484C4C24DE73AA11115703CF19CEAA993F7FBE42A1080808A8ADC0B56BD7D869F2D3A74F150A85DAE12FD5545454B00D6E15129E345FA90000D04A7070707C7CBC4422898E8EE6F9A485EA90BB9A137555A33A1662D7AE5DDCA9E182050BD8F45B35E9D8636FD9B2E5E6CD9BBEBEBEB5F5AE0F1F3EE44E377372723A75EA54679DFC7B6CFDA4209B3B956DAB3DE1EBDDBB776C6CACDA39D5D4E2BE53EE93F077E2C489DF7EFBEDF3CF3F571D1C538DBFBF3F3B5F5628147979797C066F702D717070D0B64900007A111313131F1F1F1414A4FA4C7E9DDCDDDDC562317B7443ABE7FB549FA9193D7A746DC574E9B19F3E7DFAC5175FF8FBFBAB1EAB9ACF3FFF7CF5EAD56C9BE763A2FC7B6CFD3C23AAFAF7509B824D9A34193A7428FFC9E5B85862CF1DF127954AE7CE9DDBBA75EBCF3FFF5C4331D50799787EA75C4B5C5D5DB56A120080BEB0271ED87A3BFC356FDEBC77EFDE6C3B2727E7E9D3A73C77E46620B3B5B5D530359AB9B9399BB14CDB1E9B88162F5E5C5C5CBC69D3260D650CDA63EB3905ADACACFAF5EBA77B85DCD806F65C107F1B366C484E4EFEFAEBAF352F43A1FA9DF2FC65C4B5841B8C0900604C3131316969696CB084B6FB72EB1329140AEEF143CD9293931F3D7AC4B6070C18A0798821EBB4B3B2B2B47A84E2E2C58B3131313366CC503B3729C7A03DB61E52F0C99327C9C9C96CDBCFCF4FC709CF1847474776FF33232383FF5E1919195F7EF9E5C08103274D9AA4B9643DBE536E207FE7CE9DF9370900405FD88394DA9E0832D3A74FF7F6F666DB9191915CBC69A03ADF88862762180F0F0F22AAAAAAE2FFC8A15C2EFFE0830F9A356BB66AD52ACD250DDA63EB2105559FC1E5391C900FF6D320252545F5E9260D6432D9F4E9D3CBCACA34DC0EE4A80E19E4F99DB2C77F6C6C6CB8D9ED00008C890D93974824F5D8D7DCDCFCD0A143ECEC223F3F7FF4E8D1F7EFDFAFADB05C2E5FBA74E9F7DF7FCFBD52670A722773DC9392755AB162C5B56BD7E6CF9FAFDA21AB65D01E5B0F29A8BA2244CF9E3D75AF90E9DBB72F11C964B23B77EED459F8EEDDBBA3478F3E71E20411F159F3815B0A98881E3E7CC8A73D376FDE24227F7F7FDD97CE0200A887B4B4B47A5C0BE5787B7BC7C6C6B66BD78E886EDDBAD5A3478F79F3E69D3B778E3BD3502A95A9A9A9EBD7AFEFDAB5EBCA952B478C183173E64C22727171511DB1A716EBB149655A6D0D727373172C5810111141FFDD1BD746B54C6A6A2A9F8BAE5AF4D87CC734FEB7050B16040505F5EAD58B7DA19C264D9AF4EAD52B282828242444DBD1E5D570A7989B376FAEADCCE1C3877D7D7DAB5DF61589449D3B77DEB76F5FCDF2E3C68DF3F5F5AD394377FBF6ED7D7D7D870E1D5A5959A9F640DC25DF356BD6E8F2A10000EA2D3C3C3C3A3A5AC74A0A0A0AA64F9F5EED265FD3A64DDBB469C30DA268DFBEFDD6AD5B150A85542A1D3B76EC942953EAACB6ACAC8CCD73F6DA6BAFD556E6D1A3477DFBF6F5F4F4AC3638CDCDCD6DE1C28535CB2F5FBEBC4F9F3E5E5E5ED5CAB768D1A2478F1E818181D7AF5F577B20AD7AEC7AA660D3A64DEB4857A237DE78A37E953332998C8D71193D7A746D65D840CB9A4422D1C18307AB157EF6EC999999998606BBBBBBD776A08D1B37B26AD3D3D375F9500000A6203333F3EBAFBF1E356A944422717070B0B4B4747575F5F5F59D3B77EE1F7FFC2193C9B89272B9BCA0A0804F9DE3C78F6781AABABB2A0D2BBFCF9933A766795F5F5F0D3DB6B9B9794A4A8ADA0369D5638B94263CC5D7ECD9B3B76CD9626767979B9B5B73243E11555454C864326B6B6B3333335D2632AFD3D0A1434F9C383170E0C07AAF6F0900F0623B70E0C01B6FBC4144090909D5D69165E472796969A9ADADAD9999199FB94AEA4DAB1EDB80EDD0DDDCB9734522515959D9810307D416B0B6B6B6B7B7373737376804666464B04133EC12390000D4347EFC78768FACB66923CDCCCC1C1D1D2D2C2C0C1A81DAF6D8269D825E5E5E63C78E25A21D3B7634603376EDDAA55028BCBDBD274E9CD880CD00003065E6E6E61F7FFC31111D3870E0D9B3670DD50C6D7B6C934E41225AB76E9D9595D5B973E754C76318D3B367CFD8A40691919106FDFD0200D0D87DF0C1075E5E5E656565754E8A6D20F5E8B14DBD5BF7F4F45CBC7831112D59B2A4416E61AE5DBBB6B0B070ECD8B16C7D440000A88DA5A5E577DF7D271289366EDCC87FF8BC1ED5A3C7366323364CD9800103121212CE9D3BE7E4E4C40D49318E6BD7AE4D9B36CDC5C5E5D8B1636A1FCF010000551E1E1E52A9F4E4C993A9A9A9EC6119A3A95F8F6DD2CF8872727272FCFDFDB3B3B3AF5CB962B409CC4A4B4BFDFCFCD2D2D28E1F3FAE611A59000050A55028C68F1FFF3FFFF33F313131A1A1A1C63968BD7BECC6918244949191111414A450282E5DBAC46721241DC9E5F23163C6C4C5C51D397284FF825000004044555555AFBEFAEAC993274F9E3C19181868E8C3E9D2639BFA7D418E9B9BDB9933679C9C9CDE7BEF3D231C2E2A2AEAF2E5CB5AAD890800008CA5A5E56FBFFD3671E2C437DE78A31E8B0E6A4B971EBBD19C0B020000E85DA33917040000D03BA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C2D55853D0DDDDBD7FFFFE0DDD0A0000A85BFFFEFDDDDDDD1BBA15EA99377403EA292D2DADA19B000000BC6466669A6CA7DD58CF05010000748714040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EF3866E403DE5E4E498999935742B0000A06E89898972B9BCA15BA19E48A95436741B0000001A06AE88020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C4841000010AEC69A82797979AB56AD7AFEFCB98EF5E4E7E7AF5EBDBAB4B4542FAD0200809AF4D56313D1FAF5EB1F3C78A07B3D9C4699828F1F3FF6F3F37BFCF8B1ADADAD8E55356BD6ECE2C58B03060C282828D04BDB000040951E7B6CC6CFCFEFEAD5AB7AA98A8C938271717122EDEDDCB9536D6D4F9F3E1D3C78B0BBBBFBA64D9BF8B7E1DAB56B63C68C7172726AD9B2E582050BB895AEC462F1BE7DFB944AE59021434A4A4AF4F06901005E201515153FFDF4536868A8B7B7B7A3A3A3582C6EDAB4E9A449934E9F3ECD95D9B367CFA851A3D4EEAEDF1E9B88162C583061C284214386DCBE7DBBDE1F4A953156D9757171F9F2CB2FE572794242425C5C1C11D9D9D9CD9B37CFCACA4A241229954A854221954A0B0B0B2F5FBE9C9494A4502888A849932635AB522A9593274F7EF2E4C9C99327F9AFB27BE4C891575E79A567CF9E7BF7EE9D356BD6860D1B3C3C3C66CF9ECDDEB5B3B3DBBB776FAF5EBDA64F9FFEEBAFBFEAE9430300346E8585852B57AE8C8E8E2E2828108BC57DFAF419366C589B366D2A2B2BCF9E3D1B1C1CFCC9279FAC59B3263A3A7AC68C194B962CA95983217A6C22DAB871637C7CFCF8F1E31313131D1D1D75FD9C4A235AB060013BE88409136A2B131B1BCBBEACF3E7CFD77C372A2A8A88BEF9E61BFE072D2B2B6BD9B22511FDFCF3CF23478E640DF8F4D34FAB155BBC783111FDF0C30FFC6B06007851EDDFBF9FF59CCD9A350B0F0FCFC9C9A956E0C48913767676E3C78F178BC544141F1F5FB312C3F5D87FFEF92711BDF3CE3BDA7EAE9A8C9A827DFBF6E5925C43B1D1A3471351464646B5D70B0B0B9B366DDABA75EBF2F272FE07DDB163073BE893274FC68E1D4B442E2E2E0F1E3CA8562C3F3FDFC1C1C1D9D9B9A8A8887FE500002F18B95CFEE1871FB26E73E4C891D9D9D9B595E42E72DAD9D9555656567BD7A03DB652A90C080810894467CF9EE55FB95AC64BC1D2D25273F3FFBF009B9898A8A1E492254BCCCCCC643259CDD78928222242ABE3B2ABD5EDDAB5532A9515151557AF5E2D2929515B72D6AC5944B46AD52AADEA0700786148A5D2091326B08E7AC68C1972B95C43E1E7CF9FDBD9D9B1B0ACF9AEA17BEC9F7FFE9988860E1DAA55FD35192F058F1F3FCEBE597B7BFB9A09A76AF9F2E56DDBB6ADF6625555558B162D8828353595FF41653299BDBD3D11BDFAEAAB7516BE74E91211B56AD54A73F300005E54AA67810A85A2CEF2FEFEFE6AAF791AA1C7AEA8A868DAB42911DDB97387FF216A32DE4889848404B6D1A74F9F6AB749B3B2B2B2B3B3B97F161616BAB9B955DBFDD8B1637979795DBB76954824FC0F7AFBF66D3616D0D7D7B7CEC2BD7BF776717179F2E409D7540000E1D8BD7BF7E6CD9B89A8458B167BF6EC11894475EEE2ECEC4C4483070FAEF6BA117A6C2B2B2B765C7652586FC64BC1F8F878B611181858EDAD69D3A67DFDF5D7DC3F8B8B8BDBB76F5FADCC7FFEF31F52F75D6B76E5CA15B6D1A74F9F3A0B8B44A2909010223A7CF8B05647010068EC727373E7CD9BC7B6972F5FEEE4E4C467AFAAAAAA56AD5A75EDDAB5DAEB46E8B18968C89021A4738F6D8C911244545151C17DBC808000D5B74A4B4B4F9F3E3D73E64CEE9555AB5659585854AB815DAEECD5AB179FC375EDDAF5EEDDBB4AA5927B85FD314422919797D7BD7BF76ADBB167CF9EFBF7EF3F77EE1C9FA30000BC30962D5B56545444442E2E2E3366CCE0B9978F8F8FDAA8335A8F4D44B76EDD2A2E2E563BB88E0F23A5E0850B17AAAAAA88482C16FBF9F9A9BEF5FDF7DF979797F7EFDF9F7B853D26ABAAA4A42439399988BA75EBC6E77073E6CC292D2D552A955151519999992E2E2E9F7CF209118944226F6F6F0D3BB2FA6FDEBC595959696565C5EBB301003472F9F9F97BF6EC61DBD3A64DB3B4B4E4B9E3EAD5AB6BBE68B41EBB6BD7AE6CD0796262E2A0418378B6B93A5D6E2AF2171E1ECE0ED7B163C707FFBA7EFD7A444484A5A5A5B7B7B7E6DDB9490AB41AC6A05028D8AF8371E3C6F1DC85FBD1F1F7DF7FF33F100040A3B66DDB362E142E5FBEAC636D46EBB1954A253B6BFAFEFBEFB56FE6FF33D2B9207753302525C5D3D3B3DABB03060CD0BC7B4E4E0E11D9D9D969354D404A4A4A71713111F5E8D183E72E6DDAB4611BE9E9E935DB0900F04262B37A11919393139F275334335A8F4D446DDAB4C9C9C9494F4FD7B6911C63A460656525BB464C449F7EFA69AF5EBD944A655555D5E3C78FA3A2A2B2B2B2EA4C4176B55ADB9972AE5DBBC636D8B5633E1C1C1CD8F93526D70600E1B87FFF3EDBE8D1A3476D8F861616163E7BF64CED5BCECECE6CE02063B41E9BFE9D6B53971EDB182978F1E2C58A8A0A22128944F3E7CF674FD632565656F3E6CD1B3870A0E61AD8776A6D6DADD571939292D88656BF2CACACAC2A2A2AF4B202080040A3909F9FCF36BA74E9525B999090102EA8AA090F0F8F8888E0FE69CC1E9B1D45971EDB1829C80DBFF3F1F1518D40222A2B2BEBD0A103771DB2362C44F94FC6CA5CBF7E9D889C9D9DDBB66DCB7F2F36C10D9BD11B004008B83339360E5DAD75EBD6959494C8E5F28B172FB2B16D229168DDBA751D3A74E8D7AF9F6AC9C6D563B164BCE400001CB4494441541B2305B99B826C6C87AABCBCBC891327D659034BFBCACA4AAD8ECB7E596875724DFFFEFDF4304F39004023E1E6E6C69EEA64A7716AB1E1D444545858C836BA75EBC6AD91A0AA71F5D8064FC1AAAAAA8B172FB2ED9AC34A366CD8C0A712F63BA5BCBC9CFF713333339F3E7D4ABC07AC3032994C269391C61F4400002F9890909013274E1011CB42CDFEFAEB2FB651DBA078A3F5D8DC5174E9B10D3E77CCE5CB97592BADACAC5407056A855D32CDCFCF6711C507778959ABEF943DDA4444CD9A35D3A68100008DD8E4C9936D6C6C88E8AFBFFE529DCFB2268542C1A5207776588DD17A6CFAB7D3D6A5C736780A729743FDFDFDD9B75C0F6C42358542A1F9CFA3AA7EDF69565616118944A20E1D3A68D9460080C6AA4D9B369F7EFA2911C964B2D0D050D5B5DDAB59B56A153B69B3B0B0A8EDC4C6683D36FDDB69EB32B0CDE029C80D43090E0EAE77259D3A756273AAF1395B6712131389C8C5C5A5E694A41AB0FA3B75EA84FB82002028CB962D9B3C7932111D3F7E3C3838F8F6EDDBD50A646565BDFBEEBBCB962D6BD7AE1D11F5EBD78FADFF5093D17AEC8C8C0CF67428CF7947D532C87DC19C9C9C83070F9696963E79F2849B44203E3EDED2D2D2D6D6562C16BFF3CE3B0E0E0EFC2BB4B2B2F2F1F1494C4CBC71E306CFE959AF5EBD4A44D5666BABD38D1B3748B72F1400A0311289447BF6ECE9DEBD7B7878F89933675E7EF9E52E5DBA74EEDCD9C5C5A5B8B8382525E5D2A54B2D5BB6FCF5D75F434242020202860E1D5A5B5546EEB1DBB76F5F73DE4D2DD47BD6190D5427E3A9C9C6C6A6A0A040DB3A3FFFFC73227AE59557F814CECCCC64C78A8A8AD2EA28EC6F101313A36DF300005E0C7979796BD7AE1D3C78B0ABABABA5A5A5838383A7A7E7E4C993F7EDDB575555C5CAE4E7E7E7E5E569A8C4383D36BB8A1B1616A6D55ED588942AD3789BB26BD7AEF5ECD9D3C1C1213F3FBFE68A13D5FCFEFBEFE3C78F27A27BF7EE75EAD489E7210A0B0B9D9D9D2D2D2D737272B43A550500005546E8B189A867CF9ED7AE5D3B79F2646DCFE9F061BCF50575D4A3478F5EBD7A959494FCF9E79F6A0BE4E4E4AC5FBFFEE0C183F4EFA21EDDBB77D7EA0B3D78F0A05C2E7FF5D55711810000BA30428FFDE0C1836BD7AEB9B9B9E9F2D00991B1D694D00BB6A0F09831636ABE555959D9B16347F689D2D2D2D8946CDF7DF79D56F5F7E9D3472C16DFBE7D5B4FED0500102E43F7D88B162D22A2AD5BB7EAD8CEC694820A85C2CFCF4F24125DBF7EBDDA5B6CEA1D22B2B7B74F4D4DB5B2B2924824959595FC2B8F8D8D25A2C99327EBB5C900000265D01E3B2F2FCFC1C1C1C3C383BB55596F8D2905954AE58D1B37ACADAD870D1B56EDF5FCFC7C6B6B6B7373F36FBEF966E2C489565656E7CF9FE75FAD4C26EBD9B3A7ABABEBD3A74FF5DA5E0000E132508FAD542AE7CE9D2B168B131212746F64234B41A552B96BD72E228A8E8EAEF6FA912347BA74E96267673768D0A0A4A424ADEA5CB162859999596C6CACDE5A09000086E9B14F9F3E2D168B972D5BA6971636BE14542A952B56ACB0B3B3BB7AF5AA5E6A3B7AF4A88585C5DEBD7BF5521B0000A8D26F8F9D9E9EDEAA55AB993367EAA53665231A2951CD37DF7C13151575F7EE5D5B5B5B5DEAC9C9C979F9E597BFF9E69BB7DF7E5B5F6D03000055FAEAB189A86FDFBE7DFBF6DDB871A358AC9F310E8D350501000074D768C60B020000E81D52100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA420000008175210000084ABB1A6E0D3A74F0B0A0A1ABA15000050B7828282A74F9F36742BD46BACF3888A44228944929A9ADAD00D0100803AB8BBBBA7A5A59966DC34D67341000000DD2105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C28514040000E1420A020080702105010040B890820000205C48410000102EA4200000081752100000840B29080000C265EA2998969666D0F20000D0504CA1C736F514747777178944EEEEEEC1C1C1111111B5158B8989090E0E6625DDDDDD8DD8400000F87F2291884F8F1D1F1FAFDA63C7C7C71BAF8935294D5B787878505010D75A8944121717A7542AD9B652A94C4D4DE50A4824128944121E1EDEB06D060010A6DA7A6C8944C2E246B5C766051ABCC736F514E470DF1DFBD6D846747434FB2A838282D8770D00000DAE5A8FCD5290EBB1B974340522A5526980334C43898989993A75AA4422494B4B737575CDCECE665F7158585843370D0000FE4B4C4CCCF2E5CB89A8A2A2223B3B9BBD181D1D6D523D76234B41FA370889C8DCDC5C2693C5C5C5A99E5F030080E960B70059774D4426D8639BFAD33135858585B1DF1132992C2C2CCCD4BE500000E0040505858585B1080C0A0A32C11EBBF1A5201185868656DB000000D364E23D76A34C4176A395884CF067050000A832F11EDBBCA11B501F1289C4A46EAE0200406D588F9D9696C6C5A149697C4FC7000000E84BA3BC220A0000A01748410000102EA42080315CB87061DAB4691E1E1E2291C8C1C1C1CFCF6FFBF6ED0A85A2A1DB052074484100C32A2C2C7CE38D37FCFDFD939292962F5F7EE3C68D5F7EF9C5CACA6AD6AC5913264CE08250A9546EDCB8F1C993270DDB5A00A1C1D3310006949E9E3E64C890070F1EBCF9E69BBB77EFB6B2B262AF171515B9BBBB1715152D5BB62C32329288CE9C39131414F4E4C913171797066D3280B0E05C10C0508A8A8A860D1BF6E0C1831E3D7AECD9B3878B40226ADAB4E99429538868F3E6CDE5E5E544141D1DDDBF7F7F442080912105010C65DEBC79F7EFDF27A275EBD6595A5A567BB7478F1E4454585878FCF8F1B2B2B283070FCE9831A35A99DCDC5CB1582C5221168BCDCCCCCCCDCDADACAC3C3D3DE7CD9B979797679C8F03F042420A0218C4DDBB77F7ECD943441D3A74080909A959C0CDCD8D6D3C78F060DDBA75CD9A357BF3CD37AB95717171914AA577EFDE25225B5BDBBCBCBCAAAAAACACACAF2F2F2CCCCCC010306444545F5EBD7AFA8A8C8C09F06E0858514043088E8E86876D3FDB5D75E535BA04993266CE3EEDDBBEBD6AD5BBD7AB5858545CD62666666D7AF5F27A29090102727277373737373730B0B0B6767E7A8A828224A4949F9F3CF3F0DF531005E7448410083484848601B43860C515B80BB46BA67CF9E808080B7DE7A4B7355A3468DAAF63AF740699B366D746C2D80602105010C222B2B8B88442251DFBE7DD516E052B059B366BB77EFD650557C7C3C118D1C3952F5458542F1C9279F10D1942953060C18A08F260308115210C0206C6C6C88A865CB96F6F6F66A0B989BFFFF5CF66FBDF556AB56AD6AABE7C99327F7EFDF7FF9E597B9FB8872B9FCF4E9D3C1C1C167CF9E5DBF7EBDE6040500CD1AE59A1200A6AF7FFFFE2929292525254AA5522412D52CF0DB6FBFB18D9292120DF5C4C5C511D1A3478FBCBCBCD82B65656559595913264CD8BF7F7FEBD6ADF5DD700061C1B92080417CF4D147666666656565274F9EACF6D6DDBB77070D1AF4DD77DFB10C63D74E0B0A0AD6AE5DCB96E456C552303A3AFAFEBF323333EFDDBB77E5CA959E3D7B5EB870C1289F06E08585140430081F1F9F4D9B3689C5E2B7DF7E7BE7CE9D376EDC888F8FDFBA75EBE0C1837BF7EEEDE3E373F7EEDD2FBEF882882E5EBC78FAF4E9D75E7BEDF7DF7FE72E9372580AFAFBFBABBEE8E5E5151E1E9E93933371E2444C460AA00BCCA0066040ECD6DDD9B3670B0B0B1D1D1DBB76ED3A62C488D0D050EE46606464E4962D5B8A8A8A860C19B273E7CE962D5BAAEEFEE8D1A3F6EDDB77E8D0212525A55ACD972E5DF2F3F323A2BFFFFEDBD3D3D3381F07E0C583FB820006141818181818A8A1C0175F7CC1CE08D5527B22C8646767B30D5B5B5BDDDA082068B8220A60BA4E9D3A454401010135DFFAE5975F88A85FBF7E182C08A00BA42080E9AA2D057FF9E597FDFBF7DBDADA6EDDBAB521DA05F0E2683429989595E5EBEB3B6EDC38A31D71C3860D2D5AB4387DFAB4D18E08C0C8E5F2C2C2C263C78E656666DAD9D9B56BD7AEB4B4B4B4B4B4A4A4E4FEFDFB0B172E7CFBEDB79D9D9D6363637D7C7C1ABAB1006A18BFC7BE7AF5AA8585C5A64D9BB4DE53D91864656575E8D0412291E4E4E418EDA052A974F8F0E1D6D6D6C78F1F37DA4101944A6558589858ACFE17AA582CEED4A9D392254BF2F3F31BBA9900EA35488FAD542A57AC5841449191915AEDD5089E11CDCBCB1B3060407A7AFAE5CB97BB74E962CC43979494F4EBD7EFE1C387C78E1DC324550000756AC01E9B88424343F7ECD9F3D5575FB1F90579D13D7EE572B986F99FF8D8BC79736D952B148A61C38611515454549D2D3974E890DAFAB985D9D8DA6C161616565656767676AEAEAEC3870FDFBA756B6969696D75262525595858B8B8B8646666D6F30B0200306D050505BB76ED9A366DDACB2FBFDCA2450BD65576ECD871EEDCB90F1E3C502DB963C78E6EDDBAD5564F83F7D82525251289442C16C7C6C6F2FCEC7A38177CF6ECD9A04183E472B9542A4D4F4F2F2B2B63AFDBD8D8787878989999B14FA55028140A455555554949093B4DE66AD8BD7BF73BEFBCA3B6F2A8A8A879F3E6F5E9D3E7E2C58B6AA7A15275E4C891A8A828854251595979EEDC39EE10FDFAF5537D9A5CA150C8E5F2828282DBB76FB3575AB56AB577EF5EB58BC011D1679F7DB666CD9A010306C4C7C7D7D906008046E4C2850B5BB76E3D70E0404545057BC5D9D9B975EBD60E0E0E8F1F3F4E4D4DB5B4B45CBB76EDBC79F38868FBF6EDEFBFFF7E6868687474B4DADA4CA1C78E8D8D1D3E7CB89393D3BD7BF79C9D9DEBFE0A78A6254F0B162CE06ADEBD7B776DC58A8B8B77EEDCD9B4695356323E3E5E6DB1CCCC4C3625F1891327B46D0957796060606D65CE9C39D3BC797356CCD2D2F2F4E9D36A8B151616366BD68C88626262B46D06008069CACACA525DD839303070F3E6CD0F1F3E542D939C9C3C66CC1822DABC79F3F6EDDB59B0FDF4D34F6A2B34911E5BA95406050511515858189F43EB3905B945644422516E6EAEE6C2070E1C6085535353D51698356B16FB5DA06D33929393B93F6D7878B88692BFFEFA2B57D2DBDBBBB662E1E1E144D4B265CBE7CF9F6BDB18000053131D1DCDADF3DCBB77EF3367CED45652A1504C9C38915DD5D3DCB79B4E8FCDA69B10894457AF5EADF3E8FA4CC19292126E16441F1F9F3ACB4BA5527B7B7B333333A9545AF3DDB4B434B6F4365BB35B2B3B76ECE0BEA98484040D25653219B7CC1B11DDBB774F6DB1478F1EB167F6B66DDBA66D6300004C8742A1F8ECB3CFB8480B0F0F57DB03AB2A2A2A72707060BBF4EAD54B6D1993EAB1954AE54B2FBD444413274EACF3E8FA1C2F78F6EC596E46FCC18307D759DEDCDCBC55AB56AD5BB7AE398330114547474BA5525B5BDBD75F7F5DDB969C3973866DD8D8D8B0B9166B636666C6FD2022A2828202B5C5DCDCDCD835E88D1B376ADB18000013A1542AA74C99B27AF56A22128BC53B76EC88888850DB03AB7274747CEDB5D7D8367BF8A52693EAB18928343494880E1E3C989999A9F9E8FA4C41B6223653DB7DCB6ACACBCBDDDDDDD5BEF5D34F3F11517070B09D9D9DB62D494848601BFEFEFEAA3F1C6A2A2A2ACACBCB63DB2291A843870EB5951C356A1411252727DFB87143DBF60000E8282222222D2D4DC74A3EFBEC33D6B512D1AA55ABA64F9FCE73C73E7DFAB08D112346A82D609A3DB64C26ABED49548E3E53905D8A25227373F3FEFDFB577B572A95EEDAB5EB9F7FFE517DB1A0A0406D0A5EBE7C994DA25FDBEF0E0DD2D2D2D2D3D3D936BB47AAC1BE7DFBB8ED61C386559BD15FD5F0E1C3D9469DDF2900807EC5C7C72F5FBE7CEAD4A9BA54B277EFDEB56BD7B2ED51A3462D5AB488FFBE2E2E2E44E4E8E8A8F65CCD047B6C1F1F1F3684CF7829585252929494C4B67BF7EE6D6F6F5FADC0F9F3E767CC9871F3E64DEE95AAAAAAF2F2726E056D55DCC2A46A67D3D78CFB594144C1C1C11A4A16151571FF4D58595971DB6A797979B12745FFFAEB2F6D9B0400A00B8944A2630D1919191F7CF001DBB6B6B6DEBC79B356E3BEE4723911858484A8BD7C6A823D3611B1A7352F5CB8505E5EAEA198DE52F0CC9933DC4D41B59FE4E0C18344A4BACA8CA5A5655E5EDEE2C58BD5D64644E6E6E6F5987A803B25B5B5B5E5CEE26BAAA8A8983C79F2A3478F584BF6EDDBD7AD5B37CD35B3391B939292A452A9B6AD0200A837894422914874B9223A67CE9CD2D252B6FDE1871F6A1BAB454545443472E448B5EF9A668FDDBD7B772292C96457AF5ED5544EDB87796AB370E142AECE9A83453232321C1C1C3A77EECCB3367626EBE5E5558F96B46BD78E3563F0E0C1B595B97FFF7EBF7EFD58310F0F8FB367CFF2A9F9C30F3F64BB5CBF7EBD1E0D0300A83776B5B01E4F602A95CAC4C444AE7F3633334B4F4FD7B686E2E2E23B77EED4F634A969F6D8ECD48B88366EDCA8A198DE56D9E5F2DCD2D2923B29562A95656565274E9C58B468514949499DD77C9967CF9E3D79F28488DCDCDCB46DC6C3870FD98F0522EADAB5ABEA4F27B95C5E555575FFFEFDDF7FFF7DDFBE7D52A9B46DDBB6F3E7CF9F3D7BB6E6FBB19CB66DDBB28DD4D454CCE50F00C6141D1DEDEEEEBE7CF9F2B0B0306DF7557DB87DC488115CF0F0C74E63D4BED5287A6C4DE5B4CD6DB58A8A8A6A9B025FD52FBFFCC2A7366E9A9CD0D0506D5BB273E74E3EDF4ED3A64D57AC58515151A155E57BF6EC61BB6BFE65010060082CFF784E89C2A9AAAA527D6E73E7CE9DFA6D95C9F6D85CBEBEF2CA2B1A8AE9E75C30212141A150B06D0F0F0F76762C97CB9F3F7F9E9191515858C8DE1A3870209FDAB2B3B3D9468B162DB46D09774A6A6F6F1F1D1D2D168BD91D60EE3EB052A9BC70E1C2CE9D3B972E5DBA7EFDFA850B172E5AB4A8CEE132D5DAC3B51000C068C2C3C3E3E3E3636262E2E3E3E3E2E278DEDBBB78F12237BD33D57E6FAFDE1A7B8FAD9F14E43E09116DDFBE5D75C8BC42A1F8F8E38F376DDAE4EDEDADE1A95655C5C5C56CC3DADABADE2D090808E0867956337EFCF81933660C1C38303B3B7BC99225274F9E3C72E4089BFE4E33AE3DCF9F3FD7AA55C78E1D43700280EE66CF9EBD6BD7AEE4E4E4A0A0207777778944121E1EAE390E559FCC777373D37109A09A1A7D8FADED09AC5ADC4D324B4BCBB2B2B26AEF9E3F7F9E88DE7FFF7D9EB5EDDFBF9FD5F6E5975F6AD50CD5C9E8D6AE5DABB9B0EA99F8DCB973F9D47FE1C205567EC68C195A358CE70D5100006D492412CDFDCF175F7CC1151E3B76ACE6C29E9E9E9A0F57F3C696C9F6D84AA5D2CACA8A883A76ECA8A18C1ECE05F3F3F3B9DF1A7DFAF4515D1183C9CDCDA5BA0682A8A5ED3246A74E9DE2B6EB3C9CEA65811F7EF8E1ABAFBE62DF9706CAFAAE42B578F162369D0F00802EF2F2F2D8B9203BFF0B0D0DADF36199CACA4A6E5BF373319595956DDAB4717171512814CF9F3FBF77EF5E5555157BCBCACAAA4B972EF6F6F6BEBEBEB5ED6E6A3D36F1EBB4F590826C5D24B6ADF6A4273131512412F14F412E47350F75AC893BB96ED2A449CF9E3D3517767575158BC5EC76666969696666A686C978186EFD2D3EDFBE2A6EDE1900005DB0A4090A0A52BD0FA599EA1A7B6CC2EBDA585959A9563B65CA941F7FFC916D1F3C7870F4E8D16AF732D91E5BA954B214D7DC63EB61D47C9D793E6DDAB4F3E7CFF3BF71CA7DA75CEAF0A1FC77350D220A0C0CE4D601A94D6E6E2EF7440F11393A3AD67908AE3DDCF4EA000046C366500B0B0BE31F8144A49A165A3DA070EEDC39B6616D6DAD618184C6DE63EBE15C90FB245656566AA7CF717777AF6DCA6CB5D8847544949F9FCF7FAF5BB76E71B3ACF2B90FA7FA9F51C78E1DF98434D71E575757FE0D0300D01D7B3A94886A5BE7BD36212121969696ECACE8D6AD5B3CF74A4D4DE586D90506066A78F2A5B1F7D8BA9E0BE6E4E4DCBB778F6DFBF9F9D5E319A19ADAB76FCF361E3F7ECC7F2FD5E93DEBFC4E954AE5860D1BB87F7293C268C6B5871B8C0900601CBB77EFA6FF0E039E1C1C1C5E7DF555B67DFBF66DD5474635888D8DE5B635AF94D7D87B6C5D5350F572A8BE9E847474746CDEBC3911656464F0DF8B9BCED5D1D1B1CE4BCC2B56ACB872E50ADBEEDBB72FCFEF945BA7AAB6391400000C842D5D57BF6E76E5CA95DCBDB1F7DF7FBFCE9990ABAAAAB66CD9C2FD53730A36FA1E9BE7F3A6B59931630657D5A953A774AC8D3364C81022323737E7395940555515B78A85E66902140A45444404D7E64E9D3AE5E6E6F26C15FBEFCFC6C6A6CEA5990100F48B88828282EABDFBBE7DFBB867385F7FFDF5A2A2A2DA4A161414A82E22D8BC7973B95CAEB972D3ECB1B91D35CF3BAAD3B9606565E5891327B87FF6E8D14397DA54B115316432D99D3B77F8943F76EC18375D7A6D3F5B6432D91F7FFCE1E7E7C77D35C3860D3B7FFEBCEA03549AB12B09FEFEFE3C672E0000D00B7622A8CBFA4A93264D8A8E8E6683CD0F1C38D0B56BD755AB56252727B3259388482A955EBD7A75F1E2C59E9E9EC78E1DFBE4934FD85282212121754E90699A3D365B11DDC6C6A677EFDE9ACAF10C554E5959D92BAFBCD2BF7F7F1F1F1F272727D5AA5C5D5DFDFCFC828383434242BEFDF65B6D6B56C55D68DDBC79736D65FEFCF3CF808080EEDDBB7B7878A8FE91DCDDDDFDFDFD0354F4EBD7CFC7C747F59EA5ABABEBF6EDDBEBFC81A38A1BE0B966CD1A5D3E1A0080B6525353C3C3C3E3E2E274ACE7D6AD5B212121AAFDB6582C767171717171E1CE14FDFCFCFEFAEB2FA552F9F8F1E38E1D3BEEDAB5ABCE6A4DB0C756FEBBD2C5F0E1C33517D33A05939292F84C9CBD65CB166D6B562593C958E08F1E3DBAB632F3E7CFB7B6B6363737E7D31E22323737F7F6F69E3469D2810307CACBCBB56D129B945D2412D56351120000D3919494B474E9D2C0C0C0366DDA585B5BDBD8D8B8B9B90505057DF1C517972F5F562D595C5CCCE722A709F6D8D7AF5F67F5ECD9B347734991B2BEF3A118DAECD9B3B76CD9626767979B9B5B733E1AE31B3A74E8891327060E1CC82E4D000000C7D47AEC55AB562D59B2C4CECE2E3B3B9BBB07A996DED69AD7BBB973E78A44A2B2B2B203070E34745B282323833DD73B73E6CC866E0B0080C931A91E9BFE1D58F2D65B6F698E4032E514F4F2F21A3B762C11EDD8B1A3A1DB42BB76ED522814DEDEDE13274E6CE8B60000981C93EAB1E3E3E3FFFEFB6F4B4BCB254B96D459D874539088D6AD5B67656575EEDC39D55189C6F7ECD9B34D9B361151646424CF2BDA00004263223D361145464612D1BBEFBECB8DE8D7C0A4FB744F4FCFC58B1713D192254B1AF0FEE5DAB56B0B0B0BC78E1D5BDBF257000060223DF6F1E3C7E3E2E2DAB56BB762C50A3EE54DF7E918462E978784842424246CDAB469CE9C39C66FC0B56BD7FAF6EDEBE4E474EBD6AD7AACA40C00201C0DDE6397969676EBD62D3D3DFDD4A95303070EE4B38BA9A72011E5E4E4F8FBFB6767675FB972C5C85397959696FAF9F9A5A5A51D3F7E5CED44E10000A0AA017B6C220A0B0BDBBD7B775454D4DCB97379EED208529088323232828282140AC5A54B97B8F9CB0D4D2E978F1933262E2EEEC8912383060D32CE4101001ABB06E9B18968E5CA954B972E5DB56AD5679F7DC67F2F93BE2FC87173733B73E68C9393D37BEFBD67B4834645455DBE7C39363616110800C05F83F4D8898989CB972F8F8A8AD22A02A9B19C0B0200001842E338170400003004A4200000081752100000840B29080000C28514040000E1420A02008070FD1FF34CD471E87879780000000049454E44AE426082>|natural-isomorphism-2.png>|190pt|110pt||>|<label|figure:
  natural isomorphism v1>In this <hlink|figure|https://q.uiver.app/#q=WzAsNCxbMCwwLCJBIl0sWzAsMiwiQiJdLFszLDAsIihGIFxcY2lyYyBHKShBKSJdLFszLDIsIihGIFxcY2lyYyBHKShCKSJdLFswLDEsImYiLDFdLFswLDIsIlxcYmV0YV9BIl0sWzEsMywiXFxiZXRhX3tCfSJdLFsyLDMsIihGIFxcY2lyYyBHKShmKSIsMV1d>,
  the <math|\<alpha\><rsub|A>> and <math|\<alpha\><rsub|B>> are
  isomorphisms.>

  Namely, for any <math|X\<in\><math-ss|D>>, we have
  <math|F<around*|(|X|)>\<cong\>G<around*|(|X|)>>. We say
  \P<em|<math|F<around*|(|X|)>\<cong\>G<around*|(|X|)>> natural in
  <math|X>>\Q, where the word \Pnature\Q indicates figure <reference|figure:
  natural isomorphism v1>. This is the natural way of extending the
  isomorphism of objects to the bijection of morphisms. Indeed, the bijection
  can be read out directly from figure <reference|figure: natural isomorphism
  v1> as

  <\equation*>
    \<psi\>:<math-ss|D><around*|(|F<around*|(|A|)>,F<around*|(|B|)>|)>\<rightarrow\><math-ss|D><around*|(|G<around*|(|A|)>,G<around*|(|B|)>|)><infix-and>\<psi\><around*|(|g|)>\<assign\>\<alpha\><rsub|B>\<circ\>g\<circ\>\<alpha\><rsub|A><rsup|-1>.
  </equation*>

  <section|Summary>

  <subsection|Category theory is built by recursion>

  In this chapter we first defined category. This was the unique starting
  point; and all the left were built by recursion. When the category was
  defined, the object was quite abstract and generic. It can be anything. So,
  it can be category itself! This implied a category of categories. Therein,
  the morphism, or functor, was defined as the structure preserving map.

  So, the basic conceptions, which are category and functor, were defined
  recursively.

  <subsection|Proof in category theory is easy>

  As you might noticed, the proof in category theory is almost nothing but
  expanding definitions. Once you have clearly realized what the concepts
  mean, you get the proof.

  Why is proof in category theory so easy? An educated guess is that category
  theory is quite fundamental. In analysis, almost for every critical
  concept, there are a plenty of lemmas, theorems, and corollaries related to
  this concept. This is because analysis is not fundamental, and is supported
  by other mathematical areas, such as set theory, topology, and linear
  algebra (for higher dimension). So, to prove a theorem, there will be a
  large amount of combinations of the more fundamental lemmas, theorems, and
  corollaries. The proof, thus, cannot be generally easy. But, for category
  theory, there is no other mathematical area that supports, and the
  combination is quite limited. Even though most proofs in category theory
  are trivial, the theorems to be proven are generally quite far-reaching.
</body>

<\initial>
  <\collection>
    <associate|bg-color|#c7edcc>
    <associate|font|roman>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|1.3|5>>
    <associate|auto-11|<tuple|1.3.1|5>>
    <associate|auto-12|<tuple|1.3.2|5>>
    <associate|auto-13|<tuple|1.1|5>>
    <associate|auto-14|<tuple|1.2|6>>
    <associate|auto-15|<tuple|1.3.3|6>>
    <associate|auto-16|<tuple|1.3.4|6>>
    <associate|auto-17|<tuple|1.3.5|7>>
    <associate|auto-18|<tuple|1.3.6|7>>
    <associate|auto-19|<tuple|1.3.7|7>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|1.4|8>>
    <associate|auto-21|<tuple|1.4.1|8>>
    <associate|auto-22|<tuple|1.4.2|8>>
    <associate|auto-23|<tuple|1.3|9>>
    <associate|auto-24|<tuple|1.4|9>>
    <associate|auto-25|<tuple|1.5|9>>
    <associate|auto-26|<tuple|1.5|9>>
    <associate|auto-27|<tuple|1.5.1|9>>
    <associate|auto-28|<tuple|1.5.2|10>>
    <associate|auto-3|<tuple|1.1.1|1>>
    <associate|auto-4|<tuple|1.1.2|2>>
    <associate|auto-5|<tuple|1.1.3|2>>
    <associate|auto-6|<tuple|1.1.4|3>>
    <associate|auto-7|<tuple|1.2|3>>
    <associate|auto-8|<tuple|1.2.1|3>>
    <associate|auto-9|<tuple|1.2.2|4>>
    <associate|chapter: Category, Functor, and Natural
    Isomorphism|<tuple|1|1>>
    <associate|definition: Coproduct of Two Objects|<tuple|1.17|4>>
    <associate|definition: Group as Category|<tuple|1.5|2>>
    <associate|definition: Poset|<tuple|1.9|3>>
    <associate|definition: Poset as Category|<tuple|1.10|3>>
    <associate|definition: Preorder|<tuple|1.8|2>>
    <associate|definition: Product of Two Objects|<tuple|1.14|4>>
    <associate|figure: Functor|<tuple|1.1|5>>
    <associate|figure: Functor Composition|<tuple|1.2|6>>
    <associate|figure: natural isomorphism|<tuple|1.3|9>>
    <associate|figure: natural isomorphism dual|<tuple|1.4|9>>
    <associate|figure: natural isomorphism v1|<tuple|1.5|9>>
    <associate|footnote-1.1|<tuple|1.1|1>>
    <associate|footnote-1.2|<tuple|1.2|3>>
    <associate|footnr-1.1|<tuple|1.1|1>>
    <associate|footnr-1.2|<tuple|1.2|3>>
    <associate|lemma: Fully Faithful Functor|<tuple|1.21|7>>
    <associate|section: Arrows generalize concepts and theorems from one area
    to every area in mathematics|<tuple|1.2.1|3>>
    <associate|section: Injective functor may not be
    faithful|<tuple|1.3.5|7>>
    <associate|section: Supremum and infimum are dual|<tuple|1.1.4|3>>
    <associate|section: Surjective functor may not be full|<tuple|1.3.4|6>>
    <associate|theorem: Functorial Image as Category|<tuple|1.22|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1.1>|| Indicates the
      functor <with|mode|<quote|math>|F:<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|C>>\<rightarrow\><with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|D>>>.
      This diagram commutes.>|<pageref|auto-13>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|1.2>|| Extending the
      commutative diagram <reference|figure: Functor> to the right. This
      diagram commutes.>|<pageref|auto-14>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|1.3>||In this
      <locus|<id|%1AB37C58-1C200A20>|<link|hyperlink|<id|%1AB37C58-1C200A20>|<url|https://q.uiver.app/#q=WzAsNCxbMCwwLCJBIl0sWzAsMiwiQiJdLFszLDAsIihHIFxcY2lyYyBGKShBKSJdLFszLDIsIihHIFxcY2lyYyBGKShCKSJdLFswLDEsImYiLDFdLFswLDIsIlxcYWxwaGFfQSJdLFsxLDMsIlxcYWxwaGFfe0J9Il0sWzIsMywiKEcgXFxjaXJjIEYpKGYpIiwxXV0=>>|figure>,
      the <with|mode|<quote|math>|\<alpha\><rsub|A>> and
      <with|mode|<quote|math>|\<alpha\><rsub|B>> are
      isomorphisms.>|<pageref|auto-23>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|1.4>||In this
      <locus|<id|%1AB37C58-1C203E08>|<link|hyperlink|<id|%1AB37C58-1C203E08>|<url|https://q.uiver.app/#q=WzAsNCxbMCwwLCJBIl0sWzAsMiwiQiJdLFszLDAsIihGIFxcY2lyYyBHKShBKSJdLFszLDIsIihGIFxcY2lyYyBHKShCKSJdLFswLDEsImYiLDFdLFswLDIsIlxcYmV0YV9BIl0sWzEsMywiXFxiZXRhX3tCfSJdLFsyLDMsIihGIFxcY2lyYyBHKShmKSIsMV1d>>|figure>,
      the <with|mode|<quote|math>|\<beta\><rsub|A>> and
      <with|mode|<quote|math>|\<beta\><rsub|B>> are
      isomorphisms.>|<pageref|auto-24>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|1.5>||In this
      <locus|<id|%1AB37C58-1D268680>|<link|hyperlink|<id|%1AB37C58-1D268680>|<url|https://q.uiver.app/#q=WzAsNCxbMCwwLCJBIl0sWzAsMiwiQiJdLFszLDAsIihGIFxcY2lyYyBHKShBKSJdLFszLDIsIihGIFxcY2lyYyBHKShCKSJdLFswLDEsImYiLDFdLFswLDIsIlxcYmV0YV9BIl0sWzEsMywiXFxiZXRhX3tCfSJdLFsyLDMsIihGIFxcY2lyYyBHKShmKSIsMV1d>>|figure>,
      the <with|mode|<quote|math>|\<alpha\><rsub|A>> and
      <with|mode|<quote|math>|\<alpha\><rsub|B>> are
      isomorphisms.>|<pageref|auto-25>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Category,
      Functor, and Natural Isomorphism> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Category <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|1.1.1<space|2spc>Category is about arrows
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.1.2<space|2spc>Objects may not be sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.1.3<space|2spc>Morphisms may not be maps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.1.4<space|2spc>Supremum and infimum are
      dual <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      1.2<space|2spc>Why Category? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      <with|par-left|<quote|1tab>|1.2.1<space|2spc>Arrows generalize concepts
      and theorems from one area to every area in mathematics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.2.2<space|2spc>Duality helps create new
      concepts and theorems, freely! <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      1.3<space|2spc>Functor <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      <with|par-left|<quote|1tab>|1.3.1<space|2spc>Structure preserving map
      builds category out of objects <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|1.3.2<space|2spc>Functor is the morphism of
      the category of categories <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|1.3.3<space|2spc>Functor preserves the
      structure of category <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|1.3.4<space|2spc>Surjective functor may not
      be full <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|1.3.5<space|2spc>Injective functor may not
      be faithful <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|1.3.6<space|2spc>Fully faithful functor
      preserves isomorphisms <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|1.3.7<space|2spc>Image of functor may not
      be a category <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      1.4<space|2spc>Natural Isomorphism <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      <with|par-left|<quote|1tab>|1.4.1<space|2spc>Isomorphic objects should
      be viewed as one <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|1.4.2<space|2spc>Natural isomorphism
      describes equivalence between categories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      1.5<space|2spc>Summary <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>

      <with|par-left|<quote|1tab>|1.5.1<space|2spc>Category theory is built
      by recursion <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|1.5.2<space|2spc>Proof in category theory
      is easy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>
    </associate>
  </collection>
</auxiliary>