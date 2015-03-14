<https://www.haskell.org/>

#Haskell

> 1990 – サイモン・ペイトン・ジョーンズ、ポール・フダック、フィリップ・ワドラー、デミ・ムーアの夫、ならびに動物の倫理的扱いを求める人々によって構成される委員会により、遅延評価を行う純粋な関数型言語Haskellが作られる。副作用の制御に使われるモナドの複雑さのため、Haskellには抵抗を持つ人々がいる。ワドラーは批判を和らげるために、こう語っている。「モナドは単なる自己関手の圏におけるモノイド対象だよ。何か問題でも？」

[不完全にしておよそ正しくないプログラミング言語小史](http://www.aoky.net/articles/james_iry/brief-incomplete-and-mostly-wrong.htm)

```haskell
-- クイックソート
quicksort [] = []
quicksort (p:xs) = quicksort [ x | x <- xs, x <= p] ++ [p] ++ quicksort [ x | x <- xs, x > p]

-- 素数生成
prime n = primes !! n
primes = sieve [2..]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
-- http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

-- フィボナッチ数
fib n = fibs !! n
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
```

出典: [Haskellの神話](http://d.hatena.ne.jp/kazu-yamamoto/20100624/1277348961)

> 関数プログラミングを習得するには，これまで命令プログラミングで培った技術はいったん忘れ，真っ白な気持ちで臨む必要があります。関数型の山を登るためには，命令型の山を降りなければなりません。

出典: [第1章　関数プログラミングは難しくない！](http://gihyo.jp/dev/feature/01/functional-prog/0001)

* [関数型プログラミングとは結局何なのか](http://blog.kokuyouwind.com/archives/808)
* [なぜ関数プログラミングは重要か](http://www.sampou.org/haskell/article/whyfp.html)
* [函数プログラミングのエッセンスと考え方](http://www.itpl.co.jp/tech/func/essense_of_fp(sea0305).pdf)
* [Haskellの講義に関するQ&A](http://d.hatena.ne.jp/kazu-yamamoto/20111124/1322100759)
* [A History of Haskell: Being Lazy With Class](http://haskell.cs.yale.edu/wp-content/uploads/2011/02/history.pdf)
   * <https://www.youtube.com/watch?v=3bjXGrycMhQ>
* [経験15年のOCaml ユーザーが Haskell を仕事で半年使ってみた](http://d.hatena.ne.jp/camlspotter/20101212/1292165692)

> このプログラマ氏がパワーのスペクトルを見下ろしている時、 彼にはそうしているという自覚がある。「ほげ」よりも力の弱い言語は、 明らかに力が弱い。彼が慣れ親しんだ機能が無いからだ。 しかし、このプログラマ氏が反対の方向に目を転じた時、彼は自分が見上げているのだということに 気付かないのだ。彼が目にするのは、変てこりんな言語ばかり。 多分、それらは「ほげ」と同じくらいパワフルなんだろうけど、 どういうわけかふわふわしたおまけがいろいろついているんだ、と思うだろう。 彼にとっては「ほげ」で十分なのだ。何故なら彼は「ほげ」で考えているから。

出典: <http://practical-scheme.net/trans/beating-the-averages-j.html>

> One very interesting comparison is that lazy evaluation is to the CPU what garbage collection is to memory.

出典: <http://scott.sauyet.com/Javascript/Talk/2014/01/FuncProgTalk/#slide-40>

##環境構築
* [ghc](https://www.haskell.org/ghc/)
* [cabal](https://www.haskell.org/cabal/)

```shell
$ cabal install hlint
$ hlint code.hs
```

[hlint](https://hackage.haskell.org/package/hlint)

```shell
$ cabal install pointfree
$ pointfree "expression"
```

[pointfree](https://hackage.haskell.org/package/pointfree)

##Ecosystem
* [Hackage](http://hackage.haskell.org/)
* [Hoogle](https://www.haskell.org/hoogle/)
* [Hayoo!](http://hayoo.fh-wedel.de/)

###Group
* [New York Haskell Users Group](http://www.meetup.com/NY-Haskell/)
* [HaskellJP](http://wiki.haskell.jp/)
* [haskell-ja](http://chaton.practical-scheme.net/haskell-ja/)
* [Google+](https://plus.google.com/communities/104818126031270146189)
* [Facebook](https://www.facebook.com/groups/programming.haskell)
* [Reddit](http://www.reddit.com/r/haskell/)

###Conference
* [JSSST-SIGPPL](http://ppl.jssst.or.jp/)
* [International Conference on Functional Programming](http://www.icfpconference.org/)

##基本
* [Try Haskell](https://tryhaskell.org/)
* [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/chapters)
  * [video](https://www.youtube.com/watch?v=NBKnY7Z_w3I&index=1&list=PLPqPwGvHPSZB-urE6QFjKYt6AGXcZqJUh)
* [Real World Haskell](http://book.realworldhaskell.org/read/)
* [Basics](http://www.scs.stanford.edu/14sp-cs240h/slides/basics-slides.html)
* 🎥 [Haskell Course by Philip Wadler](https://www.youtube.com/watch?v=AOl2y5uW0mA&list=PLtRG9GLtNcHBv4cuh2w1cz5VsgY6adoc3)
* [What I Wish I Knew When Learning Haskell](http://www.stephendiehl.com/what/)
* [Haskell from Scratch](https://www.youtube.com/watch?v=zZ_nI9E9g0I&list=PLxj9UAX4Em-Ij4TKwKvo-SLp-Zbv-hB4B&index=1)
* [Adventures in Haskell](https://www.youtube.com/watch?v=9AllRc64pVE&list=PL_xuff3BkASMOzBr0hKVKLuSnU4UIinKx)
* [Sed implementation in Haskell](https://www.youtube.com/watch?v=0I90MTip-OQ&list=PLUQzXLQ6jvHL_k3QOMKXehVoZdk-sKtHd)
* [Haskell Tutorial - LazyCasts](https://www.youtube.com/watch?v=5XLTRuKoOtM&index=2&list=PLvj5k87ljYYHwOOcdGvS3qi85IvjOW--8)

> ゴルフでもトリッキーなコードでもなく、 計算の仕方を変えるだけでより直接的に、シンプルに、コードが短くなりました。 必要なのはやりたいことが実際にはどのような計算なのかということを認識することです。 難しく考えないようにしましょう。

出典: [非決定計算としてのリストモナド](http://tanakh.jp/posts/2012-02-22-list-monad.html)

|記号|発音|
|:---|:---|
|`=`|is|
|`==`|equals|
|`()`|unit|
|`:`|cons|
|`[]`|nil|
|`++`|append|
|`<*>`|applied over|
|`>>=`|bind|
|`>>`|then, sequence|
|`<-`|drawn from, from|

出典: [Pronunciation](https://www.haskell.org/haskellwiki/Pronunciation)

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

```haskell
-- Freshman Haskell programmer
fac n = if n == 0 
           then 1
           else n * fac (n-1)

-- Tenured professor
fac n = product [1..n]
```

出典: [The Evolution of a Haskell Programmer](http://www.willamette.edu/~fruehr/haskell/evolution.html)

##IO Monad

```haskell
module MyIO (MyIO, myPutChar, myGetChar, convert) where

type Input = String
type Remainder = String
type Output = String

data MyIO a = MyIO (Input -> (a, Remainder, Output))

apply :: MyIO a -> Input -> (a, Remainder, Output)
apply (MyIO f) inp = f inp

myPutChar :: Char -> MyIO ()
myPutChar c = MyIO (\inp -> ((), inp, [c]))

myGetChar :: MyIO Char
myGetChar = MyIO (\(ch:rem) -> (ch, rem, ""))

instance Monad MyIO where
  return x = MyIO (\inp -> (x, inp, ""))
  m >>= k  = MyIO (\inp ->
               let (x, rem1, out1) = apply m inp in
               let (y, rem2, out2) = apply (k x) rem1 in
               (y, rem2, out1 ++ out2))

convert :: MyIO () -> IO ()
convert m = interact (\inp ->
              let (x, rem, out) = apply m inp in
              out)
```

出典: [18- Haskell course 21/Nov/2011 IO and Monads 1](https://www.youtube.com/watch?v=XovXFGWPSRE)

##関数合成
> We shall suppose that functional application is more binding than any other operator, so f x ++ y means (f x) ++ y and not f (x ++ y).

出典: [An Introduction to the Theory of Lists](https://www.cs.ox.ac.uk/files/3378/PRG56.pdf)

> Haskell 初心者は括弧ばかりの Lisp のようなコードを書く。中級者になると、($) が多くなる。上級者(言い過ぎか？)になると、($) が消えて、(.) が多くなる。

出典: [関数合成の妙技](http://d.hatena.ne.jp/kazu-yamamoto/20100702/1278036842)

###ポイントフリー
* [ポイントフリースタイル入門](http://d.hatena.ne.jp/melpon/20111031/1320024473)
* [Haskellのフクロウ ((.)$(.))](http://uid0130.blogspot.jp/2014/11/haskell_17.html)

##パターンマッチ
* [Pattern matching](http://mbps.hatenablog.com/entry/2014/10/04/010000)

##再帰
* [再帰ドリル](https://github.com/kazu-yamamoto/recursion-drill)

> * 正格データ（数値）を生成するには末尾再帰
> * 遅延データ（リスト）を生成するには普通の再帰

出典: <http://d.hatena.ne.jp/kazu-yamamoto/20091122/1258899591>

```haskell
> foldl (+) 0 [1,2,3]
1.  foldl (+) 0 [1, 2, 3]
2.  foldl (+) 0 (1 : [2, 3])
3.  foldl (+) ((+) 0 1) [2, 3]
4.  foldl (+) ((+) 0 1) (2 : [3])
5.  foldl (+) ((+) ((+) 0 1) 2) [3]
6.  foldl (+) ((+) ((+) 0 1) 2) (3 : [])
7.  foldl (+) ((+) ((+) ((+) 0 1) 2) 3) []
8.  (+) ((+) ((+) 0 1) 2) 3
9.  1 + 2 + 3
10. 3 + 3
11. 6

> foldr (+) 0 [1,2,3]
1.  foldr (+) 0 [1, 2, 3]
2.  foldr (+) 0 (1 : [2, 3])
3.  1 + foldr (+) 0 [2, 3]
4.  1 + foldr (+) 0 (2 : [3])
5.  1 + (2 + foldr (+) 0 [3])
6.  1 + (2 + foldr (+) 0 (3 : []))
7.  1 + (2 + (3 + foldr (+) 0 []))
8.  1 + (2 + (3 + 0))
9.  1 + (2 + 3)
10. 1 + 5
11. 6
```

[stepeval](http://bm380.user.srcf.net/cgi-bin/stepeval.cgi)

##データ構造
* [Purely Functional Data Structures](http://www.cs.cmu.edu/~rwh/theses/okasaki.pdf)
* [bytestring](https://hackage.haskell.org/package/bytestring)
  * [A guided tour through the bytestring library](http://meiersi.github.io/HaskellerZ/meetups/2012%2001%2019%20-%20The%20bytestring%20library/slides.html)
* [array](https://hackage.haskell.org/package/array)
  * [すごい配列楽しく学ぼう](http://www.slideshare.net/xenophobia__/ss-14558187)

##型
* [A Route To Learning The Haskell Type System](http://www.colourcoding.net/blog/archive/2015/03/02/a-route-to-learning-the-haskell-type-system.aspx)

###Phantom Type
* [型安全なリストを作るのです(｀・ω・´) ～ その1、Phantom Type（幽霊型）入門ですー＞ω＜](https://kagamilove0707.github.io/programming/2014/02/20/about-phantom-type/)
* [Phantoms](http://www.scs.stanford.edu/14sp-cs240h/slides/phantoms-slides.html)
* [What is the purpose of `Data.Proxy`?](http://stackoverflow.com/questions/22116363/what-is-the-purpose-of-data-proxy)

###代数的データ型
* http://nineties.github.io/category-seminar/7.html#/43
* [The Algebra of Programming in Haskell](http://www.cs.ox.ac.uk/research/pdt/ap/dgp/workshop2004/oliveira.pdf)

####一般化代数的データ型
* [一般化代数データ型(GADT)](http://www.kotha.net/ghcguide_ja/latest/data-type-extensions.html#gadt)
* [GADTs使ってみた](http://faithandbrave.hateblo.jp/entry/20111201/1322718742)
* [型安全なリストを作るのです(｀・ω・´) ～ その2、GADTsと依存型＞ω＜](https://kagamilove0707.github.io/programming/2014/02/21/gadts-and-dependent-type/)
* [GADTs - Haskell for all](http://www.haskellforall.com/2012/06/gadts.html)
* [Haskell/GADT](http://en.wikibooks.org/wiki/Haskell/GADT)
* [GADTs](http://mbps.hatenablog.com/entry/2014/10/03/010000)

##型クラス
* [The Typeclassopediaを訳しました](http://snak.tdiary.net/20091020.html)
* [When to use a type class, when to use a type](http://stackoverflow.com/questions/12286315/when-to-use-a-type-class-when-to-use-a-type)
* [Type classes: an exploration of the design space](http://courses.cs.washington.edu/courses/cse590p/06sp/multi.pdf)
* [Type Classes with Functional Dependencies](http://web.cecs.pdx.edu/~mpj/pubs/fundeps-esop2000.pdf)
* [Edward Kmett - Type Classes vs. the World](https://www.youtube.com/watch?v=hIZxTQP1ifo)
* [Data.Foldable](https://hackage.haskell.org/package/base/docs/Data-Foldable.html)
* [Data.Traversable](https://hackage.haskell.org/package/base/docs/Data-Traversable.html)
  * [Traversable functor](http://mbps.hatenablog.com/entry/2014/09/22/100000)
* [Data.Distributive](hackage.haskell.org/package/distributive/docs/Data-Distributive.html)

##Functor
* [Are Functor instances unique?](http://stackoverflow.com/questions/19774904/are-functor-instances-unique#19775139)
  * [fmapの一意性](http://mbps.hatenablog.com/entry/2014/07/17/132835)

##Applicative
* [Applicative functor](http://mbps.hatenablog.com/entry/2014/07/16/200206)

##Monad
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

-- Monad laws
{-
  return a >>= f  == f a
  m >>= return    == m
  (m >>= f) >>= g == m >>= (\x -> f x >>= g)
-}
```

* [All About Monads](https://wiki.haskell.org/All_About_Monads)

###Maybe Monad

```haskell
instance Monad Maybe where
  return = Just
  Nothing >>= _ = Nothing
  Just x >>= f  = f x
```

###List Monad

```haskell
instance Monad [] where
  return x = [x]
  xs >>= f = concat (map f xs)
```

* [リストモナドの動作原理を考える](http://d.hatena.ne.jp/kazu-yamamoto/20090313/1236935179)
* [guard の動作原理を考える](http://d.hatena.ne.jp/kazu-yamamoto/20090401/1238555013)

###Error monad
* [Error monad](http://mbps.hatenablog.com/entry/2014/12/13/123751)

###Reader Monad

```haskell
newtype Reader e a = Reader { runReader :: (e -> a) }
 
instance Monad (Reader e) where 
    return a         = Reader $ \e -> a 
    (Reader r) >>= f = Reader $ \e -> runReader (f (r e)) e
```

* [Reader monad](http://mbps.hatenablog.com/entry/2014/11/08/010000)

###Writer Monad

```haskell
newtype Writer w a = Writer { runWriter :: (a,w) } 
 
instance (Monoid w) => Monad (Writer w) where 
    return a             = Writer (a,mempty) 
    (Writer (a,w)) >>= f = let (a',w') = runWriter $ f a in Writer (a',w `mappend` w')
```

* [Writer monad](http://mbps.hatenablog.com/entry/2014/11/06/055458)

###State Monad

```haskell
newtype State s a = State { runState :: s -> (a, s) }

instance Monad (State s) where
  return a = State $ \s -> (a, s)
  m >>= k  = State $ \s ->
               let (a, s') = runState m s
               in runState (k a) s'
```

* [Haskellでスタックを利用した加減乗除の計算機を作ってみる](http://kzfm.github.io/laskell/stackCalc.html)

###Free Monad
* [The free package](http://hackage.haskell.org/package/free)

```haskell
data Free f a = Pure a | Free (f (Free f a))

instance Functor f => Monad (Free f) where
  return = Pure
  Free x >>= f = Free (fmap (>>= f) x)
  Pure x >>= f = f x
```

既存のファンクタを使ってモナドを作ることができる。データ構造とモナドの構文を使って木を作ることができ、それを走査すれば簡単にDSLを作ることができる。この場合ファンクタのパラメータは後続する処理を表す。

* [Why free monads matter](http://www.haskellforall.com/2012/06/you-could-have-invented-free-monads.html)
* [Freeモナドって何なのさっ！？](http://d.hatena.ne.jp/its_out_of_tune/20121111/1352632815)
* [そろそろFreeモナドに関して一言いっとくか](http://d.hatena.ne.jp/fumiexcel/20121111/1352614885)
* [Asymptotic Improvement of Computations over Free Monads](http://www.janis-voigtlaender.eu/papers/AsymptoticImprovementOfComputationsOverFreeMonads.pdf)
* [自由モノイドとFreeモナド](http://d.hatena.ne.jp/hiratara/20130525/1369495124)
* [Free monads are free](http://mbps.hatenablog.com/entry/2014/07/08/201210)
* [Free monad](http://mbps.hatenablog.com/entry/2014/06/19/190518)
* [Category of monads](http://mbps.hatenablog.com/entry/2014/06/26/123223)

####Coyoneda

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

```haskell
newtype Natural f g = Natural (forall x. f x -> g x)

yoneda :: Functor f => f a -> Natural ((->) a) f
yoneda f = Natural $ \ax -> fmap ax f
```

<https://twitter.com/fumieval/status/576349394724765697>

####Operational Monad
* [Freeモナドを超えた！？operationalモナドを使ってみよう](http://fumieval.hatenablog.com/entry/2013/05/09/223604)
* [Operational monad](http://mbps.hatenablog.com/entry/2014/07/10/010000)

###Stream Monad

```haskell
data Stream a = Cons a (Stream a)

head (Cons x _)  = x
tail (Cons _ xs) = xs

instance Functor Stream where
  fmap f (Cons x xs) = Cons (f x) (fmap f xs)

diag (Cons xs xss) = Cons (head xs) (diag (fmap tail xss))

instance Monad Stream where
  return x = Cons x (return x)
  xs >>= f = diag (fmap f xs)
```

* [The stream monad](http://patternsinfp.wordpress.com/2010/12/31/stream-monad/)

###Indexed Monad
* [What is indexed monad?](http://stackoverflow.com/questions/28690448/what-is-indexed-monad)
* [Indexed Monadの世界](http://fumieval.hatenablog.com/entry/2013/05/04/144840)

###Ideal Monad
* [究極のモナド「Idealモナド」を垣間見る](http://fumieval.hatenablog.com/entry/2013/01/04/110339)
* [究極のモナド「Idealモナド」を垣間見る(続/その0)](http://fumieval.hatenablog.com/entry/2013/01/07/113221)
* [What is the correct definition of ideal monads?](http://theorylunch.wordpress.com/2012/11/22/what-is-the-correct-definition-of-ideal-monads/)

###Monad Transformer
* [モナドトランスフォーマー・ステップ・バイ・ステップ](http://bicycle1885.hatenablog.com/entry/2012/12/08/165236)
* [Composing Monads Using Coproducts](http://www.informatik.uni-bremen.de/~cxl/papers/icfp02.pdf)
* [monad-levels](http://hackage.haskell.org/package/monad-levels)
  * [Monadic yak shaving](https://ivanmiljenovic.wordpress.com/2015/02/02/monadic-yak-shaving/)
* [Extensible Effects -An Alternative to Monad Transformers-](http://www.cs.indiana.edu/~sabry/papers/exteff.pdf)
* [A Gentle Introduction to Monad Transformers](https://github.com/kqr/gists/blob/master/articles/gentle-introduction-monad-transformers.md)
* [Monad transformer](http://mbps.hatenablog.com/entry/2014/06/28/033234)
* [Adjunction からの monad transformer](http://mbps.hatenablog.com/entry/2014/11/25/220948)
* [Monad からの monad transformer](http://mbps.hatenablog.com/entry/2014/12/11/112455)

##継続
* [Control.Monad.Cont](https://hackage.haskell.org/package/mtl/docs/Control-Monad-Cont.html)
* [Continuation monad](http://mbps.hatenablog.com/entry/2014/11/13/034424)
* [CPS monad](http://mbps.hatenablog.com/entry/2014/07/14/022058)

> 文献を紐解くと、 継続とは「これから行われるであろう計算をパッケージ化したもの」とある。

出典: [なんでも継続](http://practical-scheme.net/docs/cont-j.html)

* [The Mother of all Monads](http://blog.sigfpe.com/2008/12/mother-of-all-monads.html)
* [Haskell/Continuation passing style](http://en.wikibooks.org/wiki/Haskell/Continuation_passing_style)
* [Representing Monads](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.43.8213)
* [shift/reset プログラミング入門](http://pllab.is.ocha.ac.jp/~asai/cw2011tutorial/main-j.pdf)

```haskell
-- shift/reset for the Cont monad
shift :: ((a -> Cont s r) -> Cont r r) -> Cont r a
shift e = Cont $ \k -> e (return . k) `runCont` id
 
reset :: Cont a a -> Cont r a 
reset e = return $ e `runCont` id
```

出典: [MonadCont done right](https://www.haskell.org/haskellwiki/MonadCont_done_right)

> The Yoneda embedding is familiar in category theory. The continuation passing transform is familiar in computer programming.
> They’re the same thing! Why doesn’t anyone ever say so?

出典: [The Continuation Passing Transform and the Yoneda Embedding](https://golem.ph.utexas.edu/category/2008/01/the_continuation_passing_trans.html)

* [CPS（継続渡し方式）変換をJavaScriptで説明してみるべ、ナーニ、たいしたことねーべよ](http://d.hatena.ne.jp/m-hiyama/20080116/1200468797)

###型レベルプログラミング
* [ロジックパズルの解説](http://notogawa.hatenablog.com/entry/2014/12/06/181216)
* [定理証明系 Haskell](http://konn-san.com/prog/2013-advent-calendar.html)
* [プログラミング Coq 〜 絶対にバグのないプログラムの書き方 〜](http://www.iij-ii.co.jp/lab/techdoc/coqt/)
* [Testing a type for (Eq a) in Haskell](http://stackoverflow.com/questions/28799005/testing-a-type-for-eq-a-in-haskell)
* [Constraint Kinds for GHC](http://blog.omega-prime.co.uk/?p=127)
* [Inductive family of types](http://mbps.hatenablog.com/entry/2014/09/28/035245)

```haskell
data HList (as :: [*]) where
  HNil :: HList '[]
  HCons :: a -> HList xs -> HList (a ': xs)
```

出典: [DataKinds 言語拡張を使って Typed Heterogeneous List とその基本操作を実装してみた](http://hyone.hatenablog.com/entry/2012/12/26/181105)

####Functional dependencies
* [Functional dependencies](https://www.haskell.org/haskellwiki/Functional_dependencies)
* [24 Days of GHC Extensions: Functional Dependencies](https://ocharles.org.uk/blog/posts/2014-12-14-functional-dependencies.html)
* [Typed type-level programming in Haskell, part I: functional dependencies](https://byorgey.wordpress.com/2010/06/29/typed-type-level-programming-in-haskell-part-i-functional-dependencies/)

####Type Families
* [24 Days of GHC Extensions: Type Families](https://ocharles.org.uk/blog/posts/2014-12-12-type-families.html)
* [Fun with type functions](http://research.microsoft.com/en-us/um/people/simonpj/papers/assoc-types/fun-with-type-funs/typefun.pdf)
* [Typed type-level programming in Haskell, part II: type families](https://byorgey.wordpress.com/2010/07/06/typed-type-level-programming-in-haskell-part-ii-type-families/)
* [2 Minute intro to Associated Types / Type Families](http://nattermorphisms.blogspot.jp/2008/10/2-minute-intro-to-associated-types-type.html)
* [Type family](http://mbps.hatenablog.com/entry/2013/05/12/132507)
* [Kind](http://mbps.hatenablog.com/entry/2013/05/14/004510)
* [Singletons](http://mbps.hatenablog.com/entry/2013/05/23/084257)

####Type Operators
* [24 Days of GHC Extensions: Type Operators](https://ocharles.org.uk/blog/posts/2014-12-08-type-operators.html)

##Generic Programming
* [GHC.Generics](http://hackage.haskell.org/package/base/docs/GHC-Generics.html)
* [Datatype-Generic Programming in Haskell](https://skillsmatter.com/skillscasts/3932-a-haskell-lecture-with-leading-expert-andres-loh)
* [Generic programming](http://www.scs.stanford.edu/14sp-cs240h/slides/generic-slides.html)

##メモ化
* [memoize: A memoization library](https://hackage.haskell.org/package/memoize)
* [Memoization](https://www.haskell.org/haskellwiki/Memoization)
* [記憶(memo)する関数](https://www.ipsj.or.jp/07editj/promenade/4608.pdf)

```haskell
memoized_fib :: Int -> Integer
memoized_fib = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = memoized_fib (n-2) + memoized_fib (n-1)
-- Can someone explain the concept behind Haskell's memoization?
-- http://programmers.stackexchange.com/questions/220746/can-someone-explain-the-concept-behind-haskells-memoization
```

##Template Haskell
* [Language.Haskell.TH](http://hackage.haskell.org/package/template-haskell-2.5.0.0/docs/Language-Haskell-TH.html)
* [できる！Template Haskell (完)](http://haskell.g.hatena.ne.jp/mr_konn/20111218/1324220725)

##Record

```haskell
data Circle = Circle { center :: (Double, Double)
                     , radius :: Double
                     }
p :: Circle
p = Circle {center = (1.0, 2.0), radius = 3.0}
-- > center p
-- (1.0, 2.0)
-- > radius p
-- 3.0
```

**レコードの問題点**: 同じモジュールで同じフィールド名を持つレコードを定義できない

* [record](http://hackage.haskell.org/package/record)
  * [Announcing the first class records library](http://nikita-volkov.github.io/record/)

##Lens
* [Kinokkory/lens-japanese](https://github.com/Kinokkory/lens-japanese/wiki)
* [Lenses Are Exactly the Coalgebras for the Store Comonad](http://r6research.livejournal.com/23705.html)
* [Lenses are the coalgebras for the costate comonad](http://patternsinfp.wordpress.com/2011/01/31/lenses-are-the-coalgebras-for-the-costate-comonad/)
* [Lenses](http://www.scs.stanford.edu/14sp-cs240h/slides/lenses-slides.html)
* [Lenses, Folds and Traversals: An Introduction to the Lens Library with Edward Kmett](http://vimeo.com/56063074)
* <https://twitter.com/fumieval/status/563244542300651520>
* [Lensで行こう！](http://myuon-myon.hatenablog.com/entry/20121228/1356708483)
* [Lensで行こう！(2):Isoへの拡張](http://myuon-myon.hatenablog.com/entry/2013/01/06/232142)
* [Lens](http://mbps.hatenablog.com/entry/2014/10/28/152931)

##並列・並行処理
* [できる！並列・並行プログラミング](http://www.slideshare.net/pfi/ss-9780450)
* [Concurrency](http://www.scs.stanford.edu/14sp-cs240h/slides/concurrency-slides.html)
* [Memory](http://www.scs.stanford.edu/14sp-cs240h/slides/memory-slides.html)
* [Beautiful concurrency](http://research.microsoft.com/en-us/um/people/simonpj/papers/stm/beautiful.pdf)
* [async](http://hackage.haskell.org/package/async)
* [A Compositional Theory for STM Haskell](https://vimeo.com/6685355)
* [Programming in the Age of Concurrency: Software Transactional Memory](http://channel9.msdn.com/Shows/Going+Deep/Programming-in-the-Age-of-Concurrency-Software-Transactional-Memory)
* [関数型プログラミング言語における通信記述の型付け](http://ir.nul.nagoya-u.ac.jp/jspui/handle/2237/16436)

##テスト
* [Haskellの単体テスト最前線](https://github.com/kazu-yamamoto/unit-test-example/blob/master/markdown/ja/tutorial.md)
* [Testing](http://www.scs.stanford.edu/14sp-cs240h/slides/testing-slides.html)
* <https://twitter.com/datgame/status/563269982721941505>
* [Functional TDD: A Clash of Cultures](https://www.facebook.com/notes/kent-beck/functional-tdd-a-clash-of-cultures/472392329460303)

###QuickCheck

```haskell
import Data.List
import Test.QuickCheck

prop_sort :: [Int] -> Bool
prop_sort xs = sort xs == sort (sort xs)
```

```shell
$ ghci test.hs
...
Ok, modules loaded: Main.

*Main> quickCheck prop_sort
+++ OK, passed 100 tests.

*Main> verboseCheck prop_sort
Passed:
[]
Passed:
[-1]
Passed:
[6,-2]
Passed:
[5,-3,0,0,-5,-3,-3]
...
+++ OK, passed 100 tests.
```

----
#Haskell inside
##Type Inference
* [An Explanation of Type Inference for ML/Haskell](http://jozefg.bitbucket.org/posts/2015-02-28-type-inference.html)

##GHC
* [栄光のグラスゴーHaskellコンパイルシステム利用の手引き](http://www.kotha.net/ghcguide_ja/latest/)
* [Haskellのコンパイル中に現れるSTGと, GDBで見るC-backendなC--](http://d.hatena.ne.jp/suztomo/20111224/1324718354)
* [Haskellコードの高速化](http://www.kotha.net/hperf/)
* [Naïve Haskell data representation](http://www.scs.stanford.edu/14sp-cs240h/slides/memory-slides.html#(11))
* [Language extensions](http://www.scs.stanford.edu/14sp-cs240h/slides/extensions-slides.html)
* [Haskell Compiler (compiler)](http://www.scs.stanford.edu/14sp-cs240h/slides/ghc-compiler-slides.html)
* [Haskell Compiler (rts)](http://www.scs.stanford.edu/14sp-cs240h/slides/ghc-rts.pdf)
* [The GHC Runtime System](http://ezyang.com/jfp-ghc-rts-draft.pdf)
* [複数のGHCを共存させる](http://d.hatena.ne.jp/kazu-yamamoto/20140415/1397528405)
* [24 Days of GHC Extensions](https://ocharles.org.uk/blog/pages/2014-12-01-24-days-of-ghc-extensions.html)
* [GADTs meet their match](http://research.microsoft.com/en-us/um/people/simonpj/papers/pattern-matching/gadtpm.pdf)
* 🎥 [Dan Doel - Introduction to Low Level Haskell Optimization](https://www.youtube.com/watch?v=McFNkLPTOSY)

###Bang patterms
* [7.18. Bang patterns](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/bang-patterns.html)
* [Bang patterns](https://ghc.haskell.org/trac/haskell-prime/wiki/BangPatterns)

###Proposals
* [Default superclass instances](https://ghc.haskell.org/trac/ghc/wiki/DefaultSuperclassInstances)

----

#実用Haskell
[Haskell 2010 言語報告書](http://www.sampou.org/haskell/haskell2010-report-htja/)

##Parser

```haskell
type Source    = String
type Remainder = String
newtype Parser result = Parser { parse :: Source -> [(result, Remainder)] }
```

* [Monadic Parsing in Haskell](http://www.cs.nott.ac.uk/~gmh/pearl.pdf)
* [構文解析器結合子](https://www.ipsj.or.jp/07editj/promenade/4702.pdf)
   * [モナディック・パーサー](http://d.hatena.ne.jp/kazu-yamamoto/20080920/1221881130)
* [Parsec](http://www.haskell.org/haskellwiki/Parsec)

###コンパイラを作る
* [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours)
* [Implementing a JIT Compiled Language with Haskell and LLVM](http://www.stephendiehl.com/llvm/)
* [Write You a Haskell](http://dev.stephendiehl.com/fun/)

##理想のLazy IOを求めて
* [IO inside](https://www.haskell.org/haskellwiki/IO_inside)

[**The problem**](http://www.scs.stanford.edu/14sp-cs240h/slides/pipes-slides.html#(3))

```haskell
replicateM :: Monad m => Int -> m a -> m [a]
mapM :: Monad m => (a -> m b) -> [a] -> m [b]
sequence :: Monad m => [m a] -> m [a]
```

* Does not work on infinite lists
* You can't consume any results until everything has been processed
* You have to run the entire computation, even if you don't need every result
* This wastes memory by buffering every result

###History
* ✕ Lazy IO
* Deprecated [enumerator](https://hackage.haskell.org/package/enumerator)
* [iteratee](https://hackage.haskell.org/package/iteratee)
* [iterIO](https://hackage.haskell.org/package/iterIO)
* [machines](http://hackage.haskell.org/package/machines)

###io-streams
* [io-streams](http://hackage.haskell.org/package/io-streams)
* <http://yunomu.hatenablog.jp/entry/2013/09/22/160859>

----

> Conduits were created for the Yesod web framework. My understanding is that they were designed to be blazingly fast. Early versions of the library were highly stateful.
> 
> Pipes focus on elegance. They have just one type instead of several, form monad (transformer) and category instances, and are very "functional" in design.

出典: <http://stackoverflow.com/questions/9983840/what-are-the-pros-and-cons-of-enumerators-vs-conduits-vs-pipes>

###Pipes
* [Pipes.Tutorial](https://hackage.haskell.org/package/pipes/docs/Pipes-Tutorial.html)
* [Pipes](http://www.scs.stanford.edu/14sp-cs240h/slides/pipes-slides.html)

###Conduit
* <https://hackage.haskell.org/package/conduit>
* [Conduit Overview](https://www.fpcomplete.com/user/snoyberg/library-documentation/conduit-overview)
* [Simpler conduit library based on monadic folds](http://newartisans.com/2014/06/simpler-conduit-library/)
* [５分で分かるコンジット](http://melpon.org/yesodbookjp/conduit)
* [ConduitとHaskellでネットワークプロキシサーバを作る](http://tanakh.jp/posts/2012-07-01-conduit-0.5.html)
* [Conduitの使い方](http://qiita.com/siphilia_rn/items/f3d8d83496a8eab65274)

###例外処理
* [Haskell での例外処理](http://d.hatena.ne.jp/kazu-yamamoto/20120604/1338802792)
* [Haskellでの例外処理(その2)](http://d.hatena.ne.jp/kazu-yamamoto/20120605/1338871044)

##Web
* [Haskell でソケット通信をやってみる](http://yasutech.blogspot.jp/2012/01/haskell.html)
* [aeson](http://hackage.haskell.org/package/aeson)
* [buffer-builder](https://hackage.haskell.org/package/buffer-builder)

###Client
####Network.HTTP
> NOTE: This package only supports HTTP; it does not support HTTPS. Attempts to use HTTPS result in an error.

出典: <https://hackage.haskell.org/package/HTTP/docs/Network-HTTP.html>

####Alternatives
* [http-conduit](http://hackage.haskell.org/package/http-conduit)
* [twitter-conduit](http://hackage.haskell.org/package/twitter-conduit)

###Server
* [Haskell から見た node.js](http://d.hatena.ne.jp/kazu-yamamoto/20110825/1314254885)
* [Web](http://www.scs.stanford.edu/14sp-cs240h/slides/web-slides.html)
* [scotty-web/scotty](https://github.com/scotty-web/scotty)
* [agrafix/Spock](https://github.com/agrafix/Spock)

###Yesod
* [Yesod Web Framework](http://www.yesodweb.com/)
* [quick start guide](http://www.yesodweb.com/page/quickstart)
* [tutorial](http://yannesposito.com/Scratch/en/blog/Yesod-tutorial-for-newbies/)
* [i18n, authentication, authorization, and database](http://www.yesodweb.com/blog/2012/01/blog-example)
* [book](http://www.yesodweb.com/book)
* [cookbook](https://github.com/yesodweb/yesod/wiki/Cookbook)

##FRP

> Functional reactive programming (FRP) is a declarative approach to GUI design. The term declarative makes a distinction between the “what” and the “how” of programming. A declarative language allows you to say what is displayed, without having to specify exactly how the computer should do it.

出典: [What is Functional Reactive Programming?](http://elm-lang.org/learn/What-is-FRP.elm)

> 値（あるいは状態）を直接的に扱わないで、「時間とともに変化する値（状態）」と「振る舞い(behavior)」の関係性に注目して、宣言的にプログラムを表現する

出典: [FRP - Functional Reactive Programming](http://www.slideshare.net/kamimuraryo/frp-functional-reactive-programming)

* [FRPの話](http://maoe.hatenadiary.jp/entry/2012/12/24/011414)
* [【翻訳】あなたが求めていたリアクティブプログラミング入門](http://ninjinkun.hatenablog.com/entry/introrxja)
* [やさしいFunctional reactive programming（概要編）](http://maoe.hatenadiary.jp/entry/20100109/1263059731)
* [Q. （関数型）リアクティブプログラミングとは何ですか？](http://postd.cc/what-is-functional-reactive-programming/)
* <http://maoe.hatenadiary.jp/entry/20100116/1263661213>
* <http://maoe.hatenadiary.jp/entry/20100123/1264225964>
* <http://netsuperbrain.com/blog/posts/introducing-reactive-events/>
* [A Survey of Functional Reactive Programming](http://www.cs.rit.edu/~eca7215/frp-independent-study/Survey.pdf)

###Other Language
* [Elm](http://elm-lang.org/)
  * [Elm at Prezi: Functional Reactive Programming for the Web](http://engineering.prezi.com/blog/2013/05/21/elm-at-prezi/)
* [Kefir.js](https://pozadi.github.io/kefir/)
* [Bacon.js](http://baconjs.github.io/)
  * [Functional Reactive Programming in JavaScript](http://flippinawesome.org/2013/09/30/functional-reactive-programming-in-javascript/)
* [ReactiveCocoa/ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa)

##数値計算
* [repa](https://hackage.haskell.org/package/repa)
* [hmatrix](https://hackage.haskell.org/package/hmatrix)
* [ad](https://hackage.haskell.org/package/ad)

##OpenGL
* [OpenGL](https://hackage.haskell.org/package/OpenGL)
* [gl](https://hackage.haskell.org/package/gl)
* [ekmett/quine](https://github.com/ekmett/quine)
* [OpenGL Tutorial 1](https://wiki.haskell.org/OpenGLTutorial1)
* [OpenGL Tutorial 2](https://wiki.haskell.org/OpenGLTutorial2)

> I've discovered that GLUT works for me if I compile first with ghc, and then run, rather than attempting to run via ghci or runghc. Have you tried that?

出典: <http://stackoverflow.com/questions/21008691/haskell-opengl-and-glut-freeze-on-mac-os-x-can-i-use-glfw-over-glut>

* [GLUtil](https://hackage.haskell.org/package/GLUtil)
* [Modern OpenGL with Haskell](http://www.arcadianvisions.com/blog/?p=224)

##CLI
* [turtle](http://hackage.haskell.org/package/turtle)
* [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative)

##Repos
* [badamson/2048.hs](https://github.com/badamson/2048.hs)
* [hedis](https://hackage.haskell.org/package/hedis)
* [ncurses](http://hackage.haskell.org/package/ncurses)
* [ImperativeHaskell](http://hackage.haskell.org/package/ImperativeHaskell)
* [mikeizbicki/HLearn](https://github.com/mikeizbicki/HLearn/)

##デバッグ
* [Debug.Trace](http://hackage.haskell.org/package/base/docs/Debug-Trace.html)
* [2.5. GHCiデバッガ](http://www.kotha.net/ghcguide_ja/latest/ghci-debugger.html)
* [criterion](http://hackage.haskell.org/package/criterion)

##FFI
* [FFI使ってC++バインディングに入門](http://mymo.blog8.fc2.com/blog-entry-52.html)
* [HsLua](https://www.haskell.org/haskellwiki/HsLua)

###Cocoa
* [Haskell ではじめるふわとろ Cocoa アプリ開発](http://konn-san.com/prog/haskell/haskell-introduction-to-cocoa.html)

##Others
* [bitemyapp/learnhaskell](https://github.com/bitemyapp/learnhaskell)
* [Haskell ポインタープログラミング](http://d.hatena.ne.jp/kazu-yamamoto/20131225/1387938629)
* [The Implementation of Functional Programming Languages](http://research.microsoft.com/en-us/um/people/simonpj/papers/slpj-book-1987/)
* [Partial Function Considered Harmful](http://tanakh.jp/posts/2011-12-25-partial-function-considered-harmful.html)
* [Haskell on Heroku](https://haskellonheroku.com/)
* [High-Performance Haskell](http://www.slideshare.net/tibbe/highperformance-haskell)
* [haskell で乱数](http://yomi322.hateblo.jp/entry/2012/10/07/121507)
* [EclipseFP](http://eclipsefp.github.io/)
* [Haxl - Haskellを使った暗黙的な並列データアクセス](http://www.infoq.com/jp/news/2014/06/haxl)
* [Stephen Diehl](http://www.stephendiehl.com/)
* [frp-arduino/frp-arduino](https://github.com/frp-arduino/frp-arduino)
* [第 16 章 Hindley/Milner 型推論](http://www29.atwiki.jp/tmiya/pages/78.html)
* <https://twitter.com/lvsn/status/533685461957349376>
* [A Type-theoretic Reconstruction of the Visitor Pattern](http://www.cs.bham.ac.uk/~hxt/research/mfps-visitors.pdf)
* [Lazy Functional State Threads](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.144.2237&rep=rep1&type=pdf)
* [Theorems for free!](http://www.cs.sfu.ca/CourseCentral/831/burton/Notes/July14/free.pdf)
* [Typed Tagless Final Interpreters](http://okmij.org/ftp/tagless-final/course/lecture.pdf)
* [Just do it: Simple monadic equational reasoning](http://www.cs.ox.ac.uk/publications/publication4877-abstract.html)
* 🎥 [Kenneth Foner - Getting a Quick Fix on Comonads](https://www.youtube.com/watch?v=F7F-BzOB670)

###Formatting

```haskell
format ("Person's name is " % text % ", age is " % hex) "Dave" 54
```

* [Formatting](https://hackage.haskell.org/package/formatting)
  * [HoleyMonoid](http://hackage.haskell.org/package/HoleyMonoid)   
* [Text.Printf](http://hackage.haskell.org/package/base/docs/Text-Printf.html)

##積み資料
* [The Monad.Reader](http://themonadreader.wordpress.com/previous-issues/)
* [Haskell Cast](https://www.youtube.com/channel/UC0pv4sIiJ404ubqUJ2e4WzA)

### [CS240h lecture notes](http://www.scs.stanford.edu/14sp-cs240h/slides/)
* [Information flow control](http://www.scs.stanford.edu/14sp-cs240h/slides/ifc-slides.html)

###連載: Haskellプログラミング
* [木(tree)で遊ぶ](https://www.ipsj.or.jp/07editj/promenade/4605.pdf)
* [数当てゲームを解く](https://www.ipsj.or.jp/07editj/promenade/4606.pdf)
* [Rubicキューブと置換の乗算](https://www.ipsj.or.jp/07editj/promenade/4607.pdf)
* [文字列間の距離-モナドを使って-](https://www.ipsj.or.jp/07editj/promenade/4609.pdf)
* [関数画家](https://www.ipsj.or.jp/07editj/promenade/4610.pdf)
* [ペンシルパズルを解く](https://www.ipsj.or.jp/07editj/promenade/4611.pdf)
* [対戦型n目並べ](https://www.ipsj.or.jp/07editj/promenade/4612.pdf)
* [暦法算法](https://www.ipsj.or.jp/07editj/promenade/4701.pdf)
* [自分自身を出力するプログラム](https://www.ipsj.or.jp/07editj/promenade/4703.pdf)

##Tips

```haskell
> join (,) 9
-- (9, 9)
```

出典: [Join-ing the Blogosphere](http://nattermorphisms.blogspot.jp/2008/08/join-ing-blogosphere.html)

##Related works
* [bitemyapp/learnhaskell](https://github.com/bitemyapp/learnhaskell)
* [krispo/awesome-haskell](https://github.com/krispo/awesome-haskell)
* [drKraken/haskell-must-watch](https://github.com/drKraken/haskell-must-watch)

---

#OCaml
* [「プログラミングの基礎」を使った授業紹介](http://pllab.is.ocha.ac.jp/~asai/book-mov/)

#CPL
* [圏論プログラミング言語 CPL](http://mandel59.hateblo.jp/entry/2015/02/02/110621)

#ATS
* [Japan ATS User Group](http://jats-ug.metasepi.org/)
* [Introduction to Programming in ATS](http://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/INT2PROGINATS-BOOK.html)

#Idris
<http://www.idris-lang.org/>

* [Practical Erasure in Dependently Typed Languages](https://edwinb.wordpress.com/2015/02/28/practical-erasure-in-dependently-typed-languages/)
* [Idris: Practical Dependent Types with Practical Examples](https://www.youtube.com/watch?v=4i7KrG1Afbk)
* [Dependently Typed Functional Programming in Idris by David Christiansen 1 of 3](https://vimeo.com/117221082)
* [Dependently typed functional programming in Idris, 2 of 3](https://vimeo.com/117973383)
* [Dependently typed functional programming in Idris, 3 of 3](https://vimeo.com/117979741)
* [こわくない Idris (1)](http://mandel59.hateblo.jp/entry/2013/09/02/184831)
* [こわくない Idris (2)](http://mandel59.hateblo.jp/entry/2013/09/03/162145)
* [こわくない Idris (3)](http://mandel59.hateblo.jp/entry/2013/09/06/104042)
* [こわくない Idris (4)](http://mandel59.hateblo.jp/entry/2013/09/14/082342)
* [こわくない Idris (5)](http://mandel59.hateblo.jp/entry/2013/09/14/115924)
* [こわくない Idris (6)](http://mandel59.hateblo.jp/entry/2013/09/14/153041)
  * [こわくない Idris (6) 補足](http://mandel59.hateblo.jp/entry/2014/10/05/233126)
* [こわくない Idris (7)](http://mandel59.hateblo.jp/entry/2013/09/17/142709)
* [codata](https://groups.google.com/forum/#!msg/idris-lang/bZmQpOVbHpY/4At62mxn-mcJ)
* [IdrisでWebアプリを書く](http://www.slideshare.net/tanakh/idrisweb)
* [Tell dependent function in conditional statement branch that condition is true](http://stackoverflow.com/questions/28914593/tell-dependent-function-in-conditional-statement-branch-that-condition-is-true)

----

#プログラムの基礎
* [Fixed points of functors](http://www.pps.univ-paris-diderot.fr/~metayer/PDF/fix.pdf)
* [Fixed-point functor](http://mbps.hatenablog.com/entry/2014/10/16/034046)
* [Catamorphism](http://mbps.hatenablog.com/entry/2013/05/15/032507)
* [fold/build fusion](http://mbps.hatenablog.com/entry/2014/10/09/013718)
* [Hylomorphism](http://mbps.hatenablog.com/entry/2014/10/17/010205)
* [If expression](http://mbps.hatenablog.com/entry/2014/10/14/012401)
* [CATEGORICAL PROGRAMMING WITH INDUCTIVE AND COINDUCTIVE TYPES](http://kodu.ut.ee/~varmo/papers/thesis.pdf)
* [ITERATION AND PRIMITIVE RECURSION IN CATEGORICAL TERMS](http://www.cs.ru.nl/barendregt60/essays/geuvers_poll/art08_geuvers_poll.pdf)

##計算量理論
* [計算量理論 演習問題](http://www-imai.is.s.u-tokyo.ac.jp/~kawamura/keisanryo/)

##線形論理
* [線形論理って何？](http://web.yl.is.s.u-tokyo.ac.jp/kobalab/kadai99/linear-logic.html)
* [線形論理入門 ∼ What’s the USE? ∼](http://www.kurims.kyoto-u.ac.jp/~terui/summer1.pdf)
* [線形論理の誕生](http://www.kurims.kyoto-u.ac.jp/~terui/birth.pdf)

> 線形型システムとは、プログラム実行中に作られた値が何度使われうるかによって型を区別するような型システムです

出典: [課題４](http://web.yl.is.s.u-tokyo.ac.jp/kobalab/kadai99/kadai4.html)

##Modal Logic
* [Modal Logic](http://plato.stanford.edu/entries/logic-modal/)

##ラムダ計算
* [Call-by-Value is Dual to Call-by-Name](http://homepages.inf.ed.ac.uk/wadler/papers/dual/dual.pdf)

##Category Theory
* [プログラマであるあなたが圏論を学んで得られる事、得られない事](http://tune.hateblo.jp/entry/2015/01/22/023102)
* [Category Theory & Programming](http://yogsototh.github.io/Category-Theory-Presentation/)
* [Category theory for beginners](http://www.slideshare.net/kenbot/category-theory-for-beginners)
* [圏論](http://alg-d.com/math/category/)
* [2013年 圏論勉強会 資料](http://nineties.github.io/category-seminar/)
* [哲学者のための圏論入門](http://choreographlife.jp/pdf/intro.pdf)
* [モナドへの近道・Haskell からの寄道](http://kurt.scitec.kobe-u.ac.jp/~shg/SFCArchives/docs/shortcut_monad.pdf)
* [Notions of computation and monads](http://www.disi.unige.it/person/MoggiE/ftp/ic91.pdf)
* [Functors, Applicatives, And Monads In Pictures](http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html)
* [YonedaとCoYoneda、そしてFunctor](http://d.hatena.ne.jp/its_out_of_tune/20130601/1370109743)
* [String diagram](https://www.youtube.com/playlist?list=PL50ABC4792BD0A086)
* [String diagram](http://mbps.hatenablog.com/entry/2015/02/07/175148)
* [Category Theory Using String Diagrams](http://jp.arxiv.org/abs/1401.7220)
* [n-Category](http://mbps.hatenablog.com/entry/2014/11/25/031401)
* [Enriched category](http://mbps.hatenablog.com/entry/2015/03/03/204917)
* [Self-enriched category](http://mbps.hatenablog.com/entry/2015/03/11/155555)

## Steve Awodey - Category Theory Foundations
* [Category Theory Foundations, Lecture 1](https://www.youtube.com/watch?v=ZKmodCApZwk)
  * 圏の定義と例
* [Category Theory Foundations, Lecture 2](https://www.youtube.com/watch?v=TQYjekxqw-Q)
  * UMP
* [Category Theory Foundations, Lecture 3](https://www.youtube.com/watch?v=BOynNljjbeg)
  * 自然変換と米田の補題
* [Category Theory Foundations, Lecture 4](https://www.youtube.com/watch?v=8fZmdhLLgs4)
  * 随伴

##Monoid
* [MonadPlus and Monoid serve different purposes.](http://stackoverflow.com/questions/10167879/distinction-between-typeclasses-monadplus-alternative-and-monoid#10168111)
* [Haskell Monoids and their Uses](http://blog.sigfpe.com/2009/01/haskell-monoids-and-their-uses.html)
* [Monoids and Finger Trees](http://apfelmus.nfshost.com/articles/monoid-fingertree.html)

> lists are not free monoids in Haskell.

出典: [Free Monoids in Haskell](http://comonad.com/reader/2015/free-monoids-in-haskell/)

##Functor
* [ファンクタであそぼう](http://kinokkory.hatenablog.com/entry/20131203/p1)
* [Monads and more](http://www.scs.stanford.edu/14sp-cs240h/slides/functors-monads-slides.html)

##Applicative
* [Applicative programming with effects](http://staff.city.ac.uk/~ross/papers/Applicative.pdf)

##自然変換
* [ホモトピー変形と自然変換](http://d.hatena.ne.jp/m-hiyama/comment?date=20111208&section=1323315799#c)

##随伴
* [Adjunctions](https://www.youtube.com/playlist?list=PL54B49729E5102248)

> 今回は話の中でいきなりWriterとReaderが出てきて、この2つで随伴になると説明しましたが、実際はStateモナドやStoreコモナドからこの2つの関手を導くことができますです。

* [随伴がモテないのはどう考えてもモナドが悪い！（モナドとコモナドの関係が分かる話）](http://kagamilove0707.hatenablog.com/entry/2014/11/02/210400#fn-8ae3ae26)
* [Haskellと随伴](http://qiita.com/myuon_myon/items/d598480e4edd7a780ea7)
* [From Adjunctions to Monads](http://www.stephendiehl.com/posts/adjunctions.html)
* [Adjunctions with parameters](http://mbps.hatenablog.com/entry/2014/12/08/033230)

##モナド
* [世界一わかりやすいモナドの記事](http://myuon-myon.hatenablog.com/entry/2013/06/26/173904)
* [Monads from Comonads, Comonads from Monads](http://www.cs.ox.ac.uk/ralf.hinze/WG2.8/28/slides/Comonad.pdf)

###Books
* [Category Theory](http://www.amazon.co.jp/dp/0199237182)[[pdf](http://www.andrew.cmu.edu/course/80-413-713/notes/)]
* [Category Theory for Computing Science](http://www.math.mcgill.ca/triples/Barr-Wells-ctcs.pdf)
* [Abstract and Concrete Categories](http://katmat.math.uni-bremen.de/acc/acc.pdf)
* [圏論の基礎](http://www.amazon.co.jp/dp/4621063243)
* [Lectures on the Curry-Howard Isomorphism (1998)](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.17.7385)
* [Categorical homotopy theory](http://www.math.harvard.edu/~eriehl/cathtpy.pdf)

##プログラム意味論
* [プログラミング言語の意味論](http://www.kurims.kyoto-u.ac.jp/~kenkyubu/kokai-koza/katsumata.pdf)

###操作的意味論
###表示的意味論
* [不動点の話](http://d.hatena.ne.jp/kazu-yamamoto/20110426/1303810333)
* [Haskell/Denotational semantics](http://ja.wikibooks.org/wiki/Haskell/Denotational_semantics)
* [Domain Theory](http://www.cs.bham.ac.uk/~axj/pub/papers/handy1.pdf)
* [プログラム意味論とトポロジー -再帰，相互作用，結び目-](http://www.kurims.kyoto-u.ac.jp/~hassei/papers/msj2010sept_slides.pdf)

###公理的意味論

##Proof Theory
* [Proof Theory Foundations, Lecture 1](https://www.youtube.com/watch?v=YRu7Xi-mNK8)
* [Proof Theory Foundations, Lecture 2](https://www.youtube.com/watch?v=JzIAEv8fN88)
* [Proof Theory Foundations, Lecture 3](https://www.youtube.com/watch?v=nw0JAF79gYI)
* [Proof Theory Foundations, Lecture 4](https://www.youtube.com/watch?v=_XtflAEN6aA)

##Type Theory
* [PROOFS AND TYPES](http://www.paultaylor.eu/stable/prot.pdf)
* [Intuitionistic Type Theory](http://www.cip.ifi.lmu.de/~langeh/test/1984%20-%20Loef%20-%20Intuitionistic%20Type%20Theory.pdf)
* [Types and Programming Languages](http://port70.net/~nsz/articles/book/pierce_types_and_programming_languages_2002.pdf)
* [型システム入門 −プログラミング言語と型の理論](http://www.amazon.co.jp/dp/4274069117)
* [The Girard-Reynolds isomorphism](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.104.697)
* [Type Theory and Functional Programming](https://www.cs.kent.ac.uk/people/staff/sjt/TTFP/)

###Type Theory Foundations
* [Type Theory Foundations, Lecture 1](https://www.youtube.com/watch?v=ev7AYsLljxk)
* [Type Theory Foundations, Lecture 2](https://www.youtube.com/watch?v=3JHTb6b1to8)
* [Type Theory Foundations, Lecture 3](https://www.youtube.com/watch?v=wJLTE8rnqH0)
* [Type Theory Foundations, Lecture 4](https://www.youtube.com/watch?v=P6YUm_E6rRA)
* [Type Theory Foundations, Lecture 5](https://www.youtube.com/watch?v=wnHp5F9RDPI)
* [Type Theory Foundations, Lecture 6](https://www.youtube.com/watch?v=glv3X4PfrEc)

----

* [Programs and Proofs](http://ilyasergey.net/pnp/)

> ここ数年における新しい理論「ホモトピー型理論(HoTT)」は, 計算機科学の型理論における「＝」を, 位相幾何学のホモトピー同値「連続変形がある」の性質で解釈しようとする試みである。

出典: <http://phsc.jp/dat/rsm/2013_a3-1.pdf>

* [TYPE THEORY AND HOMOTOPY](http://www.mathematik.uni-muenchen.de/~cm2010/awodey.pdf)
* [The HoTT Book](http://homotopytypetheory.org/book/)
* [Lambda Jam 2014 - Gershom Bazerman - Homotopy Type Theory: What's the Big Idea](https://www.youtube.com/watch?v=OupcXmLER7I)
* [Algebraic Topology](http://www.math.cornell.edu/~hatcher/AT/ATpage.html)

> HoTT is a constructive, proof-relevant theory of equality inside dependent type theory

出典: [ICFP 2014: session "Homotopy Type Theory"](https://www.youtube.com/watch?v=4yCvTaw1nUg)

* [Homotopical Patch Theory](http://www.cs.cmu.edu/~rwh/papers/htpt/paper.pdf)
* [Dan Licata, Guillaume Brunerie, and Peter Lumsdaine, Homotopy Theory in Type Theory](https://www.youtube.com/watch?v=ziN2XcK5-PQ)
