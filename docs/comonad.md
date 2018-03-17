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

* 🎥 [Kenneth Foner - Getting a Quick Fix on Comonads](https://www.youtube.com/watch?v=F7F-BzOB670)
