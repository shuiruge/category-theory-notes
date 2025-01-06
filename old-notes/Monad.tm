<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Monad>

  Monoid is the category with single object. So, a morphism of a monoid is
  like <math|f:A\<rightarrow\>A>. As a category, a monoid has the unique
  identity, like <math|1<rsub|A>>.

  Monad is the monoid in the category <math|<math-ss|End><rsub|<math-ss|C>>>,
  whose objects are the endofunctors of <math|<math-ss|C>> and whose
  morphisms are the natural transformations between them. This means, we
  should consider an endofunctor <math|T:<math-ss|C>\<rightarrow\><math-ss|C>>
  as the single object, and natural transformations like
  <math|\<alpha\>:T\<rightarrow\>T> as the morphisms. Identity functor
  <math|1<rsub|<math-ss|C>>> should be regarded as the unique identity.

  Why monad? It seems that monad is introduced for investigating adjunction.
  In fact, with a proper adjustment, adjunction satisfies the commutative
  diagrams of monad naturally. It is, thus, guessed that it is adjunction so
  that the commutative diagrams of monad are defined.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Monad>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>