* [不動点の話](http://d.hatena.ne.jp/kazu-yamamoto/20110426/1303810333)
* [Haskell/不動点と再帰](https://ja.wikibooks.org/wiki/Haskell/%E4%B8%8D%E5%8B%95%E7%82%B9%E3%81%A8%E5%86%8D%E5%B8%B0)
* [Solving Recursive Equations](http://jozefg.bitbucket.org/posts/2015-08-14-solve-domains.html)
* [Haskell/Denotational semantics](https://ja.wikibooks.org/wiki/Haskell/Denotational_semantics)
* [CONTINUOUS LATTICES](https://www.cs.ox.ac.uk/files/3229/PRG07.pdf)
* [Domain Theory](http://www.cs.bham.ac.uk/~axj/pub/papers/handy1.pdf)
* [再帰的関数論](http://www.kurims.kyoto-u.ac.jp/~cs/cs2011_terui.pdf)
* [再帰プログラムの意味論について](http://www.kurims.kyoto-u.ac.jp/~hassei/papers/sugaku07.pdf)
* [Domain Theory: An Introduction](https://arxiv.org/abs/1605.05858v1)
* [Grokking Fix](http://www.parsonsmatt.org/2016/10/26/grokking_fix.html)
* [A Type-theoretic Reconstruction of the Visitor Pattern](http://www.cs.bham.ac.uk/~hxt/research/mfps-visitors.pdf)
* [プログラム意味論とトポロジー -再帰，相互作用，結び目-](http://www.kurims.kyoto-u.ac.jp/~hassei/papers/msj2010sept_slides.pdf)

```haskell
fact = fix $ \fact n -> if n == 0 then 1 else n * fact (n-1)
```
