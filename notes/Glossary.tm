<TeXmacs|2.1>

<style|book>

<\body>
  <chapter|Glossary>

  This glossary contains a class of definitions declared in the book.

  A <strong|class> is a generalization of set, so as to avoid the Russell's
  paradox. A set is a class, called <strong|small> class. A class that is not
  small is called <strong|proper>. For instance, the class of all sets are
  proper. Indeed, Russell's paradox appears if it's a set.

  A category is <strong|small> if both objects and morphisms, as classes, are
  small. And it's <strong|local small> if, for any two object <math|A,B>, the
  class of the morphisms between <math|A> and <math|B>, i.e. the hom-class
  <math|Hom<around*|(|A,B|)>>, is small. It's thus called a <strong|hom-set>.

  A category is <strong|discrete> if every morphism is an identity.

  Category <math|<math-tt|Set>> has sets as objects and functions between
  sets as morphisms.

  Category <math|<math-tt|Top>> has topology spaces as objects and continuous
  functions between topology spaces as morphisms.

  Category <math|<math-tt|B>G> for any group <math|G> has <math|G> as its
  unique object and <math|g\<in\>G> as its morphism. Indeed, for
  <math|\<forall\>g\<in\>G>, <math|g:G\<rightarrow\>G> with
  <math|g:h\<mapsto\>g h>.

  Category <math|<math-tt|Mat><rsub|<with|font|Bbb|K>>> for any field
  <math|<with|font|Bbb|K>> has positive integers as objects and a morphism
  from <math|m> to <math|n> is an <math|n\<times\>m> matrices, with matrix
  mutiplication as composition.

  Given powersets <math|P<around*|(|A|)>,P<around*|(|B|)>>, let
  <math|f:P<around*|(|A|)>\<rightarrow\>P<around*|(|B|)>>. The
  <strong|inverse image mapping> <math|f<rsup|-1>:P<around*|(|B|)>\<rightarrow\>P<around*|(|A|)>>
  with <math|\<forall\>B <rprime|'>\<subset\>B,f<rsup|-1><around*|(|B<rprime|'>|)>=<around*|{|a\<in\>A:f<around*|(|a|)>\<in\>B<rprime|'>|}>>,
  which may be <math|\<varnothing\>>.

  A <strong|basepointed map> is <math|f:<around*|(|X,x|)>\<rightarrow\><around*|(|Y,y|)>>
  with <math|x\<in\>X,y\<in\>Y> such that <math|f<around*|(|x|)>=y>. The
  domain and codomain are <strong|basepointed sets>.

  Category <math|<math-tt|Set<rsub|\<ast\>>>> has basepointed sets as objects
  and basepointed maps as morphisms.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Glossary>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>