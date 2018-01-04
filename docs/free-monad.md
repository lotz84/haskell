## Free Monad
* [The free package](http://hackage.haskell.org/package/free)

```haskell
data Free f a = Pure a | Free (f (Free f a))

instance Functor f => Monad (Free f) where
  return = Pure
  Free x >>= f = Free (fmap (>>= f) x)
  Pure x >>= f = f x
```

* [Why free monads matter](http://www.haskellforall.com/2012/06/you-could-have-invented-free-monads.html)
* [Freeモナドって何なのさっ！？](http://d.hatena.ne.jp/its_out_of_tune/20121111/1352632815)
* [そろそろFreeモナドに関して一言いっとくか](http://d.hatena.ne.jp/fumiexcel/20121111/1352614885)
* [Asymptotic Improvement of Computations over Free Monads](http://www.janis-voigtlaender.eu/papers/AsymptoticImprovementOfComputationsOverFreeMonads.pdf)
* [Reflection without Remorse](http://homepages.cwi.nl/~ploeg/papers/zseq.pdf)
  * [Haskell 2014: Reflection without Remorse: Revealing a hidden sequence to speed up monadic reflection](https://www.youtube.com/watch?v=_XoI65Rxmss)
* [自由モノイドとFreeモナド](http://d.hatena.ne.jp/hiratara/20130525/1369495124)
* [Free monads are free](http://mbps.hatenablog.com/entry/2014/07/08/201210)
* [Free monad](http://mbps.hatenablog.com/entry/2014/06/19/190518)
* [Category of monads](http://mbps.hatenablog.com/entry/2014/06/26/123223)
* [What is the difference between free monads and free monoids?](http://www.reddit.com/r/haskell/comments/2znhjk/what_is_the_difference_between_free_monads_and/)
* [Interpreting Free Monads of Functor Sums](https://gist.github.com/avieth/334201aa341d9a00c7fc)
* [Reasoning about Errors in Free Monads and Their Interpreters](http://aaronlevin.ca/post/122079863187/reasoning-about-errors-in-free-monads-and-their)
* [Free Monads from Functors from GADTs](http://jstimpfle.de/fun/free-monads-gadts.html)
* [Functional Pearl: A Smart View on Datatypes](http://www.fceia.unr.edu.ar/~mauro/pubs/smartviews/smartviews.pdf)
* [FreeモナドとTagless FinalによるDependency InjectionのためのDSL](http://qiita.com/yyu/items/377513f17fec536b562e)
* [Freeモナドで領域特化言語を作るとプリティミューテーション](http://qiita.com/hiruberuto/items/3d55b0e54565dbb286a7)
* [Freer Monads, More Extensible Effects](http://okmij.org/ftp/Haskell/extensible/more.pdf)
* [Recursion Excursion](http://www.parsonsmatt.org/programming/2015/09/24/recursion.html)
* [Free and Freer Monads: Putting Monads Back into Closet](http://okmij.org/ftp/Computation/free-monad.html)
* [The free-concurrent package](https://hackage.haskell.org/package/free-concurrent)
* [A Tour Of Some Useful Recursive Types](https://medium.com/@jaredtobin/a-tour-of-some-useful-recursive-types-8fa8e423b5b9)
* [A Modern Architecture for FP](http://degoes.net/articles/modern-fp/)
* [van Laarhoven Free Monad](http://r6.ca/blog/20140210T181244Z.html)
* [Extensible Effects in the van Laarhoven Free Monad](http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad)
* [Free play, part one](http://therning.org/magnus/posts/2016-01-13-000-free-play--part-one.html)
* [Free play, part two](http://therning.org/magnus/posts/2016-01-15-000-free-play--part-two.html)
* [Free play, part three](http://therning.org/magnus/posts/2016-01-17-000-free-play--part-three.html)
* [Yield for Effects](https://awelonblue.wordpress.com/2016/01/04/yield-for-effects/)
* [Freer play with effects](http://therning.org/magnus/posts/2016-01-24-000-freer-play-with-effects.html)
* [Free, take 2](http://therning.org/magnus/posts/2016-03-16-000-free--take-2.html)
* [Applicative Effects in Free Monads](http://elvishjerricco.github.io/2016/04/08/applicative-effects-in-free-monads.html)
* [More on Applicative Effects in Free Monads](http://elvishjerricco.github.io/2016/04/13/more-on-applicative-effects-in-free-monads.html)
* [Free, take 2](http://therning.org/magnus/posts/2016-06-18-free--take-2.html)
* [FreerモナドとCoyonedaについて](http://qiita.com/masaki_mori/items/afb9696cac2476f0981c)
* [[Haskell-cafe] A proof that the list monad is not a free monad](https://mail.haskell.org/pipermail/haskell-cafe/2017-January/126026.html)
* [Jeremy Mikkola - Cheatsheet: Free Monad](http://jeremymikkola.com/posts/2017_07_11_free_monad_cheatsheet.html)
* [Free Me — Exploring the Free Data Type](https://medium.com/@fintan.halpenny/free-me-exploring-the-free-data-type-c863499a82f8)
* [Free Monadic Parser](http://myuon-myon.hatenablog.com/entry/2017/06/26/174730)
* [What does Free buy us?](http://www.parsonsmatt.org/2017/09/22/what_does_free_buy_us.html)
* [Free monad considered harmful](https://markkarpov.com/post/free-monad-considered-harmful.html)
* [Optimising free monad programs using Plated](https://qfpl.io/posts/optimising-free-with-plated/)
* [Free Monads: from the basics to the implementation of composable and effectful stream processing](https://deque.blog/2017/11/13/free-monads-from-basics-up-to-implementing-composable-and-effectful-stream-processing/)
* [Free Monads: from the basics to the implementation of composable and effectful stream processing – Deque](https://deque.blog/2017/11/13/free-monads-from-basics-up-to-implementing-composable-and-effectful-stream-processing/)

### Coyoneda
* [Loop School - Coyoneda](http://school.looprecur.com/?video=122708005)

```haskell
data Coyoneda f a where
    Coyoneda :: (b -> a) -> (f b) -> Coyoneda f a

instance Functor (Coyoneda f) where
    fmap f (Coyoneda g fb) = Coyoneda (f . g) fb
```

抽象データ型からファンクタを作ることができる。Freeと組み合わせれば手軽にモナド(DSL)が手に入る。

```haskell
data Proc a = Action1 a | Action2 a | Action3 a

act1 = Free $ Coyoneda id (Action1 (Pure ()))
act2 = Free $ Coyoneda id (Action2 (Pure ()))
act3 = Free $ Coyoneda id (Action3 (Pure ()))

runProc :: Free (Coyoneda Proc) () -> IO ()
runProc (Pure ()) = putStrLn "end"
runProc (Free (Coyoneda f act)) = case act of
    Action1 a -> putStrLn "act1" >> runProc (f a)
    Action2 a -> putStrLn "act2" >> runProc (f a)
    Action3 a -> putStrLn "act3" >> runProc (f a)

proc :: Free (Coyoneda Proc) ()
proc = do
    act1
    act2
    act3

main = runProc proc
```

* [Step by Step / Deep explain: The Power of (Co)Yoneda (preferably in scala) through Coroutines](http://stackoverflow.com/questions/24000465/step-by-step-deep-explain-the-power-of-coyoneda-preferably-in-scala-throu#24006085)
* [Yoneda principle](http://mbps.hatenablog.com/entry/2015/02/28/055025)
* [Co-Yoneda lemma](http://mbps.hatenablog.com/entry/2014/04/05/002411)
* [EndによるYoneda lemma](http://mbps.hatenablog.com/entry/2014/04/04/044134)
* [(Co)Yoneda reduction for free](http://mbps.hatenablog.com/entry/2014/04/12/074615)
* [Co-Yoneda lemma in colimits](http://mbps.hatenablog.com/entry/2014/09/30/150836)
* [Free Monads for Less (Part 2 of 3): Yoneda](http://comonad.com/reader/2011/free-monads-for-less-2/)
* [Closure Conversion as CoYoneda](http://prl.ccs.neu.edu/blog/2017/08/28/closure-conversion-as-coyoneda/)

```haskell
newtype Natural f g = Natural (forall x. f x -> g x)

yoneda :: Functor f => f a -> Natural ((->) a) f
yoneda f = Natural $ \ax -> fmap ax f
```

<https://twitter.com/fumieval/status/576349394724765697>

### Operational Monad
* [operational](https://hackage.haskell.org/package/operational)
* [Freeモナドを超えた！？operationalモナドを使ってみよう](http://fumieval.hatenablog.com/entry/2013/05/09/223604)
* [Operational monad](http://mbps.hatenablog.com/entry/2014/07/10/010000)
* [09. Operationalモナド](https://sites.google.com/site/toriaezuzakki/haskell/operational)
* [Yoneda lemmaとOperational Monad](http://myuon-myon.hatenablog.com/entry/2013/06/09/135407)
* Operationalモナドは任意のモナドを実装できる [StateT s IO a](https://gist.github.com/lotz84/ec6b7cb737f12211ebd3)
* [Examining Hackage: operational](http://jozefg.bitbucket.org/posts/2014-12-25-operational.html)
* [今のところ比較的簡単なモナドの作り方](http://fumieval.hatenablog.com/entry/2016/04/08/215045)

### Ideal Monad
* [An introduction to ideal monads](https://theorylunch.wordpress.com/2012/11/08/an-introduction-to-ideal-monads/)
* [究極のモナド「Idealモナド」を垣間見る](http://fumieval.hatenablog.com/entry/2013/01/04/110339)
* [究極のモナド「Idealモナド」を垣間見る(続/その0)](http://fumieval.hatenablog.com/entry/2013/01/07/113221)
* [What is the correct definition of ideal monads?](http://theorylunch.wordpress.com/2012/11/22/what-is-the-correct-definition-of-ideal-monads/)

### Cofree
* [Free for DSLs, cofree for interpreters](http://dlaing.org/cofun/posts/free_and_cofree.html)
* [Cofun with Cofree Comonads](https://yow.eventer.com/yow-lambda-jam-2015-1305/cofun-with-cofree-comonads-by-david-laing-1891)
* [Marcin Szamotulski - Composing Cofree Interpreters](https://www.youtube.com/watch?v=klpKIs84_bU&feature=youtu.be)

## EDSL
* [Domain-specific Languages and Code Synthesis Using Haskell](http://dl.acm.org/citation.cfm?id=2617811)
* [Jurriaan Hage - Making Embedded Domain Specific Languages a Practical Reality](https://www.youtube.com/watch?v=bPrM1gONdII)
* [UoY CS - Folding Domain-Specific Languages - Prof. Jeremy Gibbons](https://www.youtube.com/watch?v=crMTryrqkog)
* [Writing a Search DSL, Part 1](https://blog.cppcabrera.com/posts/56-writing-a-search-dsl-1.html)
* [Haskell, Startups, and Domain Specific Languages](https://www.youtube.com/watch?v=R4nLSxCKkNw)
* [Compilation as a Typed EDSL-to-EDSL Transformation](http://fun-discoveries.blogspot.jp/2016/03/compilation-as-typed-edsl-to-edsl.html)
* [Sharing in Haskell EDSLs](http://jtobin.ca/sharing-in-haskell-edsls)
* [Ryan Newton - DSL Embedding in Haskell [1/2] - YouTube](https://www.youtube.com/watch?v=VIX4_XI3JAE)
* [Rewriting a Shallow DSL using a GHC Compiler Extension](https://ku-fpg.github.io/files/Grebe-17-Transformations.pdf)
* [Hannah – a DSL for parsing and generating files and network traces](http://abau.org/hannah)

### The Expression Problem
* [The Expression Problem - Philip Wadler, 12 November 1998](http://www.daimi.au.dk/~madst/tool/papers/expression.txt)
* [The Expression Problem](http://maoe.hatenadiary.jp/entry/20101214/1292337923)
* [Data types à la carte](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.101.4131)
* [C9 Lectures: Dr. Ralf Lämmel - Advanced Functional Programming - The Expression Problem](https://channel9.msdn.com/Shows/Going+Deep/C9-Lectures-Dr-Ralf-Laemmel-Advanced-Functional-Programming-The-Expression-Problem)
* [The Expression Problem](http://homepages.inf.ed.ac.uk/wadler/papers/expression/expression.txt)

### Tagless Final
* [Typed Tagless Final Interpreters](http://okmij.org/ftp/tagless-final/course/lecture.pdf)
* [Typed tagless-final interpretations: Lecture notes](http://okmij.org/ftp/tagless-final/course/)
* [Reducing boilerplate in finally tagless style](https://ro-che.info/articles/2016-02-03-finally-tagless-boilerplate)
* [Typed Tagless Final Bioinformatics](https://www.youtube.com/watch?v=dj4j_3M4K-0)
* [Free monads are very much `initial’.  Compare the final approach: http://okmij.o… \| Hacker News](https://news.ycombinator.com/item?id=10810309)

## Free Arrow
* [Building free arrows from components](http://blog.sigfpe.com/2017/01/building-free-arrows-from-components.html)
