> いわゆるgetter/setterの圏論による表現。  
> [Lens](http://mbps.hatenablog.com/entry/2014/10/28/152931)

> `Lens' s a`: given a type `s` that always has an `a` in it, a `Lens' s a` is a way of getting and setting that `a` inside of `s`  
> `Prism' s a`: given a type `s` that might have an `a` in it, a `Prism' s a` is a way of extracting the `a` if it exists, and being able to create an `s` given an `a`  
> `Traversal' s a`: target many `a`s which may or may not exist inside of an `s`  
> `Iso' s a` : says that `s` and `a` are different representations of the same type  
> All `Lens`es are `Traversal`s and all `Prism`s are also `Traversal`s. Not all `Traversal`s are `Lens`es or `Prism`s though.  
> <https://www.reddit.com/r/haskell/comments/9ded97/is_learning_how_to_use_the_lens_library_worth_it/e5hf9ai/>


* [microlens](http://hackage.haskell.org/package/microlens)
* [lens](https://hackage.haskell.org/package/lens)
* [Control.Lens.Tutorial](https://hackage.haskell.org/package/lens-tutorial/docs/Control-Lens-Tutorial.html)
* [Lensってなに？どういう仕組みなの？](http://qiita.com/cormojs/items/f94be4300b5cc60a9de0)
* [Kinokkory/lens-japanese](https://github.com/Kinokkory/lens-japanese/wiki)
* [lensパッケージのオプティクス(弱い順)](http://fumieval.hatenablog.com/entry/2015/07/14/223329)
* [A Clear Intro to Lenses](http://begriffs.com/posts/2016-01-07-clear-intro-to-lenses.html)
* [Lensで行こう！](http://myuon-myon.hatenablog.com/entry/20121228/1356708483)
* [Lensで行こう！(2):Isoへの拡張](http://myuon-myon.hatenablog.com/entry/2013/01/06/232142)
* [lens over tea](http://artyom.me/#lens-over-tea)
* 🎥 [Lenses, Folds and Traversals: An Introduction to the Lens Library with Edward Kmett](http://vimeo.com/56063074)
* [Picking a lens library](https://ro-che.info/ccc/23)
* [Functor is to Lens as Applicative is to Biplate: Introducing Multiplate](http://arxiv.org/abs/1103.2841)
* [Could someone explain the diagram about the `lens` library?](http://stackoverflow.com/questions/29742634/could-someone-explain-the-diagram-about-the-lens-library/29742635#29742635)
* [Lenses: compositional data access and manipulation.](https://skillsmatter.com/skillscasts/4251-lenses-compositional-data-access-and-manipulation)
* [Zippers and lenses](http://www.scs.stanford.edu/14sp-cs240h/slides/lenses-slides.html)
* [LensでHaskellをもっと格好良く！ 2013/3/31](http://www.slideshare.net/itsoutoftunethismymusic/ekmett-17955009)
* [LensでHaskellをもっと格好良く！ 2013/5/30](http://tokiwoousaka.github.io/takahashi/contents/20150530LensPrism.html)
* [Lens : Smart setter for immutable data](https://speakerdeck.com/hiratara/lens-smart-setter-for-immutable-data)
* [Beyond Scala Lens](http://www.slideshare.net/JulienTruffaut/beyond-scala-lens)
* [total-1.0.0: Exhaustive pattern matching using traversals, prisms, and lenses](http://www.haskellforall.com/2015/01/total-100-exhaustive-pattern-matching.html)
* [himura/lens-regex](https://github.com/himura/lens-regex)
* [Lens from Scratch](http://myuon-myon.hatenablog.com/entry/2015/07/14/203521)
* [Haskell/Lenses and functional references](https://en.wikibooks.org/wiki/Haskell/Lenses_and_functional_references)
* [Lenses from the ground up](http://taylor.fausak.me/2014/08/03/lenses-from-the-ground-up/)
* [Explicit is better than implicit](http://www.haskellforall.com/2015/10/explicit-is-better-than-implicit.html)
* [The lens-simple package](http://hackage.haskell.org/package/lens-simple)
* [Profunctor Polymorphism](https://bartoszmilewski.com/2016/08/16/profunctor-polymorphism/)
* [Lenses: Yoneda with Adjunctions](https://bartoszmilewski.com/2016/09/06/lenses-yoneda-with-adjunctions/)
* [$(lens 'foo) -- handy one-off lens maker for record fields](https://gist.github.com/chrisdone/c50e2ffc9e71a38d4fed9813fa90bbf4)
* [Oleg's gists - Affine Traversal](http://oleg.fi/gists/posts/2017-03-20-affine-traversal.html)
* [Oleg's gists - Compiling lenses](http://oleg.fi/gists/posts/2017-03-31-compiling-lenses.html)
* [Oleg's gists - Mutated lenses](http://oleg.fi/gists/posts/2017-04-07-mutated-lens.html)
* [Oleg's gists - Glassery](http://oleg.fi/gists/posts/2017-04-18-glassery.html)
* [Lost in Technopolis](http://newartisans.com/2017/04/putting-lenses-to-work/)
* [Oleg's gists - Indexed Profunctor optics](http://oleg.fi/gists/posts/2017-04-26-indexed-poptics.html)
* [Profunctor Optics: The Categorical View \|   Bartosz Milewski's Programming Cafe](https://bartoszmilewski.com/2017/07/07/profunctor-optics-the-categorical-view/)
* [mchaver - Lens Tutorial - SimpleLens](http://www.mchaver.com/posts/2017-07-12-lens-tutorial-1.html)
* [Why Lenses Work](http://blog.vmchale.com/article/why-lenses-work)
* [hablapps/DontFearTheProfunctorOptics: Don't Fear the Profunctor Optics!](https://github.com/hablapps/DontFearTheProfunctorOptics#readme)
* [AnkiWeb - Haskell lens operators](https://ankiweb.net/shared/info/1994529308)
* [Quick and easy user-defined operators with Plated](https://qfpl.io/posts/quick-and-easy-user-defined-operators/)
* [Announcing generic-lens 0.5.0.0 – ( )](http://kcsongor.github.io/generic-lens/)
* [Oleg's gists - Functor Optics](http://oleg.fi/gists/posts/2017-12-23-functor-optics.html)
* [あいや☆ぱぶりっしゅぶろぐ！ - lensの演算子と等価な関数の対応表](http://aiya000.github.io/posts/2017-09-10-lens-operator-to-func.html)
* [あいや☆ぱぶりっしゅぶろぐ！ - lens（のMonadState演算子など）で自己に言及したい時はidを使う](http://aiya000.github.io/posts/2017-10-29-identity-in-lens-monadstate.html)
* [Free Lenses for Higher-Kinded Data :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/free-lenses)
* [HKD: Less Terrible than You Might Expect :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/hkd-not-terrible)
* [高談活論: 双方向変換の原理と実践](https://www.jstage.jst.go.jp/article/jssst/31/2/31_2_44/_pdf)
  * [b18n-combined: Combining Syntactic and Semantic Bidirectionalization](http://www2.sf.ecei.tohoku.ac.jp/~kztk/b18n-combined/desc.html)
  * [bff: Bidirectionalization for Free! (POPL'09)](https://hackage.haskell.org/package/bff-0.3.1.2)
* [Deciphering lens error messages, part 1 – Urbint Engineering – Medium](https://medium.com/urbint-engineering/deciphering-lens-error-messages-part-1-75627c440090)
* [Lysxia - Monadic profunctors for bidirectional programming](https://blog.poisson.chat/posts/2017-01-01-monadic-profunctors.html)
* [Lenses embody Products, Prisms embody Sums · in Code](https://blog.jle.im/entry/lenses-products-prisms-sums.html)
* [Haskell Lens Operator Onboarding – Urbint Engineering – Medium](https://medium.com/urbint-engineering/haskell-lens-operator-onboarding-a235481e8fac)
* [Well-Typed - The Haskell Consultants: Compositional zooming for <tt>StateT</tt> and <tt>ReaderT</tt> using <tt>lens</tt>](http://www.well-typed.com/blog/2018/09/compositional-zooming/)

> Thus the Yoneda embedding of the functor category leads to the van Laarhoven representation of the lens

出典: [From Lenses to Yoneda Embedding](http://bartoszmilewski.com/2015/07/13/from-lenses-to-yoneda-embedding/)

* [[1809.00738] Categories of Optics](https://arxiv.org/abs/1809.00738)

### CPS Lens
* [My new lens idea](http://lpaste.net/128137)

### Lens Libraries
* [yaml-light-lens](https://hackage.haskell.org/package/yaml-light-lens)

## Prism
> A prism is like a first-class pattern match

<https://www.youtube.com/watch?v=GZPup5Iuaqw>

## Iso
[Data.Text.Lens](https://hackage.haskell.org/package/lens/docs/Data-Text-Lens.html)

```haskell
packed :: IsText t => Iso' String t

pack x ≡ x ^. packed
unpack x ≡ x ^. from packed
```

## Traversal
* [Reducer transformers can definitely be encoded in a lens-like shape](https://www.reddit.com/r/haskell/comments/2cv6l4/clojures_transducers_are_perverse_lenses/cjjfrxt)

## Classy Optics
* [lensのmakeClassyで型を合成する](http://tune.hateblo.jp/entry/2014/09/27/191008)
* [makeClassyを使って複数のオブジェクトで共通する函数をまとめる](https://gist.github.com/myuon/6349238)
* [Next Level MTL - George Wilson - BFPG 2016-06](https://www.youtube.com/watch?v=GZPup5Iuaqw)
