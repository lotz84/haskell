## 継続

> 文献を紐解くと、 継続とは「これから行われるであろう計算をパッケージ化したもの」とある。

出典: [なんでも継続](http://practical-scheme.net/docs/cont-j.html)

* [Representing Monads](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.43.8213)

継続は一般的な概念であるがここではHaskellの継続渡しスタイルとCont Monadについて説明する

### 継続渡しスタイル
* [CPS というプログラミングスタイルの導入の話](http://yuzumikan15.hatenablog.com/entry/2015/04/24/094610)
* [The Mother of all Monads](http://blog.sigfpe.com/2008/12/mother-of-all-monads.html)
* [Control.Monad.Cont](https://hackage.haskell.org/package/mtl/docs/Control-Monad-Cont.html)
* [Haskell/Continuation passing style](http://en.wikibooks.org/wiki/Haskell/Continuation_passing_style)
* [Compiling With CPS](http://jozefg.bitbucket.org/posts/2015-04-30-cps.html)
* [Haskell で継続渡しスタイル (CPS)](http://jutememo.blogspot.jp/2011/05/haskell-cps.html)
* [The mtl-c package](https://hackage.haskell.org/package/mtl-c)
* [Resource Management in Haskell](http://aherrmann.github.io/programming/2016/01/04/resource-management-in-haskell/)
* [データ型のCPS変換について](http://myuon-myon.hatenablog.com/entry/2016/05/11/215734)
* [Continuations all the way down](http://teh.id.au/posts/2017/05/10/lambdajam-slides/index.html)


```haskell
-- Another junior Haskell programmer
fac 0 = 1
fac n = n * fac (n-1)

-- Continuation-passing Haskell programmer
facCps k 0 = k 1
facCps k n = facCps (k . (n *)) (n-1)

fac = facCps id
```

出典: [The Evolution of a Haskell Programmer](http://www.willamette.edu/~fruehr/haskell/evolution.html)

### Contモナド

```haskell
newtype Cont r a = Cont { runCont :: (a -> r) -> r }
```

* [継続モナドについて - Qiita](https://qiita.com/sgmryk/items/cb274102cb1062c9158d)
* [継続モナドによるリソース管理](http://qiita.com/tanakh/items/81fc1a0d9ae0af3865cb)
* [Continuation Passing Style in Haskell](http://begriffs.com/posts/2015-06-03-haskell-continuations.html)
* [無限ループから抜け出すプログラム](http://qiita.com/lotz/items/a1ff5725e918e216940e)
* [Tweet](https://twitter.com/cdepillabout/status/972515871301120000)
* [ContT を使ってコードを綺麗にしよう！](https://haskell.e-bigmoon.com/posts/2018/06-26-cont-param.html)

### 継続による計算の効率化
継続を使って短絡評価が実装できる  

```haskell
prod :: (Eq a, Num a) => [a] -> a
prod l = (`runCont` id) $ callCC (\k -> loop k l)
    where
    loop _ []     = return 1
    loop k (0:_)  = k 0
    loop k (x:xs) = do
        n <- loop k xs
        return (n * xs)
```

### shift/reset
* [shift/reset プログラミング入門](http://pllab.is.ocha.ac.jp/~asai/cw2011tutorial/main-j.pdf)
* [Introduction to Programming with Shift and Reset](http://www.is.ocha.ac.jp/~asai/cw2011tutorial/main-e.pdf)
* [Shift to control](http://homes.soic.indiana.edu/ccshan/recur/recur.pdf)
* [shift/reset と control/prompt の違い](http://d.hatena.ne.jp/ku-ma-me/20080417/p2)

```haskell
-- shift/reset for the Cont monad
shift :: ((a -> Cont s r) -> Cont r r) -> Cont r a
shift e = Cont $ \k -> e (return . k) `runCont` id
 
reset :: Cont a a -> Cont r a 
reset e = return $ e `runCont` id
```

出典: [MonadCont done right](https://www.haskell.org/haskellwiki/MonadCont_done_right)

###米田埋め込み

> The Yoneda embedding is familiar in category theory. The continuation passing transform is familiar in computer programming.
> They’re the same thing! Why doesn’t anyone ever say so?

出典: [The Continuation Passing Transform and the Yoneda Embedding](https://golem.ph.utexas.edu/category/2008/01/the_continuation_passing_trans.html)

CPSへの変換は米田埋め込みに対応している

```haskell
cps :: forall a b r. (a -> b) -> ((b -> r) -> (a -> r))
cps = flip (.)
```

出典:[CPS（継続渡し方式）変換をJavaScriptで説明してみるべ、ナーニ、たいしたことねーべよ](http://d.hatena.ne.jp/m-hiyama/20080116/1200468797)

###論理学での継続

> CPS変換は、二重否定による古典論理の直観主義論理への埋め込みにあたる。

出典: [継続渡しスタイル - Wikipedia](http://ja.wikipedia.org/wiki/%E7%B6%99%E7%B6%9A%E6%B8%A1%E3%81%97%E3%82%B9%E3%82%BF%E3%82%A4%E3%83%AB)

* [Curry-Howard Isomorphism](http://www.kmonos.net/wlog/61.html#_0538060508)
* [カリー＝ハワード 同型対応 と 継続](https://www.duxca.com/slide/?curry_howard_isomorphism/index.md#/)
