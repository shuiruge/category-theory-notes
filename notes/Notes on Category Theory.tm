<TeXmacs|2.1>

<style|book>

<\body>
  <include|Motivation.tm>

  <include|Category.tm>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|Motivation.tm>>
    <associate|auto-10|<tuple|2.1.6|6|Category.tm>>
    <associate|auto-11|<tuple|2.1.7|6|Category.tm>>
    <associate|auto-12|<tuple|2.1.8|7|Category.tm>>
    <associate|auto-13|<tuple|2.2|7|Category.tm>>
    <associate|auto-14|<tuple|2.2.1|7|Category.tm>>
    <associate|auto-15|<tuple|2.3|8|Category.tm>>
    <associate|auto-16|<tuple|2.3.1|8|Category.tm>>
    <associate|auto-17|<tuple|2.3.2|8|Category.tm>>
    <associate|auto-18|<tuple|2.3.3|9|Category.tm>>
    <associate|auto-2|<tuple|2|3|Category.tm>>
    <associate|auto-3|<tuple|2.1|3|Category.tm>>
    <associate|auto-4|<tuple|2.1.1|3|Category.tm>>
    <associate|auto-5|<tuple|2.1|4|Category.tm>>
    <associate|auto-6|<tuple|2.1.2|4|Category.tm>>
    <associate|auto-7|<tuple|2.1.3|5|Category.tm>>
    <associate|auto-8|<tuple|2.1.4|5|Category.tm>>
    <associate|auto-9|<tuple|2.1.5|5|Category.tm>>
    <associate|lemma: Natural Isomorphism|<tuple|2.22|9|Category.tm>>
    <associate|part:Category.tm|<tuple|1|3>>
    <associate|part:Motivation.tm|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|2.1>||You can think
      objects as dots and morphisms as arrows between the dots. There are
      three disconnected diagrams in this figure. For convenience, identity
      morphisms are not shown.>|<pageref|auto-5>>
    </associate>
    <\associate|parts>
      <tuple|Motivation.tm|chapter-nr|0|section-nr|0|subsection-nr|0>

      <tuple|Category.tm|chapter-nr|1|section-nr|0|subsection-nr|0>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Motivation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Category,
      Functor, and Natural Transformation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      2.1<space|2spc>Category <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <with|par-left|<quote|1tab>|2.1.1<space|2spc>Category is about Arrows
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.1.2<space|2spc>Objects may not be Sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.1.3<space|2spc>Morphisms may not be Maps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.1.4<space|2spc>Isomorphic Objects should
      be Viewed as One <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.1.5<space|2spc>Supremum and Infimum are
      Dual <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.1.6<space|2spc>Morphisms in the Dual
      Category of <with|mode|<quote|math>|<rigid|<with|mode|<quote|text>|<with|font-family|<quote|ss>|font-shape|<quote|right>|Set>>>>
      are Not Maps <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.1.7<space|2spc>Arrows Generalize Concepts
      and Theorems from One Area to Every Area in Mathemtatics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.1.8<space|2spc>Duality is Free Lunch
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      2.2<space|2spc>Functor <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>

      <with|par-left|<quote|1tab>|2.2.1<space|2spc>Functor is the Morphism of
      the Category of Categories <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      2.3<space|2spc>Natural Transformation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      <with|par-left|<quote|1tab>|2.3.1<space|2spc>Natural Transformation is
      the Morphism of the Category of Functors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|2.3.2<space|2spc>Natural Isomorphism is
      Equivalent to Isomorphisms of Category.
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|2.3.3<space|2spc>Natural Isomorphism
      Describes Equivalence between Categories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>
    </associate>
  </collection>
</auxiliary>