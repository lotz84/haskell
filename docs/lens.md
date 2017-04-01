##Lens

> いわゆるgetter/setterの圏論による表現。

出典: [Lens](http://mbps.hatenablog.com/entry/2014/10/28/152931)

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

> Thus the Yoneda embedding of the functor category leads to the van Laarhoven representation of the lens

出典: [From Lenses to Yoneda Embedding](http://bartoszmilewski.com/2015/07/13/from-lenses-to-yoneda-embedding/)

### Comonad
* [comonad](https://hackage.haskell.org/package/comonad)
* [Comonads are objects](http://www.haskellforall.com/2013/02/you-could-have-invented-comonads.html)
* [A whirlwind tour of comonads](http://dlaing.org/cofun/posts/comonads.html)
* 🎥 [Kenneth Foner - Getting a Quick Fix on Comonads](https://www.youtube.com/watch?v=F7F-BzOB670)
* [Comonads and Day Convolution](http://blog.functorial.com/posts/2016-08-08-Comonad-And-Day-Convolution.html)
* [Comonads as Spaces](http://blog.functorial.com/posts/2016-08-07-Comonads-As-Spaces.html)
* [What are some motivating examples for Cofree CoMonad in Haskell?](http://stackoverflow.com/questions/38816993/what-are-some-motivating-examples-for-cofree-comonad-in-haskell)
* [Comonadic Collision Resolution](http://reasonablypolymorphic.com//blog/comonadic-physics)
* [Comonads](https://bartoszmilewski.com/2017/01/02/comonads/)
* [Who needs HashLife when you have comonads?](https://samtay.github.io/posts/comonadic-game-of-life.html)

```hs
class Functor w => Comonad w where
  extract :: w a -> a
  duplicate :: w a -> w (w a)
```

###CPS Lens
* [My new lens idea](http://lpaste.net/128137)

###Lens Libraries
* [yaml-light-lens](https://hackage.haskell.org/package/yaml-light-lens)

##Prism
> A prism is like a first-class pattern match

<https://www.youtube.com/watch?v=GZPup5Iuaqw>

##Iso
[Data.Text.Lens](https://hackage.haskell.org/package/lens/docs/Data-Text-Lens.html)

```haskell
packed :: IsText t => Iso' String t

pack x ≡ x ^. packed
unpack x ≡ x ^. from packed
```

##Traversal
* [Reducer transformers can definitely be encoded in a lens-like shape](https://www.reddit.com/r/haskell/comments/2cv6l4/clojures_transducers_are_perverse_lenses/cjjfrxt)
* [TraversableがなければTraversalを使えばいいじゃない](http://qiita.com/hiyakashi_/items/f272e73161a89df31bda)

##Classy Optics
* [lensのmakeClassyで型を合成する](http://tune.hateblo.jp/entry/2014/09/27/191008)
* [makeClassyを使って複数のオブジェクトで共通する函数をまとめる](https://gist.github.com/myuon/6349238)
* [Next Level MTL - George Wilson - BFPG 2016-06](https://www.youtube.com/watch?v=GZPup5Iuaqw)
