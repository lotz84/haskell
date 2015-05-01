#型レベルプログラミング
* [定理証明系 Haskell](http://konn-san.com/prog/2013-advent-calendar.html)
* [プログラミング Coq 〜 絶対にバグのないプログラムの書き方 〜](http://www.iij-ii.co.jp/lab/techdoc/coqt/)
* [Testing a type for (Eq a) in Haskell](http://stackoverflow.com/questions/28799005/testing-a-type-for-eq-a-in-haskell)
* [Constraint Kinds for GHC](http://blog.omega-prime.co.uk/?p=127)
* [Inductive family of types](http://mbps.hatenablog.com/entry/2014/09/28/035245)
* [Polymorphism within higher-order functions?](http://stackoverflow.com/questions/7061538/polymorphism-within-higher-order-functions)
* [Announcing the refinement types library](http://nikita-volkov.github.io/refined/)
* [Type Programming with Athan Clark](https://www.youtube.com/watch?v=iwj3Bni4uYE)

```haskell
data Bottom

data (:==:) :: k -> k -> * where
   Refl :: a :==: a

type Not p = p -> Bottom

type a :/=: b = Not (a :==: b)
```

出典: [ロジックパズルの解説](http://notogawa.hatenablog.com/entry/2014/12/06/181216)

```haskell
data HList (as :: [*]) where
  HNil :: HList '[]
  HCons :: a -> HList xs -> HList (a ': xs)
```

出典: [DataKinds 言語拡張を使って Typed Heterogeneous List とその基本操作を実装してみた](http://hyone.hatenablog.com/entry/2012/12/26/181105)

```haskell
{-# LANGUAGE GADTs, DataKinds, KindSignatures, TypeFamilies #-}

data N = Z | S N  -- natural numbers
 
data Vec a (n :: N) where
  Nil  :: Vec a Z
  Cons :: a -> Vec a n -> Vec a (S n)

vecTail :: Vec a (S n) -> Vec a n
vecTail (Cons _ tl) = tl

data IsNull (n :: N) where
     Null    :: IsNull Z
     NotNull :: IsNull (S n)

vecNull' :: Vec a n -> IsNull n
vecNull' Nil        = Null
vecNull' (Cons _ _) = NotNull

type family Pred (n :: N) :: N where
    Pred Z     = Z
    Pred (S n) = n

shorten :: Vec a n -> Vec a (Pred n)
shorten xs = case vecNull' xs of
               Null    -> xs
               NotNull -> vecTail xs
```

出展: [Smarter conditionals with dependent types: a quick case study](http://lambda.jstolarek.com/2015/04/smarter-conditionals-with-dependent-types-a-quick-case-study/)

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

##Vinyl
* [vinyl](https://hackage.haskell.org/package/vinyl)
* [Programming in Vinyl / BayHac 2014](https://vimeo.com/95694918)
* [Vinyl: Records in Haskell and Type Theory](https://vimeo.com/102785458)
