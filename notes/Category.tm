<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Category, Functor, and Natural Transformation>

  <with|font|TeX Gyre Schola|><section|Category>

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
  objects and morphisms abstract. You can think objects as dots and morphisms
  as arrows between the dots.

  <big-figure|<with|gr-mode|<tuple|group-edit|edit-props>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics||<with|fill-color|#a0a0a0|<carc|<point|0.310400671367257|0.16552160493122>|<point|0.285136199876317|-0.21350059244938>|<point|0.487295877082287|-0.188232699871>>>|<with|fill-color|#a0a0a0|<carc|<point|-2.22636059364996|1.73240628826565>|<point|-2.25162506514086|1.35338409088502>|<point|-2.04946538793496|1.37865198346342>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-1.86303069610306|0.27291752460747>|<point|-2.19151024233936|1.04358501766211>|<point|-2.14096101889706|1.20780541718586>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-1.87093252376536|1.47159446929622>|<point|-0.190614610020164|1.33262094237466>|<point|0.376558436722317|1.57173709009268>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-1.84733506514086|1.59343409088504>|<point|-0.874521821325564|1.99771971729064>|<point|0.350970968726037|1.77030868408518>>>|<with|fill-color|#a0a0a0|<carc|<point|1.86705871535924|-0.20056659346475>|<point|1.84179424386824|-0.57958879084535>|<point|2.04395392107424|-0.55432089826697>>>|<with|fill-color|#a0a0a0|<carc|<point|0.608552685689098|1.83638578327385>|<point|0.583288214198159|1.45736358589324>|<point|0.785447891404148|1.48263147847162>>>|<with|fill-color|#a0a0a0|<carc|<point|-1.69575027085596|0.25425839568725>|<point|-1.72101474234686|-0.12476380169336>|<point|-1.51885506514086|-0.0994959091149598>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|0.666321855655019|-0.17136654160574>|<point|1.37384264147325|-0.43667444212168>|<point|1.54598345718367|-0.4490071659333>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|1.61438424386824|-0.18793279084535>|<point|0.7679066|0.0773767051197201>|<point|0.692102922264849|0.06474275883053>>>|<with|fill-color|#a0a0a0|<carc|<point|-1.19575027085596|-1.04574160431275>|<point|-1.22101474234686|-1.42476380169336>|<point|-1.01885506514086|-1.39949590911496>>>>>|You
  can think objects as dots and morphisms as arrows between the dots. There
  are three disconnected diagrams in this figure. For convenience, identity
  morphisms are not shown.>

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

  <subsection|Isomorphic Objects should be Viewed as One>

  Isomorphic topological spaces are the same. The same is for the isomorphic
  groups, isomorphic vector spaces, and so on. So, we should view isomorphic
  objects are one object. If visualizing a category as diagrams of dots and
  arrows between dots, then we should pinch two isomorphic objects together.
  This leads to equivalent, but simplified, diagrams. The category obtained
  by pinching isomorphic objects as one in category <math|<math-ss|C>> is
  called the <with|font-series|bold|skeleton> of <math|<math-ss|C>>.

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
      <item>for each <math|A\<in\><math-ss|C>>,
      <math|F<around*|(|A|)>\<in\><math-ss|D>>, and

      <item>for each <math|A,B\<in\><math-ss|C>> and each
      <math|f:A\<rightarrow\>B>, <math|F<around*|(|f|)>:F<around*|(|A|)>\<rightarrow\>F<around*|(|B|)>>,
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
  between dots. The apply of a functor changes the style of the dots and
  arrows. This means it has become another category, but the structure, or
  form, of the diagrams are invariant.

  <big-figure|<with|gr-mode|<tuple|group-edit|edit-props>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics||<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|5.42865185565502|-0.47136654160574>|<point|6.13617264147325|-0.73667444212168>|<point|6.30831345718367|-0.7490071659333>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|2.91499493485914|1.29343409088504>|<point|3.88780817867444|1.69771971729064>|<point|5.11330096872604|1.47030868408518>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|6.37671424386824|-0.48793279084535>|<point|5.5302366|-0.22262329488028>|<point|5.45443292226485|-0.23525724116947>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|2.89139747623464|1.17159446929622>|<point|4.57171538997984|1.03262094237466>|<point|5.13888843672232|1.27173709009268>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|2.53596940635004|1.43240628826565>|<point|2.51070493485914|1.05338409088502>|<point|2.71286461206504|1.07865198346342>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|3.06657972914404|-0.04574160431275>|<point|3.04131525765314|-0.42476380169336>|<point|3.24347493485914|-0.39949590911496>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|3.56657972914404|-1.34574160431275>|<point|3.54131525765314|-1.72476380169336>|<point|3.74347493485914|-1.69949590911496>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|6.62938871535924|-0.50056659346475>|<point|6.60412424386824|-0.87958879084535>|<point|6.80628392107424|-0.85432089826697>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|5.07273067136726|-0.13447839506878>|<point|5.04746619987632|-0.51350059244938>|<point|5.24962587708229|-0.488232699871>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|2.89929930389694|-0.02708247539253>|<point|2.57081975766064|0.74358501766211>|<point|2.62136898110294|0.90780541718586>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|5.3708826856891|1.53638578327385>|<point|5.34561821419816|1.15736358589324>|<point|5.54777789140415|1.18263147847162>>>|<with|color|dark
  magenta|line-width|2ln|arrow-end|\<gtr\>|<line|<point|-1|0>|<point|1.0|0.0>>>|<math-at|F|<point|-0.2|0.2>>|<with|fill-color|#a0a0a0|<carc|<point|-5.39575027085596|-1.34574160431275>|<point|-5.42101474234686|-1.72476380169336>|<point|-5.21885506514086|-1.69949590911496>>>|<with|fill-color|#a0a0a0|<carc|<point|-5.89575027085596|-0.04574160431275>|<point|-5.92101474234686|-0.42476380169336>|<point|-5.71885506514086|-0.39949590911496>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-6.06303069610306|-0.02708247539253>|<point|-6.39151024233936|0.74358501766211>|<point|-6.34096101889706|0.90780541718586>>>|<with|fill-color|#a0a0a0|<carc|<point|-6.42636059364996|1.43240628826565>|<point|-6.45162506514086|1.05338409088502>|<point|-6.24946538793496|1.07865198346342>>>|<with|fill-color|#a0a0a0|<carc|<point|-3.88959932863274|-0.13447839506878>|<point|-3.91486380012368|-0.51350059244938>|<point|-3.71270412291771|-0.488232699871>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-6.07093252376536|1.17159446929622>|<point|-4.39061461002016|1.03262094237466>|<point|-3.82344156327768|1.27173709009268>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-6.04733506514086|1.29343409088504>|<point|-5.07452182132556|1.69771971729064>|<point|-3.84902903127396|1.47030868408518>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-3.53367814434498|-0.47136654160574>|<point|-2.82615735852675|-0.73667444212168>|<point|-2.65401654281633|-0.7490071659333>>>|<with|arrow-end|\|\<gtr\>|<arc|<point|-2.58561575613176|-0.48793279084535>|<point|-3.4320934|-0.22262329488028>|<point|-3.50789707773515|-0.23525724116947>>>|<with|fill-color|#a0a0a0|<carc|<point|-2.33294128464076|-0.50056659346475>|<point|-2.35820575613176|-0.87958879084535>|<point|-2.15604607892576|-0.85432089826697>>>|<with|fill-color|#a0a0a0|<carc|<point|-3.5914473143109|1.53638578327385>|<point|-3.61671178580184|1.15736358589324>|<point|-3.41455210859585|1.18263147847162>>>>>|The
  apply of a functor changes the style of the dots and arrows. The left hand
  side is the original diagrams, and the right hand side is the one with the
  style <math|F>.>

  <section|Natural Transformation>

  <subsection|Natural Transformation is the Morphism of the Category of
  Functors>

  As we have defined category, and as we have built a category out of
  categories by defining functor, we can also build a category out of
  functors by defining natural transformation. Precisely, given two
  categories <math|<math-ss|C>> and <math|<math-ss|D>>, a category of
  functors from <math|<math-ss|C>> to <math|<math-ss|D>>, denoted by
  <math|<around*|[|<math-ss|C>,<math-ss|D>|]>>, has the collection of all
  functors from <math|<math-ss|C>> to <math-ss|D> as its objects.

  But, given two functor <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>,
  what is the morphism between <math|F> and <math|G>? Remember
  <math|<math-ss|Top>> and <math|<math-ss|Grp>>, in which we constructed the
  category out of the objects; morphism between two objects are structure
  preserving map. The same goes for the category of functors, in which we
  know what the objects are and have to define the morphisms. The structure
  preserving map is natural transformation.

  <\definition>
    [Natural Transformation] Given two categories <math|<math-ss|C>> and
    <math|<math-ss|D>>, and two functors <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>,
    a <with|font-series|bold|natural transformation>
    <math|\<alpha\>:F\<rightarrow\>G> is a family of morphisms in
    <math|<math-ss|D>>, <math|<around*|{|\<alpha\><rsub|A>:F<around*|(|A|)>\<rightarrow\>G<around*|(|A|)>\|\<forall\>A\<in\><math-ss|C>|}>>,
    such that for each <math|A,B\<in\><math-ss|C>> and each
    <math|f:A\<rightarrow\>B>, we have <math|G<around*|(|f|)>\<circ\>\<alpha\><rsub|A>=\<alpha\><rsub|B>\<circ\>F<around*|(|f|)>>.
    The <math|\<alpha\><rsub|A>> is called a
    <with|font-series|bold|component> of <math|\<alpha\>>.
  </definition>

  Remember the metaphor for functor, wherein the action of a functor is like
  applying a style to the dots and arrows of the diagrams, the action of
  <math|\<alpha\>> is like changing the style of dots and arrows from style
  <math|F> to style <math|G>. So, with natural transformation, the structure
  of functor is preserved.

  <big-figure|<with|gr-mode|<tuple|group-edit|edit-props>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|<graphics||<with|arrow-end|\<gtr\>|color|dark
  green|line-width|2ln|<arc|<point|5.42865185565502|-0.47136654160574>|<point|6.13617264147325|-0.73667444212168>|<point|6.30831345718367|-0.7490071659333>>>|<with|arrow-end|\<gtr\>|color|dark
  green|line-width|2ln|<arc|<point|2.91499493485914|1.29343409088504>|<point|3.88780817867444|1.69771971729064>|<point|5.11330096872604|1.47030868408518>>>|<with|arrow-end|\<gtr\>|color|dark
  green|line-width|2ln|<arc|<point|6.37671424386824|-0.48793279084535>|<point|5.5302366|-0.22262329488028>|<point|5.45443292226485|-0.23525724116947>>>|<with|arrow-end|\<gtr\>|color|dark
  green|line-width|2ln|<arc|<point|2.89139747623464|1.17159446929622>|<point|4.57171538997984|1.03262094237466>|<point|5.13888843672232|1.27173709009268>>>|<with|color|dark
  green|line-width|2ln|fill-color|#faa|<carc|<point|2.53596940635004|1.43240628826565>|<point|2.51070493485914|1.05338409088502>|<point|2.71286461206504|1.07865198346342>>>|<with|color|dark
  green|line-width|2ln|fill-color|#faa|<carc|<point|3.06657972914404|-0.04574160431275>|<point|3.04131525765314|-0.42476380169336>|<point|3.24347493485914|-0.39949590911496>>>|<with|color|dark
  green|line-width|2ln|fill-color|#faa|<carc|<point|3.56657972914404|-1.34574160431275>|<point|3.54131525765314|-1.72476380169336>|<point|3.74347493485914|-1.69949590911496>>>|<with|color|dark
  green|line-width|2ln|fill-color|#faa|<carc|<point|6.62938871535924|-0.50056659346475>|<point|6.60412424386824|-0.87958879084535>|<point|6.80628392107424|-0.85432089826697>>>|<with|color|dark
  green|line-width|2ln|fill-color|#faa|<carc|<point|5.07273067136726|-0.13447839506878>|<point|5.04746619987632|-0.51350059244938>|<point|5.24962587708229|-0.488232699871>>>|<with|arrow-end|\<gtr\>|color|dark
  green|line-width|2ln|<arc|<point|2.89929930389694|-0.02708247539253>|<point|2.57081975766064|0.74358501766211>|<point|2.62136898110294|0.90780541718586>>>|<with|color|dark
  green|line-width|2ln|fill-color|#faa|<carc|<point|5.3708826856891|1.53638578327385>|<point|5.34561821419816|1.15736358589324>|<point|5.54777789140415|1.18263147847162>>>|<with|color|dark
  magenta|line-width|2ln|arrow-end|\<gtr\>|<line|<point|-1|0>|<point|1.0|0.0>>>|<math-at|\<alpha\>|<point|-0.2|0.2>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|-5.39575027085596|-1.34574160431275>|<point|-5.42101474234686|-1.72476380169336>|<point|-5.21885506514086|-1.69949590911496>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|-5.89575027085596|-0.04574160431275>|<point|-5.92101474234686|-0.42476380169336>|<point|-5.71885506514086|-0.39949590911496>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|-6.06303069610306|-0.02708247539253>|<point|-6.39151024233936|0.74358501766211>|<point|-6.34096101889706|0.90780541718586>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|-6.42636059364996|1.43240628826565>|<point|-6.45162506514086|1.05338409088502>|<point|-6.24946538793496|1.07865198346342>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|-3.88959932863274|-0.13447839506878>|<point|-3.91486380012368|-0.51350059244938>|<point|-3.71270412291771|-0.488232699871>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|-6.07093252376536|1.17159446929622>|<point|-4.39061461002016|1.03262094237466>|<point|-3.82344156327768|1.27173709009268>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|-6.04733506514086|1.29343409088504>|<point|-5.07452182132556|1.69771971729064>|<point|-3.84902903127396|1.47030868408518>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|-3.53367814434498|-0.47136654160574>|<point|-2.82615735852675|-0.73667444212168>|<point|-2.65401654281633|-0.7490071659333>>>|<with|arrow-end|\|\<gtr\>|color|red|<arc|<point|-2.58561575613176|-0.48793279084535>|<point|-3.4320934|-0.22262329488028>|<point|-3.50789707773515|-0.23525724116947>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|-2.33294128464076|-0.50056659346475>|<point|-2.35820575613176|-0.87958879084535>|<point|-2.15604607892576|-0.85432089826697>>>|<with|fill-color|#a0a0a0|color|red|<carc|<point|-3.5914473143109|1.53638578327385>|<point|-3.61671178580184|1.15736358589324>|<point|-3.41455210859585|1.18263147847162>>>>>|The
  action of <math|\<alpha\>> is like changing the style of dots and arrows
  from style <math|F> to style <math|G>. The left hand side is the diagrams
  with the style <math|F>, and the right hand side is the one with the style
  <math|G>.>

  <subsection|Natural Isomorphism is Equivalent to Isomorphisms of Category.>

  With the category of functors, we can discuss whether two functors are
  equivalent or not. This relates to the isomorphism between functors. Since
  a morphisim in this category is called a natural transformation, an
  isomorphism is called a natural isomorphism. Given the general definition
  of isomorphism, a natural transformation <math|\<alpha\>:F\<rightarrow\>G>
  is <with|font-series|bold|natural isomorphic> between functors
  <math|F,G:<math-ss|C>\<rightarrow\><math-ss|D>>, if there exists a natural
  transformation <math|\<beta\>:G\<rightarrow\>F> such that
  <math|\<beta\>\<circ\>\<alpha\>=1<rsub|F>> and
  <math|\<alpha\>\<circ\>\<beta\>=1<rsub|G>>. As usual, if natural
  isomorphism exists between <math|F> and <math|G>, then denote
  <math|F\<cong\>G>.

  This definition is quite complicated, since it is an isomorphism on
  <math|<around*|[|<math-ss|C>,<math-ss|D>|]>>, which we are not familiar
  with. But, because <math|\<alpha\>> is a family of morphisms on category
  <math|<math-ss|D>>, we can first consider a much simplier case, that is,
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

  <subsection|Natural Isomorphism Describes Equivalence between Categories>

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
  be pinched together as one. So, instead of
  <math|G\<circ\>F<around*|(|A|)>=A>, as <math|G\<circ\>F=1<rsub|<math-ss|C>>>
  indicates, we should say <math|G\<circ\>F<around*|(|A|)>\<cong\>A>. By
  lemma <reference|lemma: Natural Isomorphism>,
  <math|G\<circ\>F\<cong\>1<rsub|<math-ss|C>>> means, for each
  <math|A\<in\><math-ss|C>>, there exists an isomorphism
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
    <associate|auto-10|<tuple|1.7|4>>
    <associate|auto-11|<tuple|1.8|5>>
    <associate|auto-12|<tuple|2|5>>
    <associate|auto-13|<tuple|2.1|5>>
    <associate|auto-14|<tuple|2|6>>
    <associate|auto-15|<tuple|3|7>>
    <associate|auto-16|<tuple|3.1|7>>
    <associate|auto-17|<tuple|3|7>>
    <associate|auto-18|<tuple|3.2|7>>
    <associate|auto-19|<tuple|3.3|8>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|1.2|2>>
    <associate|auto-6|<tuple|1.3|3>>
    <associate|auto-7|<tuple|1.4|3>>
    <associate|auto-8|<tuple|1.5|3>>
    <associate|auto-9|<tuple|1.6|4>>
    <associate|lemma: Natural Isomorphism|<tuple|22|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||You can think
      objects as dots and morphisms as arrows between the dots. There are
      three disconnected diagrams in this figure. For convenience, identity
      morphisms are not shown.>|<pageref|auto-4>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||The apply of a
      functor changes the style of the dots and arrows. The left hand side is
      the original diagrams, and the right hand side is the one with the
      <with|mode|<quote|math>|F>-style.>|<pageref|auto-14>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||The action of
      <with|mode|<quote|math>|\<alpha\>> is like changing the style of dots
      and arrows from style <with|mode|<quote|math>|F> to style
      <with|mode|<quote|math>|G>. The left hand side is the diagrams with the
      <with|mode|<quote|math>|F>-style, and the right hand side is the one
      with the <with|mode|<quote|math>|G>-style.>|<pageref|auto-17>>
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Category,
      Functor, and Natural Transformation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Category>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Category is about Arrows
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Objects may not be Sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Morphisms may not be Maps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Isomorphic Objects should be
      Viewed as One <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Supremum and Infimum are
      Dual <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Morphisms in the Dual
      Category of <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Set>>>>
      are Not Maps <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Arrows Generalize Concepts
      and Theorems from One Area to Every Area in Mathemtatics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Duality is Free Lunch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Functor>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Functor is the Morphism of
      the Category of Categories <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Natural
      Transformation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Natural Transformation is
      the Morphism of the Category of Functors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Natural Isomorphism is
      Equivalent to Isomorphisms of Category.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Natural Isomorphism
      Describes Equivalence between Categories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>
    </associate>
  </collection>
</auxiliary>