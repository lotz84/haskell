## 型
- [【Haskell】 言葉の定義まとめ（型クラス、型コンストラクタ、値コンストラクタ、型引数など） - takafumi blog](http://takafumi-s.hatenablog.com/entry/2015/09/25/123335)
- [Kwang's Haskell Blog - Type Isomorphism](https://kseo.github.io/posts/2016-12-25-type-isomorphism.html)
- [These, Align, and Crosswalk](https://teh.id.au/posts/2017/03/29/these-align-crosswalk/index.html)
- [These Changes](https://fintanh.github.io/posts/these-changes.html)
- [tatterdemalion - Types & Kinds](http://slpopejoy.github.io/posts/2015-04-10-Types.html)
- [CS Syd - Overcoming Boolean blindness with Evidence](https://cs-syd.eu/posts/2016-07-24-overcoming-boolean-blindness-evidence.html)

### 基本型
- [haskell の Int と Integer の違いや Float や Double や Rational を理解する - Qiita](https://qiita.com/suzuki-hoge/items/17cf0cd3680ef10b2cc1)
- [Unit型の何が偉大なのか説明してみる - Qiita](https://qiita.com/alucky0707/items/a677e5c9850aa765dd55)
- [Haskell equality table](https://htmlpreview.github.io/?https://github.com/quchen/articles/blob/master/haskell-equality-table.html)
- [意外と知らないType defaulting - Qiita](https://qiita.com/takoeight0821/items/6cf286bf29479698e977)
- [だれも Data.Maybe を教えてくれなかった - Qiita](https://qiita.com/mtsugawa/items/e410812567e8b5b1690c)

### なぜ型が重要か
- [Type Safety Back and Forth](https://www.parsonsmatt.org/2017/10/11/type_safety_back_and_forth.html)
- [Keep your types small...](https://www.parsonsmatt.org/2018/10/02/small_types.html)
- [The Basic, Practical Benefits](http://mechanical-elephant.com/thoughts/2015-08-10-the-pratical-benefits-of-haskell-typesystem/)
- [jaspervdj - On Ad-hoc Datatypes](https://jaspervdj.be/posts/2016-05-11-ad-hoc-datatypes.html)
- [good-design-and-type-safety-in-yahtzee](http://h2.jaguarpaw.co.uk/posts/good-design-and-type-safety-in-yahtzee/)
- [Parse, don’t validate](https://lexi-lambda.github.io/blog/2019/11/05/parse-don-t-validate/)

### 型を定義する３つの方法
- type
- data
- newtype

#### type
型シノニム

#### data
代数的データ型とは"足し算"と"掛け算"が出来るような型のこと。"足し算"は`Either a b`、"掛け算"は`(a, b)`と対応する。

- [Haskell Diary #2 - Algebra of Data Types](http://akashagrawal.me/haskell-diary-2-algebraic-data-types/)
- [代数的データ型と初等代数学 - ryota-ka's blog](https://ryota-ka.hatenablog.com/entry/2018/07/09/110000)
- [The algebra (and calculus!) of algebraic data types](https://codewords.recurse.com/issues/three/algebra-and-calculus-of-algebraic-data-types)
- [代数的データ型のデータのとりうる数を微分すると１穴空きデータ型の数になる話 - Qiita](https://qiita.com/mittyantest/items/f8783834e6bb48baf2c8)
- [Adαm Schønemαnn - Pattern matching ADTs](https://adamschoenemann.dk/posts/2018-05-29-pattern-matching.html)

##### Codata
- [A Neighborhood of Infinity: Data and Codata](http://blog.sigfpe.com/2007/07/data-and-codata.html)
- [Codata in action, or how to connect Functional Programming and Object Oriented Programming](http://www.javiercasas.com/articles/codata-in-action)

#### newtype
既存の型と同型な別の型を定義することができるが、コンパイル後の表現は既存の型と同一になるので効率の面で利点がある。1つの値コンストラクタと1つのフィールドを持つdataで定義された型との違いは以下のように現れる。

```hs
> newtype A = A Int
> checkA (A _) = "OK"
> chackA undefined
"OK"

> data B = B Int
> checkB (B _) = "OK"
> checkB undefined
"*** Exception: Prelude.undefined
```

- [Newtype - HaskellWiki](https://wiki.haskell.org/Newtype)
- [すごいH本で見落としがちだが実は重要な機能：newtype - Qiita](https://qiita.com/HirotoShioi/items/70cd235e93dee99bf8e8)
- [本当はすごい newtype - Speaker Deck](https://speakerdeck.com/konn/ben-dang-hasugoi-newtype?slide=84)

### 型注釈

> 1. Type annotations for an external function may require not only its type structure, but also references to the type names or implementations (i.e. import of modules where these types are declared).
> 2. Partial type signatures still require the type structure of the function (making use of the scaffold of the type signature).
> 3. Visible type applications is the tersest and cleanest way to annotate an external function’s type. It does not require re-building of the type signature in case of ambiguity.
> 
> [Тех-Детали: Type annotations vs partial type signatures vs visible type applications](https://lin-techdet.blogspot.com/2018/12/type-annotations-vs-partial-type.html)

- [Tweag - Inferred or Specified Types? Your Choice!](https://www.tweag.io/blog/2020-03-12-expl-spec/)

### 多相型
- [Maybe? Use a type parameter!](https://www.parsonsmatt.org/2017/04/08/maybe_use_a_type_parameter.html)
- [What the heck is polymorphism? - DEV](https://dev.to/jvanbruegge/what-the-heck-is-polymorphism-nmh)

## 関数
* [A simple Haskell function](http://neilmitchell.blogspot.jp/2016/01/a-simple-haskell-function.html)
* [Composing bijections, surjections, and injections](https://gist.github.com/rampion/f20ffd6386269e6f7e41fae15d208e12)
* [Eastman maximal comma-free codes in Haskell](https://byorgey.wordpress.com/2016/07/07/eastman-maximal-comma-free-codes-in-haskell/)
* [Descriptive Variable Names: A Code Smell](http://degoes.net/articles/insufficiently-polymorphic)
* [map関数](http://qiita.com/knknkn1162/items/92de8dd250ff94cd86f1)
* [zudov/24-days-of-syntactic-witchery: Aligning characters for fun and profit, with Haskell and PureScript](https://github.com/zudov/24-days-of-syntactic-witchery)
* [美術の人が考える Haskell - Qiita](https://qiita.com/hitsujisanmeme/items/e14972cfd349c1149d58)
* [Haskellの($)と(.)の違い - Qiita](https://qiita.com/TTsurutani/items/201200c1f288b0d03e78)
* [Another Approach to Default Function Parameters](https://ocharles.org.uk/blog/posts/2015-07-23-another-approach-to-default-variables.html)
* [Ceci n'est pas un default](https://gallais.github.io/blog/ceci-pas-default)
* [Return a Function to Avoid Effects](https://www.parsonsmatt.org/2019/03/22/return_a_function_to_avoid_effects.html)
* [Haskell で「エラトステネスの篩」 その１ - Qiita](https://qiita.com/little_Haskeller/items/e73d54835b5772a55e81)
* [Haskell で「エラトステネスの篩」 その２ - Qiita](https://qiita.com/little_Haskeller/items/a3ec4c82c7099f1c9cf1)
* [Haskellの関数の型とかカリー化とか #Haskell - Qiita](https://qiita.com/Tatsuki-I/items/d1d122107da8c1ee121f)
* [haskellで2重リストにmapを適用させる例 - Qiita](https://qiita.com/P0ngCh4ng/items/fb3f24b7c3138bd1b159)
* [Haskell - $の仕組みを覗いてみよう - Qiita](https://qiita.com/grainrigi/items/f45b586b4013ffc3814e)
- [Compose Tetris - Fintan Halpenny - Medium](https://medium.com/@fintan.halpenny/compose-tetris-196b70035aff)

### パターンマッチ
* [Pattern matching](http://mbps.hatenablog.com/entry/2014/10/04/010000)
* [PATTERN MATCHING: WOT'S... UH THE DEAL?](http://www.stackbuilders.com/news/pattern-matching-wot-s-uh-the-deal)
* [Pattern and Guard Extensions](https://www.fpcomplete.com/school/to-infinity-and-beyond/pick-of-the-week/guide-to-ghc-extensions/pattern-and-guard-extensions)
* [Haskell で条件分岐](http://qiita.com/rooooomania/items/1623e5b981a30fbc8427)
* [コピペしてすぐ確認できるHaskellの条件分岐](http://qiita.com/nejimakidori/items/f6aedce6308ce5e32914)
* [The four simple ways to encode sum-types](https://yairchu.github.io/posts/sum-type-encodings.html)

### 多変数関数とカリー化
* [Curry](https://ro-che.info/ccc/10)
* [Loop School - Curring](http://school.looprecur.com/?video=122330958)
* [Haskell Functions Take One Argument](http://tonymorris.github.io/blog/posts/haskell-functions-take-one-argument/)
* [A taste of Curry](https://jeltsch.wordpress.com/2013/04/27/a-taste-of-curry/)

```haskell
curry :: ((a, b) -> c) -> a -> b -> c
uncurry :: (a -> b -> c) -> (a, b) -> c
```

> Haskell 初心者は括弧ばかりの Lisp のようなコードを書く。中級者になると、($) が多くなる。上級者(言い過ぎか？)になると、($) が消えて、(.) が多くなる。

出典: [関数合成の妙技](http://d.hatena.ne.jp/kazu-yamamoto/20100702/1278036842)

### ポイントフリー
必要のないところでポイントワイズに書く必要はないが、あまりポイントフリーに拘りすぎないのも大事

* [ポイントフリースタイル入門](http://d.hatena.ne.jp/melpon/20111031/1320024473)
* [Haskellのフクロウ ((.)$(.))](http://uid0130.blogspot.jp/2014/11/haskell_17.html)
* [Blunt](https://blunt.herokuapp.com/)
  * [pointfree](https://hackage.haskell.org/package/pointfree)
* ["Point-Free or Die: Tacit Programming in Haskell and Beyond" by Amar Shah](https://www.youtube.com/watch?v=seVSlKazsNk)

### 遅延評価
* [Schrödinger's cat](https://ro-che.info/ccc/4)
* [Résumé](https://ro-che.info/ccc/11)
* [正格評価と遅延評価（基本編）](http://qiita.com/ruicc/items/07143c9e78c697227706)
* [正格評価と遅延評価（詳細編）](http://qiita.com/ruicc/items/31a269f93404268d80d7)
* [takenobu-hs/lazy_evaluation](https://github.com/takenobu-hs/lazy_evaluation)
* [なぜHaskellでタライ回しが速いのか、あるいは遅延評価とSTG](http://qiita.com/ruicc/items/b8b3c61a12baa1af3c69)
* [An example of using laziness](http://noughtmare.gitlab.io/posts/2017-08-30-an-example-of-using-laziness.html)
* [All About Strictness](https://www.fpcomplete.com/blog/2017/09/all-about-strictness)
* [Visualizing lazy evaluation](http://www.well-typed.com/blog/2017/09/visualize-cbn/)
* [Adaptive Evaluation of Non-Strict Programs](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/07/ennals-thesis.pdf)
* [fixpt - All About Strictness Analysis (part 1)](http://fixpt.de/blog/2017-12-04-strictness-analysis-part-1.html)
* [Thinking Functionally with Haskell勉強メモ: 第７章１　メモリ、計算量、`seq` - Arantium Maestum](http://zehnpaard.hatenablog.com/entry/2018/04/01/065836)
* [正格性のすべて (翻訳)](https://haskell.e-bigmoon.com/posts/2018/06-25-all-about-strictness)
* [Laziness Quiz](https://www.parsonsmatt.org/2018/12/04/laziness_quiz.html)
* [Haskellにおいて遅延評価は諸刃の剣であり、注意すべきであるという話 - Qiita](https://qiita.com/HirotoShioi/items/2adca7fa238c5abad6ef)
* [The Incomplete Guide to Lazy Evaluation (in Haskell)](https://hackhands.com/guide-lazy-evaluation-haskell/)
* [If Haskell were strict, what would the laziness be like?](http://nikita-volkov.github.io/if-haskell-were-strict/)
* [How to force a list](https://ro-che.info/articles/2015-05-28-force-list)
* [Thinking with Laziness](http://begriffs.com/posts/2015-06-17-thinking-with-laziness.html)
* [How Laziness Works](http://two-wrongs.com/how-laziness-works)
* [さようなら遅延評価 - あどけない話](https://kazu-yamamoto.hatenablog.jp/entry/2019/02/15/115630)
* [apfelmus - The Incomplete Guide to Lazy Evaluation (in Haskell)](https://apfelmus.nfshost.com/articles/lazy-eval.html)
* [続くといいな日記 – 遅延評価でデバッグが困難になる状況](https://mizunashi-mana.github.io/blog/posts/2020/03/haskell-lazy-debug-problem/)

> One very interesting comparison is that lazy evaluation is to the CPU what garbage collection is to memory.

出典: <http://scott.sauyet.com/Javascript/Talk/2014/01/FuncProgTalk/#slide-40>

### メモ化

**遅延評価を利用したメモ化の実装例**

```haskell
fibs :: [Integer]
fibs = map fib [0..]

fib :: Int -> Integer
fib 0 = 1
fib 1 = 1
fib n = fibs !! (n-1) + fibs !! (n-2)
```

参考: [Can someone explain the concept behind Haskell's memoization?](http://programmers.stackexchange.com/questions/220746/can-someone-explain-the-concept-behind-haskells-memoization)

* [Haskell memoization](http://lukahorvat.github.io/programming/2014/11/18/haskell-memoization/)
* [Haskellでメモ化を行うもう一つの方法](http://d.hatena.ne.jp/tanakh/20100411)
* [Kwang's Haskell Blog - Memoization in Haskell](https://kseo.github.io//posts/2017-01-14-memoization-in-hasekll.html)
* [関数のメモ化](https://kakkun61.hatenablog.com/entry/2019/07/29/%E9%96%A2%E6%95%B0%E3%81%AE%E3%83%A1%E3%83%A2%E5%8C%96)

### 正格評価
* [fixpt - All About Strictness Analysis (part 1)](http://fixpt.de/blog/2017-12-04-strictness-analysis-part-1.html)
* [fixpt - All About Strictness Analysis (part 2)](http://fixpt.de/blog/2018-12-30-strictness-analysis-part-2.html)
* [Strict拡張でハマったお話 - Qiita](https://qiita.com/pxfnc/items/a26bda6d11402daba675)

### 部分関数
* [Partial Function Considered Harmful](http://tanakh.jp/posts/2011-12-25-partial-function-considered-harmful.html)
* <https://twitter.com/GabrielG439/status/671803691591077888>
* [24 days of Hackage, 2015: day 16: safe; what is safety anyway?](http://conscientiousprogrammer.com/blog/2015/12/16/24-days-of-hackage-2015-day-16-safe-what-is-safety-anyway/)
* [部分関数をどう扱うか(spoonの紹介)](http://qiita.com/techno-tanoC/items/1b725713cd01bdf83b40)
* [The spoon package](https://hackage.haskell.org/package/spoon)

### 多相型
* [多相関数を数える - Qiita](http://qiita.com/nobsun/items/5662968f1c381695e7ff)
* [「多相関数を数える」を考える - Qiita](http://qiita.com/cutsea110/items/3496394968cb7ac73047)
* [ランク2多相の、ふたつの側面 - Qiita](http://qiita.com/YoshikuniJujo/items/c28d8fa11e33ed677e83)

---

* [Generalizing function composition](http://jaspervdj.be/posts/2014-10-17-generalizing-function-composition.html)
* [Haskell Symposium 2012. Koen Claessen: Shrinking and showing functions](https://www.youtube.com/watch?v=CH8UQJiv9Q4)
* [Making a fast curry Push/enter vs eval/apply for higher-order languages](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.134.9317&rep=rep1&type=pdf)
* [A Pragmatic Case for Static Typing with Brian Hurt](https://vimeo.com/72870631)
* [On stateless software design: what is state ?](http://www.leonmergen.com/code/2015/12/04/on-stateless-software-design-what-is-state.html)
* [Does Haskell make promises it can't keep? or The big problem with wrapping numeric types](https://gist.github.com/tdoris/de36d2306edc5d6e9e7d#file-promises-md)
* [Haskell/GHC 記号の意味を検索するためのリファレンス集 - Qiita](https://qiita.com/takenobu-hs/items/b95f0a4409c59440d4a9)
* [Follow the Denotation :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/follow-the-denotation/)
* [Combinatorics of Permutations: Introduction](https://vynm.github.io/Comutations/posts/2018-05-25-00Introduction.html)
* [Haskell のモジュールとパッケージの基礎知識 - Qiita](https://qiita.com/kyotsuya/items/a7015ae5ad413288d8fe)
* [Haskell でも heredoc がしたい - Haskell-jp](https://haskell.jp/blog/posts/2019/string-gap-for-heredoc-like.html)
* [accidentally-exponential](http://h2.jaguarpaw.co.uk/posts/accidentally-exponential/)
* [Idiomatic Haskell : haskell](https://www.reddit.com/r/haskell/comments/84qs5x/idiomatic_haskell/)
* [Haskell/GHC symbol search cheatsheet](https://github.com/takenobu-hs/haskell-symbol-search-cheatsheet)
