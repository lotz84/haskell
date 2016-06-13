* [箱で考えるFunctor、ApplicativeそしてMonad](http://qiita.com/suin/items/0255f0637921dcdfe83b)
* [Grasping Haskell: functors, applicatives and monads (Part 1)](https://medium.com/@xanderdeseyn/grasping-haskell-functors-applicatives-and-monads-part-1-93368e0a7a74#.wo1peulfu)
* [Grasping Haskell: functors, applicatives and monads (part 2)](https://medium.com/@xanderdeseyn/grasping-haskell-functors-applicatives-and-monads-part-2-65255e3e6a1d#.4m2g2bbum)
* [Briefly on the purpose of Functors, Applicatives and Monads](https://codetalk.io/posts/2015-11-28-briefly-on-the-purpose-of-functors-applicatives-and-monads.html)
* [An Intuition on Context I](http://www.parsonsmatt.org/programming/2015/11/24/an_intuition_on_context.html)
* [An Intuition on Context II](http://www.parsonsmatt.org/programming/2015/11/29/an_intuition_on_context_ii.html)

##関手 - Functor

```haskell
class Functor f where
    fmap :: (a -> b) -> f a -> f b
```

* [Loop School - Functors](http://school.looprecur.com/?video=122708837)
* [Loop School - Natural Transformations](http://school.looprecur.com/?video=122707678)
* [ファンクタであそぼう](http://kinokkory.hatenablog.com/entry/20131203/p1)
* [Monads and more](http://www.scs.stanford.edu/14sp-cs240h/slides/functors-monads-slides.html)
* [なぜ初心者にHaskellのファンクターは怖いと言われるのか(翻訳)](http://techno-tanoc.hatenablog.com/entry/2016/03/17/212032)
* [A functor is not a box](http://cs-syd.eu/posts/2016-04-30-a-functor-is-not-a-box.html)

###Bifunctor
* [bifunctor](https://hackage.haskell.org/package/bifunctors)

###Profunctor
* [profunctor](https://hackage.haskell.org/package/profunctors)

###Contravariant
* [contravariant](https://hackage.haskell.org/package/contravariant)
* [Contravariance and luminance to add safety to uniforms](http://phaazon.blogspot.jp/2015/08/contravariance-and-luminance-to-add.html)

###Representable Functor
* [Data.Functor.Rep](https://hackage.haskell.org/package/adjunctions/docs/Data-Functor-Rep.html)

##Applicative Functor

```haskell
class Functor f => Applicative f where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b
```

* [Applicative functor](http://mbps.hatenablog.com/entry/2014/07/16/200206)
* [Applicative Programming with Effects](http://staff.city.ac.uk/~ross/papers/Applicative.html)
* [monoidal functor](http://ncatlab.org/nlab/show/monoidal+functor)
* [The Prio Applicative](http://jaspervdj.be/posts/2015-05-26-prio-applicative.html)
* [Applicative Archery](http://duplode.github.io/posts/applicative-archery.html)
* [Notions of Computation as Monoids](http://www.fceia.unr.edu.ar/~mauro/pubs/Notions_of_Computation_as_Monoids.pdf)
* [Day convolution](http://ncatlab.org/nlab/show/Day+convolution)
* [Free Applicative Functors](http://www.paolocapriotti.com/assets/applicative.pdf)
* [Free Applicative Functors in Haskell](http://www.eyrie.org/~zednenem/2013/05/27/freeapp)
* [More on Free Applicative Functors](http://www.eyrie.org/~zednenem/2013/06/freeapp-2)
* [closed functor](http://ncatlab.org/nlab/show/closed+functor)
* [Haskell Applicative Functors Explained Without Words](http://begriffs.com/posts/2013-08-28-weird-symbols-in-their-native-tongue_27.html)
* [Applicatives in Math vs Code](http://begriffs.com/posts/2015-08-30-applicative-functors.html)

###Discrimination
* [discrimination](http://hackage.haskell.org/package/discrimination)
* [ZuriHac 2015 - Discrimination is Wrong: Improving Productivity](https://www.youtube.com/watch?v=cB8DapKQz-I)
* [ekmett先生のdiscriminationというライブラリの動画を見たので雑に要約してみた]()
* [Radix sort](http://lukahorvat.github.io/programming/2015/06/07/sorting/)
* [Why does `sort` in Data.Discrimination claim to be O(n)?](https://www.reddit.com/r/haskell/comments/3brce1/why_does_sort_in_datadiscrimination_claim_to_be_on/)

##自然変換

```haskell
type (~>) f g = forall x. f x -> g x
```

* [The natural-transformation package](https://hackage.haskell.org/package/natural-transformation)
* [3 06 Synthesis with String Diagrams in Haskell](https://www.youtube.com/watch?v=w6Is69Ri9Xs)
* [length は リスト函手から定数函手への自然変換だよ on Coq.](https://gist.github.com/mathink/31376030e03b4bb254ac)

##モナド
「環」の理論を知らなくても整数の足し算掛け算が出来るように、モナドの数学的な側面を知らなくてもモナドを使うことは出来る。

> 盲目の男たちがいました。彼らは象を知ったばかりでした。
> 
> 1人は「あれば大木だ」と両足を腕で包みながら言いました。  
> もう1人は「あれば大蛇だ」と胸を包みながら言いました。  
> 3人目の男は「うーん」と言いながら、ほうきか扇か何かを想像しました。

出典: [モナドは象だ](https://dl.dropboxusercontent.com/u/261418/Monads_are_Elephants/index.html)

> まずは、型クラスと高階関数を使ってプログラムを書いてみてください。そうすれば、モナドは自然と使えるようになるよ、というのが今日の私の主張です。

出典: [初心者のモナド](http://turedre.blogspot.jp/2012/12/blog-post.html)

```haskell
class Monad m where
  return :: a -> m a
  (>>=)  :: m a -> (a -> m b) -> b
```

* [Why Do Monads Matter?](https://cdsmith.wordpress.com/2012/04/18/why-do-monads-matter/)
* [All About Monads](https://wiki.haskell.org/All_About_Monads)
* [Monad tutorials timeline](https://wiki.haskell.org/Monad_tutorials_timeline)
* [Loop School - Monads](http://school.looprecur.com/?video=124363397)
* [Loop School - F-Algebras Part1](http://school.looprecur.com/?video=122715366)
* [Loop School - F-Algebras Part2](http://school.looprecur.com/?video=122716014)
* [Loop School - F-Algebras Part3](http://school.looprecur.com/?video=122716071)
* [DefaultSignaturesを用いたMonadの理想的な定義](http://qiita.com/tanakh/items/27b1c08b9f03d6836c13)
* [Three Useful Monads](http://adit.io/posts/2013-06-10-three-useful-monads.html)
* [Comprehending Monad](http://www.diku.dk/hjemmesider/ansatte/henglein/papers/wadler1992.pdf)
* [Value recursion in monadic computations](http://digitalcommons.ohsu.edu/cgi/viewcontent.cgi?article=1163&context=etd)
* [Monads from Comonads, Comonads from Monads](http://www.cs.ox.ac.uk/ralf.hinze/WG2.8/28/slides/Comonad.pdf)
* [Codensity Monad](http://myuon-myon.hatenablog.com/entry/2014/11/03/183032)
* [Constrained monads](https://jeltsch.wordpress.com/2015/09/03/constrained-monads/)
* [From Imperative to Pure-Functional and Back Again: Monads vs. Scoped Continuations](http://blog.paralleluniverse.co/2015/08/07/scoped-continuations/)
* [Monads need not be endofunctors](http://arxiv.org/abs/1412.7148)
* [Burritos for the Hungry Mathematician](http://www.cs.cmu.edu/~edmo/silliness/burrito_monads.pdf)
* [Free Monad](embedded-dsl.md#free-monad)
* [Monads by Example](http://cs-syd.eu/posts/2014-11-23-monads-by-example.html)
* [Implementing a category-theoretic Hask-monad in Haskell](https://medium.com/@brettwines/implementing-a-category-theoretic-hask-monad-in-haskell-7bf662f2e98b#.h73nxxjl2)
* [24 days of Hackage, 2015: day 11: monad-loops: avoiding writing recursive functions by refactoring](http://conscientiousprogrammer.com/blog/2015/12/11/24-days-of-hackage-2015-day-11-monad-loops-avoiding-writing-recursive-functions-by-refactoring/)
* [モナドのすべて](http://www.sampou.org/haskell/a-a-monads/html/index.html)
* [難しいのは見た目だけ！？Haskellのモナドの「たった2つのルール」を簡単に理解する！](http://qiita.com/south37/items/06cfa95aa9c8f2ecb2e9)
* [Monads to Machine Code (Part 1)](http://www.stephendiehl.com/posts/monads_machine_code.html)
* [Maybeモナドの使い道 部分的な失敗を全体的な失敗とする計算(1)](http://mitsuji.org/?p=152)
* [Eitherモナドの使い道 部分的な失敗を全体的な失敗とする計算(2)](http://mitsuji.org/?p=160)
* [Haskell Monads Explained Without Words](http://begriffs.com/posts/2013-08-29-haskell-monads-explained-without-words.html)
* [A short recap of monads](https://theorylunch.wordpress.com/2012/11/01/a-short-recap-of-monads/)
* [If monads are about syntax then algebras are about semantics](https://theorylunch.wordpress.com/2012/12/13/if-monads-are-about-syntax-then-algebras-are-about-semantics/)
* [An initial solution to the monad problem, and then some more](https://theorylunch.wordpress.com/2013/06/06/an-initial-solution-to-the-monad-problem-and-then-some-more/)
* [The Monad Challenges](http://mightybyte.github.io/monad-challenges/)
* [CSE230 Wi13 - Programming With Effects II](https://cseweb.ucsd.edu/classes/wi13/cse230-a/lectures/monads2.html)
* [モナモナ言わないモナド入門](http://www.mew.org/~kazu/material/2011-monad.pdf)
* [函数プログラミングの集い2011チュートリアル「モナドについて」](http://www.slideshare.net/tanakh/monad-tutorial)
* [3 Approaches to Monadic API Design in Haskell](https://blog.pusher.com/3-approaches-to-monadic-api-design-in-haskell/)
* [モナドはポケモン。数学が出てこないモナド入門](http://qiita.com/hiruberuto/items/8bbc0343bf794c368287)
* [What a Monad is not](https://wiki.haskell.org/What_a_Monad_is_not)
* [モナドはなぜHaskellでしか積極的に使われていないのか?](http://uehaj.hatenablog.com/entry/2013/11/06/125250)
* [Fixing the Monad instance for Either](http://www.yesodweb.com/blog/2016/04/fixing-monad-either)
* [Finally Understand Monads with this One Weird Trick](https://speakerdeck.com/jqsilver/finally-understand-monads-with-this-one-weird-trick)
* [Railway Oriented Programming](http://www.slideshare.net/ScottWlaschin/railway-oriented-programming)
* [モナドの六つの系統[Functor x Functor]](http://fumieval.hatenablog.com/entry/2013/06/05/182316)
* [The five arguments on why people struggle with monads](http://chrisdone.com/posts/monads)
* [だんだんわかる モナド入門 (Haskell)](http://qiita.com/Fujiee/items/6388cade8bf4797fb1d4)
* [Why do we need Monad to encapsulate side effects in Haskell?](https://www.quora.com/Why-do-we-need-Monad-to-encapsulate-side-effects-in-Haskell/answer/Tikhon-Jelvis)

```haskell
do x <- mx
   y <- my
   z

-- ... desugars to:
mx >>= (\x ->
my >>= (\y ->
z ))
```

出典: [How to desugar Haskell code ](http://www.haskellforall.com/2014/10/how-to-desugar-haskell-code.html)

###List Monad

```haskell
instance Monad [] where
  return x = [x]
  xs >>= f = concat (map f xs)
```

* [リストモナドの動作原理を考える](http://d.hatena.ne.jp/kazu-yamamoto/20090313/1236935179)
* [非決定計算としてのリストモナド](http://tanakh.jp/posts/2012-02-22-list-monad.html)
* [guard の動作原理を考える](http://d.hatena.ne.jp/kazu-yamamoto/20090401/1238555013)
* [Easy exhasutive search with the list monad](http://blog.plover.com/prog/haskell/monad-search.html)

####LogicT
* [リストモナドとLogicモナド](http://qiita.com/fumieval/items/794a85e2d7497b2463ba)
* [LogicT](http://halcat.org/haskell/logic/index.html)
* [Backtracking, Interleaving, and Terminating Monad Transformers](http://okmij.org/ftp/Computation/LogicT.pdf)
* [The logict package](http://hackage.haskell.org/package/logict)
* [BACKTRACKING, INTERLEAVING, AND TERMINATING MONAD TRANSFORMERS](http://halcat.org/oleg.html#/)

###Reader Monad

```haskell
newtype Reader e a = Reader { runReader :: (e -> a) }
 
instance Monad (Reader e) where 
    return a         = Reader $ \e -> a 
    (Reader r) >>= f = Reader $ \e -> runReader (f (r e)) e
```

* [Reader monad](http://mbps.hatenablog.com/entry/2014/11/08/010000)
* [Dependency InjectionとDSL](http://qiita.com/yyu/items/a2debfcde8f1915d5083)
* [Quick interpreters with the Reader monad](https://donsbot.wordpress.com/2006/12/11/quick-interpreters-with-the-reader-monad/)
* [Haskellで大域変数が欲しい時はReaderモナドを使いましょう](http://yu-i9.hatenablog.com/entry/2014/11/19/235007)

###随伴
* [Adjunctions](https://www.youtube.com/playlist?list=PL54B49729E5102248)
* [adjunctions](https://hackage.haskell.org/package/adjunctions)

> 今回は話の中でいきなりWriterとReaderが出てきて、この2つで随伴になると説明しましたが、実際はStateモナドやStoreコモナドからこの2つの関手を導くことができますです。

* [随伴がモテないのはどう考えてもモナドが悪い！（モナドとコモナドの関係が分かる話）](http://kagamilove0707.hatenablog.com/entry/2014/11/02/210400#fn-8ae3ae26)
* [Haskellと随伴](http://qiita.com/myuon_myon/items/d598480e4edd7a780ea7)
* [From Adjunctions to Monads](http://www.stephendiehl.com/posts/adjunctions.html)
* [Adjunctions with parameters](http://mbps.hatenablog.com/entry/2014/12/08/033230)
* [When does an endofunctor derive from an adjunction?](https://theorylunch.wordpress.com/2013/05/30/when-does-an-endofunctor-derive-from-an-adjunction/)
* [From mathematics to map-reduce](http://www.haskellforall.com/2016/02/from-mathematics-to-map-reduce.html)

###State Monad

```haskell
newtype State s a = State { runState :: s -> (a, s) }

instance Monad (State s) where
  return a = State $ \s -> (a, s)
  m >>= k  = State $ \s ->
               let (a, s') = runState m s
               in runState (k a) s'
```

* [Stateモナドによるポーランド記法の処理](http://qiita.com/7shi/items/8bed38f45272f194631a)
* [Stateモナドによる逆ポーランド記法の処理](http://qiita.com/7shi/items/0494704d00396687458f)
* [Stateモナドによる中置記法の処理](http://qiita.com/7shi/items/ee5afe4f088f0a1fc8c2)
* [Haskellでスタックを利用した加減乗除の計算機を作ってみる](http://kzfm.github.io/laskell/stackCalc.html)
* [逆Stateモナド](http://qiita.com/hiyakashi_/items/afee12104237e0ae2161)
* [Haskell has no state monad](http://www.cse.chalmers.se/)
* [Stateモナドが便利に使えた！](http://qiita.com/lotz/items/503ef04b03433d29f77c)
* [How does the State monad work?](http://yawar.blogspot.ca/2015/12/how-does-state-monad-work.html)
* [Wrangling State In Haskell](http://deliberate-software.com/haskell-state/)

###RWS Monad
Reader + Writer + State

* [Control.Monad.RWS](https://hackage.haskell.org/package/mtl/docs/Control-Monad-RWS.html)

###ST Monad
* [HaskellにおけるIOモナドとSTモナドの関係](http://uehaj.hatenablog.com/entry/2014/01/29/110222)
* [Performance of the ST Monad with pure exceptions](http://blog.aloni.org/posts/st-monad-perf-with-exceptions/)

###IO Monad
* [IO is Your Command Pattern](http://www.alexeyshmalko.com/2015/io-is-your-command-pattern/)
* [How Haskell models IO](http://www.gilmi.xyz/post/2015/08/12/how-haskell-models-io)
* [IO inside](https://www.haskell.org/haskellwiki/IO_inside)
* [Notions of computation and monads](http://www.disi.unige.it/person/MoggiE/ftp/ic91.pdf)
* [How to Declare an Imperative](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.91.3579&rep=rep1&type=pdf)
* [GHC 以外の処理系での IO 型/IO モナドの実装](http://togetter.com/li/252981)
* [Zhuangzi, butterfly and referential transparency](https://ro-che.info/ccc/9)
* [Effectful Haskell: IO, Monads, Functors](http://slpopejoy.github.io/posts/Effectful01.html)
* [On the unsafety of interleaved I/O](http://comonad.com/reader/2015/on-the-unsafety-of-interleaved-io/)
* [Haskell ポインタープログラミング](http://d.hatena.ne.jp/kazu-yamamoto/20131225/1387938629)
* [Imperative bits of Haskell](http://heather.github.io/posts/2014-10-20-Imprerative%20bits%20of%20Haskell.html)
* [純粋関数型JavaScriptのつくりかた](http://qiita.com/hiruberuto/items/810ecdff0c1674d1a74e)
* [Making sequence/mapM for IO take O(1) stack](http://neilmitchell.blogspot.jp/2015/09/making-sequencemapm-for-io-take-o1-stack.html)
* [Extra unsafe sequencing of IO actions](http://twanvl.nl/blog/haskell/unsafe-sequence)
* [The unexceptionalio package](http://hackage.haskell.org/package/unexceptionalio)
* [C#/Javaで読む、HaskellがIOモナドで実現したいこと](http://cs.hatenablog.jp/entry/2013/08/23/075647)
* [ノンブロッキングI/Oと非同期I/Oの違いを理解する](http://blog.takanabe.tokyo/2015/03/26/240/)
* [Pure API vs. IO-bound API for graphics frameworks](http://phaazon.blogspot.jp/2016/02/pure-api-vs-io-bound-api-for-graphics.html)
* [A newcomer's run-in with lazy I/O](https://ianthehenry.com/2016/3/9/lazy-io/)
* [IO Monad Considered Harmful](https://blog.jle.im/entry/io-monad-considered-harmful.html)

### Monad*
#### MonadFail
* [MonadFail Proposal](https://wiki.haskell.org/MonadFail_Proposal)

#### MonadPlus
* [MonadPlus and Monoid serve different purposes.](http://stackoverflow.com/questions/10167879/distinction-between-typeclasses-monadplus-alternative-and-monoid#10168111)
* [MonadPlus and Alternative are just near-semirings in the category of endofunctors, what's the problem?](http://tomschrijvers.blogspot.jp/2015/07/monadplus-and-alternative-are-just-near.html)
    * [MonadPlusとNearSemiringで反例探し](http://myuon-myon.hatenablog.com/entry/2015/07/21/225358)
* [`returnWhen` for MonadPlus](http://athanclark.github.io/posts/2015-08-26-returnWhen-for-MonadPlus.html)

#### MonadBase
* [transformars-base](https://hackage.haskell.org/package/transformers-base)

#### MonadIO
* [Control.Monad.IO.Class](https://hackage.haskell.org/package/transformers/docs/Control-Monad-IO-Class.html)

#### MonadThrow
#### MonadCatch
#### MonadMask
* [Control.Monad.Catch](https://hackage.haskell.org/package/exceptions/docs/Control-Monad-Catch.html)

####MonadFix
* [MonadFix example: compiling regular expressions](https://ro-che.info/articles/2015-09-02-monadfix)

###Indexed Monad
* [What is indexed monad?](http://stackoverflow.com/questions/28690448/what-is-indexed-monad)
* [Indexed Monadの世界](http://fumieval.hatenablog.com/entry/2013/05/04/144840)

##圏論
* [圏論とHaskellは仲良し](https://www.youtube.com/watch?v=hbaNIIDPf24)
* [圏論とは何か](https://infinitytopos.wordpress.com/2015/01/25/%E5%9C%8F%E8%AB%96%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B/)
* [Category Theory, The essence of interface-based design - Erik Meijer](https://www.youtube.com/watch?v=JMP6gI5mLHc)
* [Category theory for beginners](http://www.slideshare.net/kenbot/category-theory-for-beginners)
* [Category Theory & Programming](http://yogsototh.github.io/Category-Theory-Presentation/)
* [Category theory](http://www.mis.mpg.de/lecture-materials/funk-prog/haskell05.pdf)
* [哲学者のための圏論入門](http://choreographlife.jp/pdf/intro.pdf)
* [2013年 圏論勉強会 資料](http://nineties.github.io/category-seminar/)
* [圏論](http://alg-d.com/math/category/)
* [圏と関手入門](http://www.math.nagoya-u.ac.jp/~hasimoto/paper/class/cat10.pdf)
* [圏論と構造主義](http://eprints.lib.hokudai.ac.jp/dspace/bitstream/2115/51910/1/002_FUKAYAMA.pdf)
* [Category Theory for Computing Science](http://www.math.mcgill.ca/triples/Barr-Wells-ctcs.pdf)
* Steve Awodey - [Category Theory](http://www.amazon.co.jp/dp/0199237182)[[pdf](http://www.andrew.cmu.edu/course/80-413-713/notes/)]
* Steve Awodey - Category Theory Foundations [1](https://www.youtube.com/watch?v=ZKmodCApZwk), [2](https://www.youtube.com/watch?v=TQYjekxqw-Q), [3](https://www.youtube.com/watch?v=BOynNljjbeg), [4](https://www.youtube.com/watch?v=8fZmdhLLgs4)
* [The Catsters' Category Theory Videos](http://www.simonwillerton.staff.shef.ac.uk/TheCatsters/)
* [Category Theory for Programmers](http://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/)
* [Category Theory Lulz - Ken Scambler](https://www.youtube.com/watch?v=jDhMDgU7Koc)
* [Abstract and Concrete Categories](http://katmat.math.uni-bremen.de/acc/acc.pdf)
* [Limits and Colimits](http://bartoszmilewski.com/2015/04/15/limits-and-colimits/)
* [Natural Transformations](http://bartoszmilewski.com/2015/04/07/natural-transformations/)
* [エンド](http://alg-d.com/math/category/end.pdf)
* [This is the (co)end, my only (co)friend](http://arxiv.org/abs/1501.02503)
* [Fixed points of functors](http://www.pps.univ-paris-diderot.fr/~metayer/PDF/fix.pdf)
* [Locally cartesian closed categories, coalgebras, and containers](http://www.diva-portal.se/smash/get/diva2:613378/FULLTEXT01.pdf)
* [A Study of Categories of Algebras and Coalgebras](https://www.andrew.cmu.edu/user/awodey/students/hughes.pdf)
* [Fundamental Study Universal coalgebra: a theory of systems](http://homepages.cwi.nl/~janr/papers/files-of-papers/universal_coalgebra.pdf)
* [Coalgebras in functional programming and type theory](http://www.duplavis.com/venanzio/publications/Coalgebras_CMCS_2010.pdf)
* [Strange Loop: "Strange Loops: Capturing Knots With Powerful Notations" by Kay Ye](http://wadler.blogspot.jp/2015/10/strange-loop-strange-loops-capturing.html)
* [n-Category](http://mbps.hatenablog.com/entry/2014/11/25/031401)
* [Enriched category](http://mbps.hatenablog.com/entry/2015/03/03/204917)
* [Self-enriched category](http://mbps.hatenablog.com/entry/2015/03/11/155555)
* [Basic Concepts of Enriched Category Theory](http://www.tac.mta.ca/tac/reprints/articles/10/tr10abs.html)
* [String diagram](https://www.youtube.com/playlist?list=PL50ABC4792BD0A086)
* [String diagram](http://mbps.hatenablog.com/entry/2015/02/07/175148)
* [Category Theory Using String Diagrams](http://jp.arxiv.org/abs/1401.7220)
* [String diagram のすすめ](http://mbps.hatenablog.com/entry/2015/12/20/070000)
* [What is the Category for Haskell?](http://www.cs.gunma-u.ac.jp/~hamana/Papers/cpo.pdf)
* [Haskellで学ぶ圏論・ウォームアップ編　モノイドと二項演算子](http://bitterharvest.hatenablog.com/entry/2015/02/15/104722)
* [How we used Category Theory to solve a problem in Java](http://techblog.realestate.com.au/how-we-used-category-theory-to-solve-a-problem-in-java/)
* [Adjoint Triples](http://comonad.com/reader/2016/adjoint-triples/)
* [Category Theory for Scientists (Old Version)](http://ocw.mit.edu/courses/mathematics/18-s996-category-theory-for-scientists-spring-2013/textbook/MIT18_S996S13_textbook.pdf)
* [How to Bake 'How to Bake Pi': Reflections on Making Abstract Math Palatable](https://www.youtube.com/watch?v=h2p68JjSUH0)
* [String diagram による圏論まとめ](http://mbps.hatenablog.com/entry/2016/03/26/020000)
* [ekmett/categories](https://github.com/ekmett/categories)
* [Applicative Functors with Strings](https://github.com/okomok/strcat/blob/master/out/strapp.pdf)
* [Adjunctions](https://bartoszmilewski.com/2016/04/18/adjunctions/)
* [Basic Category Theory](http://www.staff.science.uu.nl/~ooste110/syllabi/catsmoeder.pdf)
* [An Introduction CATEGORY THEORY in for easy movements](http://www.cs.man.ac.uk/~hsimmons/BOOKS/CatTheory.pdf)
* [Introduction to Categories and Categorical Logic](http://www.cs.ox.ac.uk/people/bob.coecke/AbrNikos.pdf)
* [Categorification of Fourier Theory](https://www.youtube.com/watch?v=w3f8KEcv4RE&feature=youtu.be)

###CPL
* [圏論プログラミング言語 CPL](http://mandel59.hateblo.jp/entry/2015/02/02/110621)
* [圏論プログラミング言語CPL入門](http://solorab.net/blog/2015/06/10/introduction-to-categorical-programming-language-cpl/)
