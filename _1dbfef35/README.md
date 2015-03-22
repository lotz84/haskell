* [A History of Haskell: Being Lazy With Class](http://haskell.cs.yale.edu/wp-content/uploads/2011/02/history.pdf)
   * <https://www.youtube.com/watch?v=3bjXGrycMhQ>

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

##環境構築
* [Windows](https://www.haskell.org/downloads/windows)
* [OS X](https://www.haskell.org/downloads/osx)
* [Linux](https://www.haskell.org/downloads/linux)

```shell
$ cabal install hlint
$ hlint code.hs
```

[hlint](https://hackage.haskell.org/package/hlint)

##Example
###Hello World

```
$ vim hello.hs
```

```
main = putStrLn "Hello World!"
```

```
$ runhaskell hello.hs
Hello World!
```

###ファイルのデータを読み込んで合計を計算する

```
$ echo "1 3 50 10" > data.txt
$ vim sum.hs
```

```
main = do
  txt <- readFile "data.txt"
  print $ sum . map read . words $ txt
```

```
$ runhaskell sum.hs
64
```

##Basics
* [Try Haskell](https://tryhaskell.org/)
* [Basics](http://www.scs.stanford.edu/14sp-cs240h/slides/basics-slides.html)
* [What I Wish I Knew When Learning Haskell](http://www.stephendiehl.com/what/)
  * [sdiehl/wiwinwlh](https://github.com/sdiehl/wiwinwlh)
* 🎥 [Haskell Course by Philip Wadler](https://www.youtube.com/watch?v=AOl2y5uW0mA&list=PLtRG9GLtNcHBv4cuh2w1cz5VsgY6adoc3)
* 🎥 [Haskell from Scratch](https://www.youtube.com/watch?v=zZ_nI9E9g0I&list=PLxj9UAX4Em-Ij4TKwKvo-SLp-Zbv-hB4B&index=1)
* 🎥 [Adventures in Haskell](https://www.youtube.com/watch?v=9AllRc64pVE&list=PL_xuff3BkASMOzBr0hKVKLuSnU4UIinKx)
* 🎥 [Sed implementation in Haskell](https://www.youtube.com/watch?v=0I90MTip-OQ&list=PLUQzXLQ6jvHL_k3QOMKXehVoZdk-sKtHd)
* 🎥 [Haskell Tutorial - LazyCasts](https://www.youtube.com/watch?v=5XLTRuKoOtM&index=2&list=PLvj5k87ljYYHwOOcdGvS3qi85IvjOW--8)

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

##関数合成
> We shall suppose that functional application is more binding than any other operator, so f x ++ y means (f x) ++ y and not f (x ++ y).

出典: [An Introduction to the Theory of Lists](https://www.cs.ox.ac.uk/files/3378/PRG56.pdf)

> Haskell 初心者は括弧ばかりの Lisp のようなコードを書く。中級者になると、($) が多くなる。上級者(言い過ぎか？)になると、($) が消えて、(.) が多くなる。

出典: [関数合成の妙技](http://d.hatena.ne.jp/kazu-yamamoto/20100702/1278036842)

###ポイントフリー
* [ポイントフリースタイル入門](http://d.hatena.ne.jp/melpon/20111031/1320024473)
* [Haskellのフクロウ ((.)$(.))](http://uid0130.blogspot.jp/2014/11/haskell_17.html)
* [pointfree](https://hackage.haskell.org/package/pointfree)

##遅延評価

> One very interesting comparison is that lazy evaluation is to the CPU what garbage collection is to memory.

出典: <http://scott.sauyet.com/Javascript/Talk/2014/01/FuncProgTalk/#slide-40>

```haskell
memoized_fib :: Int -> Integer
memoized_fib = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = memoized_fib (n-2) + memoized_fib (n-1)
```
* [Can someone explain the concept behind Haskell's memoization?](http://programmers.stackexchange.com/questions/220746/can-someone-explain-the-concept-behind-haskells-memoization)

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
* [Function Types](http://bartoszmilewski.com/2015/03/13/function-types/)

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
* [Question: Type System and N-Dimensional Vectors](http://www.reddit.com/r/haskell/comments/2z5l9y/question_type_system_and_ndimensional_vectors/)

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
「環」の理論を知らなくても整数の足し算掛け算が出来るように、モナドの数学的な理論を知らなくてもモナドを使うことは出来る。

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
* [Monad tutorials timeline](https://wiki.haskell.org/Monad_tutorials_timeline)

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

###IO Monad
* [How to Declare an Imperative](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.91.3579&rep=rep1&type=pdf)
* [GHC 以外の処理系での IO 型/IO モナドの実装](http://togetter.com/li/252981)

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
* [Reflection without Remorse](http://homepages.cwi.nl/~ploeg/papers/zseq.pdf)
  * [Haskell 2014: Reflection without Remorse: Revealing a hidden sequence to speed up monadic reflection](https://www.youtube.com/watch?v=_XoI65Rxmss)
* [自由モノイドとFreeモナド](http://d.hatena.ne.jp/hiratara/20130525/1369495124)
* [Free monads are free](http://mbps.hatenablog.com/entry/2014/07/08/201210)
* [Free monad](http://mbps.hatenablog.com/entry/2014/06/19/190518)
* [Category of monads](http://mbps.hatenablog.com/entry/2014/06/26/123223)
* [Free Monads for Less (Part 2 of 3): Yoneda](http://comonad.com/reader/2011/free-monads-for-less-2/)

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

###モナドの合成
* [Proper Treatment 正當作法/blog/posts/Monad transformers](http://conway.rutgers.edu/~ccshan/wiki/blog/posts/Monad_transformers/)
* [Composing Monads Using Coproducts](http://www.informatik.uni-bremen.de/~cxl/papers/icfp02.pdf)
* [monad-levels](http://hackage.haskell.org/package/monad-levels)
  * [Monadic yak shaving](https://ivanmiljenovic.wordpress.com/2015/02/02/monadic-yak-shaving/)
* [Extensible Effects -An Alternative to Monad Transformers-](http://www.cs.indiana.edu/~sabry/papers/exteff.pdf)
* [Monatron](https://hackage.haskell.org/package/Monatron)

####Monad Transformer
* [transformers](https://hackage.haskell.org/package/transformers)
* [モナドトランスフォーマーとその周辺](http://qiita.com/ruicc/items/7512c990a1835bba444a)
* [Haskell モナド変換子 超入門](http://qiita.com/7shi/items/4408b76624067c17e933)
* [モナドトランスフォーマー・ステップ・バイ・ステップ](http://bicycle1885.hatenablog.com/entry/2012/12/08/165236)
* [A Gentle Introduction to Monad Transformers](https://github.com/kqr/gists/blob/master/articles/gentle-introduction-monad-transformers.md)
* [モナモナ言うモナド変換子入門](http://hiratara.github.io/presentations/2015-03-21_monadbase_vol2.html#/)
* [Monad transformer](http://mbps.hatenablog.com/entry/2014/06/28/033234)
* [Adjunction からの monad transformer](http://mbps.hatenablog.com/entry/2014/11/25/220948)
* [Monad からの monad transformer](http://mbps.hatenablog.com/entry/2014/12/11/112455)

transformersにはMonad Transformerを新しく定義する度に全ての組み合わせの実装を定義する必要があるという問題点がある。

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
* [lens over tea](http://artyom.me/#lens-over-tea)

##並列・並行処理
* [できる！並列・並行プログラミング](http://www.slideshare.net/pfi/ss-9780450)
* [Concurrency](http://www.scs.stanford.edu/14sp-cs240h/slides/concurrency-slides.html)
* [Memory](http://www.scs.stanford.edu/14sp-cs240h/slides/memory-slides.html)
* [Beautiful concurrency](http://research.microsoft.com/en-us/um/people/simonpj/papers/stm/beautiful.pdf)
* [async](http://hackage.haskell.org/package/async)
* [A Compositional Theory for STM Haskell](https://vimeo.com/6685355)
* [Programming in the Age of Concurrency: Software Transactional Memory](http://channel9.msdn.com/Shows/Going+Deep/Programming-in-the-Age-of-Concurrency-Software-Transactional-Memory)
* [関数型プログラミング言語における通信記述の型付け](http://ir.nul.nagoya-u.ac.jp/jspui/handle/2237/16436)
* [accelerate](http://hackage.haskell.org/package/accelerate)
* [accelerate-cuda](http://hackage.haskell.org/package/accelerate-cuda)

##テスト
* [Haskellの単体テスト最前線](https://github.com/kazu-yamamoto/unit-test-example/blob/master/markdown/ja/tutorial.md)
* [Testing](http://www.scs.stanford.edu/14sp-cs240h/slides/testing-slides.html)
* <https://twitter.com/datgame/status/563269982721941505>
* [Functional TDD: A Clash of Cultures](https://www.facebook.com/notes/kent-beck/functional-tdd-a-clash-of-cultures/472392329460303)
* [Practical testing in Haskell](http://jaspervdj.be/posts/2015-03-13-practical-testing-in-haskell.html)

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

##関数型プログラミングとは
* [関数型プログラミングとは結局何なのか](http://blog.kokuyouwind.com/archives/808)
* [なぜ関数プログラミングは重要か](http://www.sampou.org/haskell/article/whyfp.html)
* [函数プログラミングのエッセンスと考え方](http://www.itpl.co.jp/tech/func/essense_of_fp(sea0305).pdf)
* [Haskellの講義に関するQ&A](http://d.hatena.ne.jp/kazu-yamamoto/20111124/1322100759)
* [経験15年のOCaml ユーザーが Haskell を仕事で半年使ってみた](http://d.hatena.ne.jp/camlspotter/20101212/1292165692)
