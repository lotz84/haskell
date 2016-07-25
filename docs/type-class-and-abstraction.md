#型クラスと抽象

![](https://i.gyazo.com/51a4265483dc39c8c43d90a1e60f4fac.jpg)

出典: <https://wiki.haskell.org/wikiupload/8/85/TMR-Issue13.pdf>

###宣言

```haskell
class Show a where
    show :: a -> String
```

`Show` は型クラス、`show` はメソッドと呼ぶ。

###実装

```haskell
instance Show Bool where
    show True  = "True"
    show False = "False"
```

これで`Bool`型はShowのインスタンスになる。
例えば`print :: Show a => a -> IO ()`の型`a`にはShowのインスタンスであれば何でも使うことが出来る。

* [How to make ad-hoc polymorphism less ad-hoc](http://www.cse.iitk.ac.in/users/karkare/courses/2010/cs653/Papers/ad-hoc-polymorphism.pdf)
* [Haskell/Classes and types](https://en.wikibooks.org/wiki/Haskell/Classes_and_types)
* [The Typeclassopediaを訳しました](http://snak.tdiary.net/20091020.html)
* [When to use a type class, when to use a type](http://stackoverflow.com/questions/12286315/when-to-use-a-type-class-when-to-use-a-type)
* [Type classes: an exploration of the design space](http://courses.cs.washington.edu/courses/cse590p/06sp/multi.pdf)
* [Type Classes with Functional Dependencies](http://web.cecs.pdx.edu/~mpj/pubs/fundeps-esop2000.pdf)
* [Edward Kmett - Type Classes vs. the World](https://www.youtube.com/watch?v=hIZxTQP1ifo)
* [Adventure with Types in Haskell - Simon Peyton Jones](https://www.youtube.com/watch?v=6COvD8oynmI)
* [Writing invertible functions](http://blog.callcc.name/posts/invertible-functions.html)
* [Recursion Schemes](https://www.youtube.com/watch?v=Zw9KeP3OzpU)
* [SelectricSimian/EventualMonad](https://github.com/selectricsimian/eventualmonad)
* [Categories of Structures in Haskell](http://comonad.com/reader/2015/categories-of-structures-in-haskell/)
* [Type Classes in Haskell](http://ropas.snu.ac.kr/lib/dock/HaHaJoWa1996.pdf)
* [How to make ad-hoc polymorphism less adhoc](http://202.3.77.10/users/karkare/courses/2010/cs653/Papers/ad-hoc-polymorphism.pdf)
* [Functors, Applicatives, And Monads In Pictures](http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html)
* [Denotational design with type class morphisms](http://conal.net/papers/type-class-morphisms/type-class-morphisms-long.pdf)
* [Orphan instances](http://maoe.hatenadiary.jp/entry/20100902/1283358286)
* [C9 Lectures: Dr. Ralf Lämmel - Advanced Functional Programming - Type Classes](https://channel9.msdn.com/Shows/Going+Deep/C9-Lectures-Dr-Ralf-Lmmel-Advanced-Functional-Programming-Type-Classes)
* [Maintainable Type Classes for Haskell](https://ff32.host.cs.st-andrews.ac.uk/papers/hsym15.pdf)
* [10章:型とクラスの定義](http://www.slideshare.net/RuiccRail/programming-haskell-chapter10)
* [Scrap your type classes](http://www.haskellforall.com/2012/05/scrap-your-type-classes.html)
* [Counterexamples of Type Classes](http://blog.functorial.com/posts/2015-12-06-Counterexamples.html)
* [Interactively discovering the best type classes for Haskell functions](http://begriffs.com/posts/2013-08-25-interactively-discovering-best-type.html)
* [Some interesting features of Haskell’s type system](https://jeltsch.wordpress.com/2013/02/09/some-interesting-features-of-haskells-type-system/)
* [Natural numbers with addition form a monoid](https://theorylunch.wordpress.com/2013/12/03/natural-numbers-with-addition-form-a-monoid/)
* [Edward Kmett - Undecidable Superclasses](https://www.youtube.com/watch?v=ZL9ehIJhk98)
* [Haskell's Type Classes: We Can Do Better](http://degoes.net/articles/principled-typeclasses)
* [Haskellで関数のオーバーロード](http://qiita.com/7shi/items/17a1567a635af17fc83f)
* [Why I prefer typeclass-based libraries](http://www.yesodweb.com/blog/2016/03/why-i-prefer-typeclass-based-libraries)
* [Typeclasses and Run-Time Dependency Management](https://turingjump.com/posts/smerdyakov.html)
* [phadej/poly-nfdata.hs](https://gist.github.com/phadej/2fc066c00e33b9486e1a3e5f7767a8d7)

## 代数的な型クラス
### Semigroup
* [Algebraic patterns - Semigroup](http://philipnilsson.github.io/Badness10k/posts/2016-07-14-functional-patterns-semigroup.html)

### Monoid
* [Haskell Monoids and their Uses](http://blog.sigfpe.com/2009/01/haskell-monoids-and-their-uses.html)
* [Monoids and Finger Trees](http://apfelmus.nfshost.com/articles/monoid-fingertree.html)
* [Monoids and their efficiency in practice](http://myhaskelljournal.com/monoids-and-their-efficiency-in-practice/)
* [Algebraic patterns - Identity element](http://philipnilsson.github.io/Badness10k/posts/2016-06-29-functional-patterns-identity-element.html)
* [Algebraic patterns - Monoid](http://philipnilsson.github.io/Badness10k/posts/2016-07-21-functional-patterns-monoid.html)

> lists are not free monoids in Haskell.

出典: [Free Monoids in Haskell](http://comonad.com/reader/2015/free-monoids-in-haskell/)

#### Formatting

```haskell
format ("Person's name is " % text % ", age is " % hex) "Dave" 54
```

* [Formatting](https://hackage.haskell.org/package/formatting)
  * [HoleyMonoid](http://hackage.haskell.org/package/HoleyMonoid)
  * [今すぐprintfを窓から投げ捨ててformattingを使うべきn個の理由](http://qiita.com/hiyakashi_/items/f241af8c25c30765cab4)
* [Text.Printf](http://hackage.haskell.org/package/base/docs/Text-Printf.html)
* [formattable](http://hackage.haskell.org/package/formattable)
