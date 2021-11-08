> `Lens' s a`: given a type `s` that always has an `a` in it, a `Lens' s a` is a way of getting and setting that `a` inside of `s`  
> `Prism' s a`: given a type `s` that might have an `a` in it, a `Prism' s a` is a way of extracting the `a` if it exists, and being able to create an `s` given an `a`  
> `Traversal' s a`: target many `a`s which may or may not exist inside of an `s`  
> `Iso' s a` : says that `s` and `a` are different representations of the same type  
> All `Lens`es are `Traversal`s and all `Prism`s are also `Traversal`s. Not all `Traversal`s are `Lens`es or `Prism`s though. 
> <https://www.reddit.com/r/haskell/comments/9ded97/is_learning_how_to_use_the_lens_library_worth_it/e5hf9ai/>


> A prism is like a first-class pattern match  
> <https://www.youtube.com/watch?v=GZPup5Iuaqw>

## チュートリアル
* [Lenses: compositional data access and manipulation.](https://skillsmatter.com/skillscasts/4251-lenses-compositional-data-access-and-manipulation)
* [Lensとは - Qiita](https://qiita.com/sparklingbaby/items/e66f48224067647d8e67)
* [Lensの仕組みがわかった - Qiita](https://qiita.com/sgmryk/items/c467af40c6c9df0f95a1)
* [Haskell/Lenses and functional references](https://en.wikibooks.org/wiki/Haskell/Lenses_and_functional_references)
* [Control.Lens.Tutorial](https://hackage.haskell.org/package/lens-tutorial/docs/Control-Lens-Tutorial.html)
* lens over tea
  * [lens over tea #1: lenses 101, traversals 101, and some implementation details](https://artyom.me/lens-over-tea-1)
  * [lens over tea #2: composition, laws, getters/actions/setters](https://artyom.me/lens-over-tea-2)
  * [lens over tea #3: folds](https://artyom.me/lens-over-tea-3)
  * [lens over tea #4: isomorphisms, some profunctors, lens families](https://artyom.me/lens-over-tea-4)
  * [lens over tea #5: prisms](https://artyom.me/lens-over-tea-5)
  * [lens over tea #6: Template Haskell](https://artyom.me/lens-over-tea-6)
  * [lens over tea #7: indexed traversals](https://artyom.me/lens-over-tea-7)
* 🎥 [Lenses, Folds and Traversals: An Introduction to the Lens Library with Edward Kmett](http://vimeo.com/56063074)
* [A Clear Intro to Lenses](http://begriffs.com/posts/2016-01-07-clear-intro-to-lenses.html)
* [Lensで行こう！](http://myuon-myon.hatenablog.com/entry/20121228/1356708483)
* [Lensで行こう！(2):Isoへの拡張](http://myuon-myon.hatenablog.com/entry/2013/01/06/232142)
* [Lens from Scratch](http://myuon-myon.hatenablog.com/entry/2015/07/14/203521)
* [Zippers and lenses](http://www.scs.stanford.edu/14sp-cs240h/slides/lenses-slides.html)
* [LensでHaskellをもっと格好良く！ 2013/3/31](http://www.slideshare.net/itsoutoftunethismymusic/ekmett-17955009)
* [LensでHaskellをもっと格好良く！ 2013/5/30](http://tokiwoousaka.github.io/takahashi/contents/20150530LensPrism.html)
* [Lenses from the ground up](http://taylor.fausak.me/2014/08/03/lenses-from-the-ground-up/)
* [Explicit is better than implicit](http://www.haskellforall.com/2015/10/explicit-is-better-than-implicit.html)
* [mchaver - Lens Tutorial - SimpleLens](http://www.mchaver.com/posts/2017-07-12-lens-tutorial-1.html)
* [Why Lenses Work](http://blog.vmchale.com/article/why-lenses-work)
* [hablapps/DontFearTheProfunctorOptics: Don't Fear the Profunctor Optics!](https://github.com/hablapps/DontFearTheProfunctorOptics#readme)
* [lensの演算子と等価な関数の対応表 - Qiita](https://qiita.com/aiya000/items/5f6e21f513a521416781)
* [あいや☆ぱぶりっしゅぶろぐ！ - lens（のMonadState演算子など）で自己に言及したい時はidを使う](http://aiya000.github.io/posts/2017-10-29-identity-in-lens-monadstate.html)
* [Lenses embody Products, Prisms embody Sums · in Code](https://blog.jle.im/entry/lenses-products-prisms-sums.html)
* [Exercises for understanding lenses \| William Yao](https://williamyaoh.com/posts/2019-04-25-lens-exercises.html)
* [Building Lenses](https://vitez.me/building-lenses)
* [Optics Cheatsheet](https://gist.github.com/ChrisPenner/1f7b6923448b3396a45d04a2b6b9d066)
* [Optics By Example by Chris Penner [Leanpub PDF/iPad/Kindle]](https://leanpub.com/optics-by-example/)
* [Mutating Lenses \| tarmean.github.io](https://tarmean.github.io/mutable_lenses)

## ライブラリ
### lens
* [lens](https://hackage.haskell.org/package/lens)
* [microlens](http://hackage.haskell.org/package/microlens)
* [lensパッケージのオプティクス(弱い順)](http://fumieval.hatenablog.com/entry/2015/07/14/223329)
* [Kinokkory/lens-japanese - ekmett/lens/wiki の日本語訳](https://github.com/Kinokkory/lens-japanese/wiki)
* [ChrisPenner/lens-errors: Handling errors which occur deep inside lens-chains](https://github.com/ChrisPenner/lens-errors#readme)
* [ChrisPenner/lens-filesystem: Lens interface for your filesystem; still a bit experimental](https://github.com/ChrisPenner/lens-filesystem)
* [Declaration groups: where order of declarations suddenly matters in Haskell](https://blog.monadfix.com/th-groups)

### optics
* [Well-Typed - The Haskell Consultants: Announcing the optics library](https://www.well-typed.com/blog/2019/09/announcing-the-optics-library/)
* [Oleg's gists - Case study: migrating from lens to optics](http://oleg.fi/gists/posts/2020-01-25-case-study-migration-from-lens-to-optics.html)

### prolens
* [kowainik/prolens: 👓 Profunctor based lightweight implementation of Lenses](https://github.com/kowainik/prolens)

### generic-lens
* [generic-lens \| Generically derive traversals, lenses, and prisms.](https://blog.csongor.co.uk/generic-lens/)
* [TemplateHaskell不要なレコードアクセサgeneric-lens🙄 - Qiita](https://qiita.com/aiya000/items/778308345bc863f55d26)

## Classy Optics
* [lensのmakeClassyで型を合成する](http://tune.hateblo.jp/entry/2014/09/27/191008)
* [makeClassyを使って複数のオブジェクトで共通する函数をまとめる](https://gist.github.com/myuon/6349238)
* [Next Level MTL - George Wilson - BFPG 2016-06](https://www.youtube.com/watch?v=GZPup5Iuaqw)

## その他
* [高談活論: 双方向変換の原理と実践](https://www.jstage.jst.go.jp/article/jssst/31/2/31_2_44/_pdf)
* [total-1.0.0: Exhaustive pattern matching using traversals, prisms, and lenses](http://www.haskellforall.com/2015/01/total-100-exhaustive-pattern-matching.html)
* [Quick and easy user-defined operators with Plated](https://qfpl.io/posts/quick-and-easy-user-defined-operators/)
* [Free Lenses for Higher-Kinded Data :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/free-lenses)
* [HKD: Less Terrible than You Might Expect :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/hkd-not-terrible)
* [Well-Typed - The Haskell Consultants: Compositional zooming for <tt>StateT</tt> and <tt>ReaderT</tt> using <tt>lens</tt>](http://www.well-typed.com/blog/2018/09/compositional-zooming/)
* [A clear picture of lens laws —Functional Pearl—](http://research.nii.ac.jp/~hu/pub/mpc15.pdf)
* [Lens into wrapped newtypes / Jappie](https://jappieklooster.nl/lens-into-wrapped-newtypes.html)
* [Lens as a Divisibility Relation: Goofin' Off With the Algebra of Types - Hey There Buddo!](http://www.philipzucker.com/lens-as-a-divisibility-relation-goofin-off-with-the-algebra-of-types/)
* [Optics + Regex: Greater than the sum of their parts](https://chrispenner.ca/posts/lens-regex-pcre)
* [Fibrations, Cleavages, and Lenses \|   Bartosz Milewski's Programming Cafe](https://bartoszmilewski.com/2019/10/09/fibrations-cleavages-and-lenses/)
* [Lenses for Tree Traversals](https://www.michaelpj.com/blog/2020/08/02/lenses-for-tree-traversals.html)
* [Optics and Kleisli arrows](https://gist.github.com/serras/5152ec18ec5223b676cc67cac0e99b70)
* [Composable filters using Witherable optics](https://chrispenner.ca/posts/witherable-optics)
* [[1805.06798] Generic Deriving of Generic Traversals](https://arxiv.org/abs/1805.06798)
* [Haskell for all: Optics are monoids](https://www.haskellforall.com/2021/09/optics-are-monoids.html)

## 圏論
* [From Lenses to Yoneda Embedding](http://bartoszmilewski.com/2015/07/13/from-lenses-to-yoneda-embedding/)
* [レンズの圏論的考察 — Avendia](http://ziphil.com/diary/application/27.html)
* [Lenses for philosophers – Jules Hedges](https://julesh.com/2018/08/16/lenses-for-philosophers/)

### Profunctor Optics
* [Profunctor Polymorphism](https://bartoszmilewski.com/2016/08/16/profunctor-polymorphism/)
* [Lenses: Yoneda with Adjunctions](https://bartoszmilewski.com/2016/09/06/lenses-yoneda-with-adjunctions/)
* [Profunctor Optics: The Categorical View \|   Bartosz Milewski's Programming Cafe](https://bartoszmilewski.com/2017/07/07/profunctor-optics-the-categorical-view/)
* [Oleg's gists - Affine Traversal](http://oleg.fi/gists/posts/2017-03-20-affine-traversal.html)
* [Oleg's gists - Compiling lenses](http://oleg.fi/gists/posts/2017-03-31-compiling-lenses.html)
* [Oleg's gists - Mutated lenses](http://oleg.fi/gists/posts/2017-04-07-mutated-lens.html)
* [Oleg's gists - Glassery](http://oleg.fi/gists/posts/2017-04-18-glassery.html)
* [Oleg's gists - Indexed Profunctor optics](http://oleg.fi/gists/posts/2017-04-26-indexed-poptics.html)
* [Oleg's gists - Functor Optics](http://oleg.fi/gists/posts/2017-12-23-functor-optics.html)
* [Oleg's gists - Finding correct (lens) laws](http://oleg.fi/gists/posts/2018-12-12-find-correct-laws.html)
* [Oleg's gists - Coindexed optics](https://oleg.fi/gists/posts/2021-01-04-coindexed-optics.html)
* [Lysxia - Monadic profunctors for bidirectional programming](https://blog.poisson.chat/posts/2017-01-01-monadic-profunctors.html)
* [What You Needa Know about Yoneda](https://www.cs.ox.ac.uk/jeremy.gibbons/publications/proyo.pdf)
* [Profunctor Optics and the Yoneda Lemma](https://ifipwg21wiki.cs.kuleuven.be/pub/IFIP21/Brandenburg/wg21m77.pdf)
* [Algebraic lenses](https://chrispenner.ca/posts/algebraic)
* [Intro to Kaleidoscopes: Optics for aggregating data through Applicatives](https://chrispenner.ca/posts/kaleidoscopes)