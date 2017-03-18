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
* [Polymorphic recursion combinator in Haskell](http://h2.jaguarpaw.co.uk/posts/polymorphic-recursion-combinator/)
* [Mutual Recursion in Final Encoding](http://aherrmann.github.io/programming/2016/05/28/mutual-recursion-in-final-encoding/)
* [Intro to Recursion (Haskell)](https://www.youtube.com/watch?v=w1tTs5vn_zo)
* [Mutual Recursion in Final Encoding](https://aherrmann.github.io/programming/2016/05/28/mutual-recursion-in-final-encoding/)
* [Foldable.mapM_, Maybe, and recursive functions](http://www.snoyman.com/blog/2017/01/foldable-mapm-maybe-and-recursive-functions)
* [Follow up on mapM_ - Michael Snoyman's blog](http://www.snoyman.com/blog/2017/01/follow-up-mapm)
* [haskell - Is there any way to inline a recursive function? - Stack Overflow](https://stackoverflow.com/questions/42179783/is-there-any-way-to-inline-a-recursive-function)
* [余再帰あれこれ](https://gist.github.com/uduki/4030269)

## map, filter, foldr

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

### foldl, foldr

> * 正格データ（数値）を生成するには末尾再帰
> * 遅延データ（リスト）を生成するには普通の再帰

出典: <http://d.hatena.ne.jp/kazu-yamamoto/20091122/1258899591>

* [foldl](https://hackage.haskell.org/package/foldl)
* [Type introduction illustrated for casual haskellers](http://takenobu-hs.github.io/downloads/type_introduction_illustrated.pdf)
* [Examining Hackage: folds](http://jozefg.bitbucket.org/posts/2014-12-27-folds.html)
* [A tutorial on the universality and expressiveness of fold](http://www.cs.nott.ac.uk/~gmh/fold.pdf)
* [foldlをfoldrで実装する](http://qiita.com/arowM/items/91a9bd8ea83168d412ab)
* [The Magic of Folds](http://www.parsonsmatt.org/2016/03/24/the_magic_of_folds.html)
* [effectfully/prefolds](https://github.com/effectfully/prefolds)
* [foldl vs foldl'](http://kseo.github.io/posts/2016-12-21-foldl-vs-foldl%27.html)

## リスト
* [(cons cat (cons cat nil))](https://twitter.com/lvsn/status/533685461957349376)
* [split](https://hackage.haskell.org/package/split)
* [dlist](http://hackage.haskell.org/package/dlist)
* [代数的データ型を使わないリスト](http://maoe.hatenadiary.jp/entry/20110402/1301677925)

## Foldable/Traversable
### Foldable

```haskell
class Foldable t where
    foldr :: (a -> b -> b) -> b -> t a -> b
```

* [Data.Foldable](https://hackage.haskell.org/package/base/docs/Data-Foldable.html)
* [Foldable with metadata](http://kenta.blogspot.jp/2015/08/clomduww-foldable-with-metadata.html)

### Traversable

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
* [Why Traversable is the real deal](http://www.corecursion.net/post/2017-01-12-Why_Traversable_is_the_real_deal)

#### Distributive
Distributive is the categorical dual of Traversable.

```haskell
class Functor g => Distributive g where
    distribute  :: Functor f => f (g a) -> g (f a)
```

* [Data.Distributive](https://hackage.haskell.org/package/distributive/docs/Data-Distributive.html)

## Catamorphism, Anamorphism
* [Catamorphisms in 15 Minutes!](http://chrislambda.github.io/blog/2014/01/30/catamorphisms-in-15-minutes/)
* [Functional Programming with Bananas, Lenses, Envelopes and Barbed Wire](http://eprints.eemcs.utwente.nl/7281/01/db-utwente-40501F46.pdf)
* [再帰のパターン](http://maoe.hatenadiary.jp/entry/20090820/1250782646)
* [関西関数型道場 - 第参回 S2 「再帰について」](https://www.youtube.com/watch?v=mPH95hS3P1c)
* [An Introduction to Recursion Schemes](http://patrickthomson.ghost.io/an-introduction-to-recursion-schemes/)
* [Recursion Schemes, Part 2: A Mob of Morphisms](http://patrickthomson.ghost.io/recursion-schemes-part-2/)
* [Recursion Schemes, Part III: Folds in Context](http://blog.sumtypeofway.com/recursion-schemes-part-iii-folds-in-context/)
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
* [The recursion-schemes package](https://hackage.haskell.org/package/recursion-schemes)
* [Finite trees as initial algebra](https://theorylunch.wordpress.com/2013/02/28/finite-trees-as-initial-algebra/)
* [融合変換による最適化の理論的基盤と正当性](http://www.slideshare.net/sakai/20060627)
* [Zygomorphisms and Futumorphisms specialised to lists](http://stackoverflow.com/questions/36851766/zygomorphisms-and-futumorphisms-specialised-to-lists)
* [Talking Bananas](http://homepages.inf.ed.ac.uk/slindley/papers/talking-bananas-draft-march2016.pdf)
* [Practical Recursion Schemes](http://jtobin.ca/practical-recursion-schemes)
* [A Tour of Some Useful Recursive Types](http://jtobin.ca/tour-of-some-recursive-types)
* [Monadic Recursion Schemes](http://jtobin.ca/monadic-recursion-schemes)
* [Time Traveling Recursion Schemes](http://jtobin.ca/time-traveling-recursion)
* [Promorphisms, Pre and Post](https://jtobin.io/promorphisms-pre-post)
* [What's in a Fold: The Basic Catamorphism in recursion-schemes - The Life Monadic](http://duplode.github.io/posts/whats-in-a-fold.html)
* [Detecting Recursion Schemes in Haskell Functions (...) - Adam D. Barwell (Lambda Days 2017) - YouTube](https://www.youtube.com/watch?v=StVSC7ZSNIk)
