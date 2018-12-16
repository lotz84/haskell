# 型クラスと抽象

![](https://i.gyazo.com/51a4265483dc39c8c43d90a1e60f4fac.jpg)

出典: <https://wiki.haskell.org/wikiupload/8/85/TMR-Issue13.pdf>

### 宣言

```haskell
class Show a where
    show :: a -> String
```

`Show` は型クラス、`show` はメソッドと呼ぶ。

### 実装

```haskell
instance Show Bool where
    show True  = "True"
    show False = "False"
```

これで`Bool`型はShowのインスタンスになる。
例えば`print :: Show a => a -> IO ()`の型`a`にはShowのインスタンスであれば何でも使うことが出来る。

* [How to make ad-hoc polymorphism less ad-hoc](http://people.csail.mit.edu/dnj/teaching/6898/papers/wadler88.pdf)
* [型クラスはインターフェースとどう違うのか \| プログラミング \| POSTD](http://postd.cc/how_do_type_classes_differ_from_interfaces/)
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
* [Type Classes and Constraints](https://gist.github.com/Icelandjack/5afdaa32f41adf3204ef9025d9da2a70)
* [入門的ではない型クラスの話：Haskellの型クラスがぁ (´^｀;)](http://d.hatena.ne.jp/m-hiyama/20160928/1475022255)
* [オーバーロードは何故にかくも難しいのか：Haskellの成功と失敗](http://d.hatena.ne.jp/m-hiyama/20160930/1475198218)
* [Haskellの型クラスに関わるワークアラウンド](http://d.hatena.ne.jp/m-hiyama/20161003/1475457068)
* [Type defaulting in Haskell](http://kseo.github.io/posts/2017-01-04-type-defaulting-in-haskell.html)
* [How do type classes differ from interfaces?](http://www.parsonsmatt.org/2017/01/07/how_do_type_classes_differ_from_interfaces.html)
* [型クラスのインスタンスが複数ある場合の話(Haskell編) - きくらげ観察日記](http://inkar-us-i.hatenablog.com/entry/2017/01/25/120000)
* [functor.tokyo -- When is UndecidableInstances safe?](https://functor.tokyo/blog/2017-04-07-undecidable-instances)
* [The curse of λ - Overlapping Instancesと戦う](https://myuon.github.io/posts/2017-08-21-overlapping-instances.html)
* [On Type Class Instance Selection – Hacker Noon](https://hackernoon.com/typeclass-instance-selection-fea1068920e6)
* [Type Class Patterns and Anti-patterns – Hacker Noon](https://hackernoon.com/type-class-patterns-and-anti-patterns-efd045c5af66)
* [The Has Type Class Pattern – Hacker Noon](https://hackernoon.com/the-has-type-class-pattern-ca12adab70ae)
* [型クラスの原点 How to make ad-hoc polymorphism less ad hoc を読んだ話 - Qiita](http://qiita.com/Biacco/items/083f05d5d1d87730f7db)
* [Scrap all your type classes but one](http://h2.jaguarpaw.co.uk/posts/scrap-all-your-typeclasses-but-one/)
* [型クラスの原点 How to make ad-hoc polymorphism less ad hoc を読んだ話 - Qiita](http://qiita.com/Biacco/items/083f05d5d1d87730f7db)
* [Counterexamples of Type Classes](http://blog.functorial.com/posts/2015-12-06-Counterexamples.html?repost)
* [[Haskell] instance宣言に関するエラーの原因いろいろ - Qiita](https://qiita.com/tezca686/items/1771623c3241d6863e61)
* [Bloggy Badger: N-ary Functors](http://gelisam.blogspot.jp/2017/12/n-ary-functors.html)
* [まともな型クラス への入門： 関数型とオブジェクト指向の垣根を越えて](http://d.hatena.ne.jp/m-hiyama/20180109/1515455333)
* [mpickering - Replacing type classes with records affects optimisation](http://mpickering.github.io/posts/2018-03-20-recordsvstypeclasses.html)
* [Algorithmically Scrapping Your Typeclasses :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/algorithmic-sytc/)
* [Haskellの関数に等価性を定義したい！ - Qiita](https://qiita.com/nwtgck/items/8371855594e6e1b2aca6)
* [Improving Typeclass Relations by Being Open](https://www.fceia.unr.edu.ar/~mauro/pubs/cm-conf.pdf)

## 代数的な型クラス
* [tower](https://tonyday567.github.io/tower/index.html)

### Num
* [Haskell の Num クラスに対する不満](http://d-poppo.nazo.cc/blog/2016/06/haskell-num-class/)
* [tonyday567/numhask - A haskell numeric prelude, providing a clean structure for numbers and operations that combine them.](https://github.com/tonyday567/numhask)

### Semigroup
* [Algebraic patterns - Semigroup](http://philipnilsson.github.io/Badness10k/posts/2016-07-14-functional-patterns-semigroup.html)

### Monoid
* [Haskell Monoids and their Uses](http://blog.sigfpe.com/2009/01/haskell-monoids-and-their-uses.html)
* [Monoids and Finger Trees](http://apfelmus.nfshost.com/articles/monoid-fingertree.html)
* [Monoids and their efficiency in practice](http://myhaskelljournal.com/monoids-and-their-efficiency-in-practice/)
* [Algebraic patterns - Identity element](http://philipnilsson.github.io/Badness10k/posts/2016-06-29-functional-patterns-identity-element.html)
* [Algebraic patterns - Monoid](http://philipnilsson.github.io/Badness10k/posts/2016-07-21-functional-patterns-monoid.html)
* [Electoral vote distributions are Monoids](http://www.haskellforall.com/2016/10/electoral-vote-distributions-are-monoids.html)
* [Electoral vote distributions are polynomials](https://ro-che.info/articles/2016-10-28-vote-distributions-polynomials)
* [Monoids on Steroids \|   Bartosz Milewski's Programming Cafe](https://bartoszmilewski.com/2017/02/09/monoids-on-steroids/)
* [Monoids: what they are, why they are useful, and what they teach us about software](https://deque.blog/2017/09/13/monoids-what-they-are-why-they-are-useful-and-what-they-teach-us-about-software/)
* [An Introduction to Monoids](https://blog.axosoft.com/monoids-practical-category-theory/)
* [Haskell for all: The wizard monoid](http://www.haskellforall.com/2018/02/the-wizard-monoid.html)
* [Monoidal Sorting](https://chrispenner.ca/posts/monoid-sort)
* [Comprehending Monoids with Class](https://lptk.github.io/programming/2018/10/04/comprehending-monoids-with-class.html)
* [Monoid と DerivingVia - Qiita](https://qiita.com/waddlaw/items/f349bd363963d59e9ef5)

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
* [Printcess.PrettyPrinting](https://hackage.haskell.org/package/printcess-0.1.0.2/docs/Printcess-PrettyPrinting.html)

## 多相型
* [Return type polymorphism in Haskell - Eli Bendersky's website](https://eli.thegreenplace.net/2018/return-type-polymorphism-in-haskell/)
