#型クラスと抽象

##型クラス
###宣言

```haskell
class Show a where
    show :: a -> String
```

`Show` は型クラス、`show` はメソッドと呼ばれる。

###実装

```haskell
instance Show Bool where
    show True  = "True"
    show False = "False"
```

これで`Bool`型はShowのインスタンスになる。
例えば`print :: Show a => a -> IO ()`の型`a`にはShowのインスタンスであれば何でも使うことが出来る。

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

|記号 |読み方      |
|:----|:-----------|
|`<*>`|applied over|

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

|記号 |読み方    |
|:----|:---------|
|`>>=`|bind      |
|`>>` |then      |
|`<-` |drawn from|

```haskell
do x <- mx
   y <- my
   z

-- ... is equivalent to:
do x <- mx
   do y <- my
      z

-- ... desugars to:
mx >>= (\x ->
my >>= (\y ->
z ))
```

出典: [How to desugar Haskell code ](http://www.haskellforall.com/2014/10/how-to-desugar-haskell-code.html)

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
* [Easy exhasutive search with the list monad](http://blog.plover.com/prog/haskell/monad-search.html)

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
* [Zhuangzi, butterfly and referential transparency](https://ro-che.info/ccc/9)

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

既存のファンクタを使ってモナドを作ることができる。データ構造とモナドの構文を使って抽象構文木を作ることができ、それを走査すれば簡単にDSLを作ることができる。この場合ファンクタのパラメータは後続する処理を表す。

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
* [What is the difference between free monads and free monoids?](http://www.reddit.com/r/haskell/comments/2znhjk/what_is_the_difference_between_free_monads_and/)

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
* [Announcing: monad-unlift](https://www.fpcomplete.com/blog/2015/04/announcing-monad-unlift)

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
* [CPS というプログラミングスタイルの導入の話](http://yuzumikan15.hatenablog.com/entry/2015/04/24/094610)

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

##Lens

> いわゆるgetter/setterの圏論による表現。

出典: [Lens](http://mbps.hatenablog.com/entry/2014/10/28/152931)

* [lens](https://hackage.haskell.org/package/lens)
* [Kinokkory/lens-japanese](https://github.com/Kinokkory/lens-japanese/wiki)
* [Lensで行こう！](http://myuon-myon.hatenablog.com/entry/20121228/1356708483)
* [Lensで行こう！(2):Isoへの拡張](http://myuon-myon.hatenablog.com/entry/2013/01/06/232142)
* [lens over tea](http://artyom.me/#lens-over-tea)
* [レンズは余状態余モナドの余代数だった](https://gist.github.com/lotz84/7fd7e279bd7196c6baab)
* 🎥 [Lenses, Folds and Traversals: An Introduction to the Lens Library with Edward Kmett](http://vimeo.com/56063074)
* [Picking a lens library](https://ro-che.info/ccc/23)
* [Functor is to Lens as Applicative is to Biplate: Introducing Multiplate](http://arxiv.org/abs/1103.2841)
* [Could someone explain the diagram about the `lens` library?](http://stackoverflow.com/questions/29742634/could-someone-explain-the-diagram-about-the-lens-library/29742635#29742635)
* [Lenses: compositional data access and manipulation.](https://skillsmatter.com/skillscasts/4251-lenses-compositional-data-access-and-manipulation)

###Comonad
* [comonad](https://hackage.haskell.org/package/comonad)
* [Comonads are objects](http://www.haskellforall.com/2013/02/you-could-have-invented-comonads.html)

```
class Functor w => Comonad w where
  extract :: w a -> a
  duplicate :: w a -> w (w a)
```

###CPS Lens
* [My new lens idea](http://lpaste.net/128137)
