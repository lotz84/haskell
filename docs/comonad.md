# コモナド
モナドの圏論的双対

```hs
class Functor w => Comonad w where
  extract   :: w a -> a
  duplicate :: w a -> w (w a)
  extend    :: (w b -> a) -> w b -> w a
  
  duplicate = extend id
  extend f  = fmap f . duplicate
```

* [comonad: Comonads](https://hackage.haskell.org/package/comonad)

## 入門

* コモナドは基点付き空間 - [Functorial Blog - Comonads as Spaces](http://blog.functorial.com/posts/2016-08-07-Comonads-As-Spaces.html)
* コモナドはオブジェクト - [Haskell for all: Comonads are objects](http://www.haskellforall.com/2013/02/you-could-have-invented-comonads.html)
* [コモナドを使った抽象化の威力をライフゲームで試してみた - Qiita](https://qiita.com/lotz/items/fbc4788b8ea8313cbf76)
* [トーラス上のライフゲームを、List Zipperを使用して実装してみた - Qiita](https://qiita.com/chupaaaaaaan/items/709b6e241468e3f2dd1c)
* [コモナドを攻略する - bitterharvest’s diary](http://bitterharvest.hatenablog.com/entry/2019/02/05/110340)
* [Comonadic builders](https://chshersh.github.io/posts/2019-03-25-comonadic-builders)

## 代表的なコモナド
参考: [Comonads in Haskell](https://www.slideshare.net/davidoverton/comonad)

### Env
Readerモナドの圏論的双対

```hs
type Env e a = (e, a)

instance Comonad (Env e) where
  extract = snd
  extend f w = (fst w, f w)
```

### Traced
Writerモナドの圏論的双対

```hs
type Traced e a = e -> a

instance Monoid e => Comonad (Traced e) where
  extract m = m mempty
  extend f m = \c -> f (\c' -> m (c <> c'))
```

### Store
Stateモナドの圏論的双対

```hs
data Store s a = Store (s -> a) s

instance Functor (Store s) where
  fmap f (Store g s) = Store (f . g) s

instance Comonad (Store s) where
  extract (Store f s) = f s
  extend f (Store g s) = Store (f . Store g) s
```

[Lens](docs/lens.md)はStoreコモナドの余代数

```hs
type Lens s a = a -> Store s a
```

* [The Comonad.Reader » The State Comonad](http://comonad.com/reader/2018/the-state-comonad/)

### Stream
無限の長さを持つリストと考えられる

```hs
data Stream a = Cons a (Stream a)

instance Functor Stream where
  fmap f (Cons x xs) = Cons (f xs) (fmap f xs)

instance Comonad Stream where
  extract (Cons x _) = x
  duplicate xs@(Cons _ xs') = Cons xs (duplicate xs')
  extend f xs@(Cons _ xs') = Cons (f xs) (extend f xs')
```

普通のリストは空リストが存在するため `extract` が実装できないので `Comonad` のインスタンスにならないことに注意

### List Zipper

```hs
data Zipper a = Zipper [a] a [a]

left, right :: Zipper a -> Zipper a
left (Zipper (l:ls) c rs)) = Zipper ls l (c:rs)
right (Zipper ls c (r:rs)) = Zipper (c:ls) r rs

instance Functor Zipper where
  fmap f (Zipper ls c rs) = Zipper (fmap f ls) (f c) (fmap f rs)

iterate1 :: (a -> a) -> a -> [a]
iterate1 f = tail . iterate f

instance Comonad Zipper where
  extract (Zipper _ c _) = c
  duplicate z = Zipper (iterate1 left z) z (iterate1 right z)
  extend f z = Z (fmap f $ iterate1 left z) (f z) (fmap f $ iterate1 right z)

```

## コモナドはZipperの一般化

* [Structured Computation on Trees or, What’s Behind That Zipper? (A Comonad)](https://www.ioc.ee/~tarmo/tsem05/uustalu0812-slides.pdf)
* [haskell - Zipper Comonads, Generically - Stack Overflow](https://stackoverflow.com/questions/25554062/zipper-comonads-generically?lq=1)

### Zipper
* [zipper](https://hackage.haskell.org/package/zipper)
* [Zippers - LYAH](http://learnyouahaskell.com/zippers)
* [データ型の微分](http://ja.wikibooks.org/wiki/Haskell/Zippers#.E3.83.87.E3.83.BC.E3.82.BF.E5.9E.8B.E3.81.AE.E5.BE.AE.E5.88.86)
* [Zippers, Part 2: Zippers as Derivatives](https://pavpanchekha.com/blog/zippers/derivative.html)
* [Scrap Your Zippers](http://michaeldadams.org/papers/scrap_your_zippers/ScrapYourZippers-2010.pdf)
* [syz](https://hackage.haskell.org/package/syz)
* [Zipper関連のパッケージ](http://d.hatena.ne.jp/debug-ito/20161016/1476587232)
* [Zipperに挑む](https://qiita.com/Aruneko/items/dee20161358e7c39e27a)
* [Derivatives of Containers](http://www.cs.le.ac.uk/people/mabbott/docs/derivative.pdf)
* [Dan Ghica's Blog: Zippers for non-inductive types](http://danghica.blogspot.com/2018/11/zippers-for-non-inductive-types.html)
* [[1908.10926] Performance Analysis of Zippers](https://arxiv.org/abs/1908.10926)
* [Zipperとは - Qiita](https://qiita.com/hennin/items/a89ebfecb25272960351)

## コモナドトランスフォーマー

```hs
class ComonadTrans t where
  lower :: Comonad w => t w a -> w a
```

* [Comonad Transformers in the Wild - ielliott.io](http://blog.ielliott.io/comonad-transformers-in-the-wild/)
* [Functorial Blog - Comonads and Day Convolution](http://blog.functorial.com/posts/2016-08-08-Comonad-And-Day-Convolution.html)

## 圏論のコモナド

> The comonad is a comonoid in the category of endofunctors.

* [Comonads \| Bartosz Milewski's Programming Cafe](https://bartoszmilewski.com/2017/01/02/comonads/)

----

* [jaspervdj - Image Processing with Comonads](https://jaspervdj.be/posts/2014-11-27-comonads-image-processing.html)
* 🎥 [Kenneth Foner - Getting a Quick Fix on Comonads](https://www.youtube.com/watch?v=F7F-BzOB670)
* [Comonad and Sierpinski gasket](http://nbviewer.ipython.org/urls/gist.githubusercontent.com/miguel-negrao/571be4120ebecdbb3e26/raw/b740adc557fe097f9c6ff66ff7349bbf0a095091/gistfile1.txt)
