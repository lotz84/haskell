Haskell には手続き型言語で慣れ親しんだfor文が存在しない

```c
int sum = 0;
for (int i = 1; i <= 10; i++) {
   sum += i;
}
printf("%d\n", sum);
```

このように1から10までを足す関数を書くときは

```haskell
sum :: [Int] -> Int
sum []     = 0
sum (x:xs) = x + sum xs

main = print (sum [1..10])
```

再帰を使って書くことになる

* [再帰ドリル](https://github.com/kazu-yamamoto/recursion-drill)
* [末尾再帰最適化](https://ja.wikipedia.org/wiki/%E6%9C%AB%E5%B0%BE%E5%86%8D%E5%B8%B0#.E6.9C.AB.E5.B0.BE.E5.91.BC.E5.87.BA.E3.81.97.E6.9C.80.E9.81.A9.E5.8C.96)
* [Spirals, Snowflakes & Trees: Recursion in Pictures](http://learn.hfm.io/fractals.html)
* [Haskell Basics: How to Loop](http://andyfriesen.com/2015/12/18/haskell-basics-how-to-loop.html)
* [Haskell Diary - #1 Recursion](http://akashagrawal.me/haskell-diary-1-recursion/)
* [Some simple derivations of recursive functions](http://myhaskelljournal.com/some-simple-derivations-of-recursive-functions/)

##map, filter, foldr

> 変な話なのですが、再帰をよく理解したら、なるべく再帰を使ってはいけません

出典: [Haskellの文法(再帰編)](http://d.hatena.ne.jp/kazu-yamamoto/20110829/1314584585)

高階関数で実現できる再帰のパターンは再帰で書かない方が読みやすい

```haskell
doubleList :: [Int] -> [Int]
-- doubleList []     = []
-- doubleList (x:xs) = (x * 2) : doubleList xs
doubleList xs = map (*2) xs

evenElements :: [Int] -> [Int]
-- evenElements []     = []
-- evenElements (x:xs) = if even x then (x : evenElements xs) else evenElements xs
evenElements xs = filter even xs
```

###foldl, foldr

> * 正格データ（数値）を生成するには末尾再帰
> * 遅延データ（リスト）を生成するには普通の再帰

出典: <http://d.hatena.ne.jp/kazu-yamamoto/20091122/1258899591>

* [foldl](https://hackage.haskell.org/package/foldl)
* [Type introduction illustrated for casual haskellers](http://takenobu-hs.github.io/downloads/type_introduction_illustrated.pdf)
* [Examining Hackage: folds](http://jozefg.bitbucket.org/posts/2014-12-27-folds.html)
* [A tutorial on the universality and expressiveness of fold](http://www.cs.nott.ac.uk/~gmh/fold.pdf)
* [foldlをfoldrで実装する](http://qiita.com/arowM/items/91a9bd8ea83168d412ab)
* [The Magic of Folds](http://www.parsonsmatt.org/2016/03/24/the_magic_of_folds.html)

##リスト
* [(cons cat (cons cat nil))](https://twitter.com/lvsn/status/533685461957349376)
* [split](https://hackage.haskell.org/package/split)
* [An Introduction to Recursion Schemes](http://patrickthomson.ghost.io/an-introduction-to-recursion-schemes/)
* [dlist](http://hackage.haskell.org/package/dlist)
* [代数的データ型を使わないリスト](http://maoe.hatenadiary.jp/entry/20110402/1301677925)

##Foldable/Traversable
###Foldable

```haskell
class Foldable t where
    foldr :: (a -> b -> b) -> b -> t a -> b
```

* [Data.Foldable](https://hackage.haskell.org/package/base/docs/Data-Foldable.html)
* [Foldable with metadata](http://kenta.blogspot.jp/2015/08/clomduww-foldable-with-metadata.html)

###Traversable

```haskell
class (Functor t, Foldable t) => Traversable t where
    sequenceA :: Applicative f => t (f a) -> f (t a)
```

* [Data.Traversable](https://hackage.haskell.org/package/base/docs/Data-Traversable.html)
* [Traversable functor](http://mbps.hatenablog.com/entry/2014/09/22/100000)
* [Domains, Sets, Traversals and Applicatives](http://comonad.com/reader/2015/domains-sets-traversals-and-applicatives/)
* [String diagrams, traversables, and positive braids](http://parametricity.com/posts/2015-07-18-braids.html)
* [On the Static Nature of Traversals](http://r6.ca/blog/20121209T182914Z.html)
* [The Essence of the Iterator Pattern](https://www.cs.ox.ac.uk/jeremy.gibbons/publications/iterator.pdf)
* [witherable](https://hackage.haskell.org/package/witherable)
* [snoyberg/mono-traversable](https://github.com/snoyberg/mono-traversable)

####Distributive
Distributive is the categorical dual of Traversable.

```haskell
class Functor g => Distributive g where
    distribute  :: Functor f => f (g a) -> g (f a)
```

* [Data.Distributive](https://hackage.haskell.org/package/distributive/docs/Data-Distributive.html)

##領域理論・不動点意味論
* [不動点の話](http://d.hatena.ne.jp/kazu-yamamoto/20110426/1303810333)
* [Haskell/不動点と再帰](https://ja.wikibooks.org/wiki/Haskell/%E4%B8%8D%E5%8B%95%E7%82%B9%E3%81%A8%E5%86%8D%E5%B8%B0)
* [Solving Recursive Equations](http://jozefg.bitbucket.org/posts/2015-08-14-solve-domains.html)
* [Haskell/Denotational semantics](https://ja.wikibooks.org/wiki/Haskell/Denotational_semantics)
* [Domain Theory](http://www.cs.bham.ac.uk/~axj/pub/papers/handy1.pdf)
* [再帰的関数論](http://www.kurims.kyoto-u.ac.jp/~cs/cs2011_terui.pdf)
* [再帰プログラムの意味論について](http://www.kurims.kyoto-u.ac.jp/~hassei/papers/sugaku07.pdf)
* [Domain Theory: An Introduction](https://arxiv.org/abs/1605.05858v1)

```haskell
fact = fix $ \fact n -> if n == 0 then 1 else n * fact (n-1)
```

##Catamorphism, Anamorphism
* [Catamorphisms in 15 Minutes!](http://chrislambda.github.io/blog/2014/01/30/catamorphisms-in-15-minutes/)
* [Functional Programming with Bananas, Lenses, Envelopes and Barbed Wire](http://eprints.eemcs.utwente.nl/7281/01/db-utwente-40501F46.pdf)
* [再帰のパターン](http://maoe.hatenadiary.jp/entry/20090820/1250782646)
* [関西関数型道場 - 第参回 S2 「再帰について」](https://www.youtube.com/watch?v=mPH95hS3P1c)
* [An Introduction to Recursion Schemes](http://patrickthomson.ghost.io/an-introduction-to-recursion-schemes/)
* [Recursion Schemes, Part 2: A Mob of Morphisms](http://patrickthomson.ghost.io/recursion-schemes-part-2/)
* [Practical Recursion Schemes](https://medium.com/@jaredtobin/practical-recursion-schemes-c10648ec1c29)
* [F始代数](http://nineties.github.io/category-seminar/7.html#/43)
* [Initial Algebra Semantics for Cyclic Sharing Tree Structures](http://arxiv.org/abs/1007.4266v2)
* [An Introduction to Recursion Schemes](http://blog.sumtypeofway.com/an-introduction-to-recursion-schemes/)
* [Recursion Schemes, Part 2: A Mob of Morphisms](http://blog.sumtypeofway.com/recursion-schemes-part-2/)
* [Hylomorphism](http://mbps.hatenablog.com/entry/2014/10/17/010205)
* [ITERATION AND PRIMITIVE RECURSION IN CATEGORICAL TERMS](http://www.cs.ru.nl/barendregt60/essays/geuvers_poll/art08_geuvers_poll.pdf)
* [CATEGORICAL PROGRAMMING WITH INDUCTIVE AND COINDUCTIVE TYPES](http://kodu.ut.ee/~varmo/papers/thesis.pdf)
* [Catamorphism](http://mbps.hatenablog.com/entry/2013/05/15/032507)
* [Theory and Practice of Fusion](http://www.cs.ox.ac.uk/ralf.hinze/publications/IFL10.pdf)
* [Dynamorphism 〜 Haskellでも動的計画法がしたい！ 〜](http://titech-ssr.blog.jp/archives/1047835805.html)
* [The recursion-schemes package](https://hackage.haskell.org/package/recursion-schemes)
* [Finite trees as initial algebra](https://theorylunch.wordpress.com/2013/02/28/finite-trees-as-initial-algebra/)
* [融合変換による最適化の理論的基盤と正当性](http://www.slideshare.net/sakai/20060627)
* [Zygomorphisms and Futumorphisms specialised to lists](http://stackoverflow.com/questions/36851766/zygomorphisms-and-futumorphisms-specialised-to-lists)

----

* [A Type-theoretic Reconstruction of the Visitor Pattern](http://www.cs.bham.ac.uk/~hxt/research/mfps-visitors.pdf)
* [プログラム意味論とトポロジー -再帰，相互作用，結び目-](http://www.kurims.kyoto-u.ac.jp/~hassei/papers/msj2010sept_slides.pdf)
