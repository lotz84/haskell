##Lens

> いわゆるgetter/setterの圏論による表現。

出典: [Lens](http://mbps.hatenablog.com/entry/2014/10/28/152931)

* [lens](https://hackage.haskell.org/package/lens)
* [Control.Lens.Tutorial](https://hackage.haskell.org/package/lens-tutorial/docs/Control-Lens-Tutorial.html)
* [Kinokkory/lens-japanese](https://github.com/Kinokkory/lens-japanese/wiki)
* [lensパッケージのオプティクス(弱い順)](http://fumieval.hatenablog.com/entry/2015/07/14/223329)
* [aelve/microlens](https://github.com/aelve/microlens#readme)
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
* [lensのmakeClassyで型を合成する](http://tune.hateblo.jp/entry/2014/09/27/191008)
* [total-1.0.0: Exhaustive pattern matching using traversals, prisms, and lenses](http://www.haskellforall.com/2015/01/total-100-exhaustive-pattern-matching.html)
* [himura/lens-regex](https://github.com/himura/lens-regex)
* [Lens from Scratch](http://myuon-myon.hatenablog.com/entry/2015/07/14/203521)
* [tables](https://hackage.haskell.org/package/tables)
* [Haskell/Lenses and functional references](https://en.wikibooks.org/wiki/Haskell/Lenses_and_functional_references)
* [Lenses from the ground up](http://taylor.fausak.me/2014/08/03/lenses-from-the-ground-up/)
* [Explicit is better than implicit](http://www.haskellforall.com/2015/10/explicit-is-better-than-implicit.html)
* [The lens-simple package](http://hackage.haskell.org/package/lens-simple)

> Thus the Yoneda embedding of the functor category leads to the van Laarhoven representation of the lens

出典: [From Lenses to Yoneda Embedding](http://bartoszmilewski.com/2015/07/13/from-lenses-to-yoneda-embedding/)

###Comonad
* [comonad](https://hackage.haskell.org/package/comonad)
* [Comonads are objects](http://www.haskellforall.com/2013/02/you-could-have-invented-comonads.html)
* 🎥 [Kenneth Foner - Getting a Quick Fix on Comonads](https://www.youtube.com/watch?v=F7F-BzOB670)

```
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

##Classy Optics
* [lensのmakeClassyで型を合成する](http://tune.hateblo.jp/entry/2014/09/27/191008)
* [makeClassyを使って複数のオブジェクトで共通する函数をまとめる](https://gist.github.com/myuon/6349238)
* [Next Level MTL - George Wilson - BFPG 2016-06](https://www.youtube.com/watch?v=GZPup5Iuaqw)
