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
* [goな関数 - あどけない話](http://d.hatena.ne.jp/kazu-yamamoto/20171212/1513050147)
* [Travis Athougies - Dynamic Programming in Haskell is Just Recursion](http://travis.athougies.net/posts/2018-05-05-dynamic-programming-is-recursion.html)
* [不動点コンビネータで無名再帰を作る流れをおさらい - Qiita](https://qiita.com/todays-mitsui/items/a1cd29974ced3f011515)

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
* [foldl vs. foldl'に終止符を打つ - Qiita](https://qiita.com/autotaker1984/items/09c5ceaa13e9077f5359)
* [Fold and Unfold for Program Semantics](http://www.cs.nott.ac.uk/~pszgmh/semantics.pdf)
* [aymannadeem/foldilocks: Tutorial using ghci to make folds easier. Come for the tutorial, stay for the fold puns.](https://github.com/aymannadeem/foldilocks)
* [Rewriting functions with fold and reduce \| Max Strübing](https://maex.me/2019/04/rewriting-functions-with-fold-and-reduce/)
* [Neil Mitchell's Haskell Blog: foldr under the hood](https://neilmitchell.blogspot.com/2019/04/foldr-under-hood.html)

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
* [The reducers package](https://hackage.haskell.org/package/reducers)
* [Data.Foldableの正体 - Qiita](https://qiita.com/lotz/items/424abee02fe598c60247)
* [パラメトリシティを使って自由モノイドが構成できることの証明 - Qiita](https://qiita.com/mkotha/items/8096d6ec527c9b4f21e0)
* [たのしい Foldable - Qiita](https://qiita.com/acple@github/items/089ee5707e78fecb5615)

### Traversable

```haskell
class (Functor t, Foldable t) => Traversable t where
    sequenceA :: Applicative f => t (f a) -> f (t a)
```

* [Data.Traversable](https://hackage.haskell.org/package/base/docs/Data-Traversable.html)
* [Traversable functor](http://mbps.hatenablog.com/entry/2014/09/22/100000)
* [Domains, Sets, Traversals and Applicatives](http://comonad.com/reader/2015/domains-sets-traversals-and-applicatives/)
* [On the Static Nature of Traversals](http://r6.ca/blog/20121209T182914Z.html)
* [The Essence of the Iterator Pattern](https://www.cs.ox.ac.uk/jeremy.gibbons/publications/iterator.pdf)
* [witherable](https://hackage.haskell.org/package/witherable)
* [snoyberg/mono-traversable](https://github.com/snoyberg/mono-traversable)
* [Proposal: Suggest explicit type application for Foldable length and friends : Inside 214-1E](http://blog.ezyang.com/2017/03/proposal-suggest-explicit-type-application-for-foldable-length/)
* [Accidentally Quadratic — GHC Derived Foldable and Traversable Instances](https://accidentallyquadratic.tumblr.com/post/134605666547/ghc-derived-foldable-and-traversable-instances)
* [Traversable: A Remix - The Life Monadic](http://duplode.github.io/posts/traversable-a-remix.html)
* [Beautiful Aggregations with Haskell \| Front Row](http://tech.frontrowed.com/2017/09/22/aggregations/)
* [benjamin.pizza - Zip-Folding](https://www.benjamin.pizza/posts/2018-01-10-zip-folding.html)
* [Polymorphic `mono-traversable`](https://github.com/effectfully/sketches/tree/master/poly-traversable)
* [Breadth-First Traversals in Far Too Much Detail - Donnacha Oisín Kidney](https://doisinkidney.com/posts/2018-06-03-breadth-first-traversals-in-too-much-detail.html)
* [Traversable のための圏論 - Hexirp's Blog](https://hexirp.github.io/blog/articles/category_theory_for_traversable)
* [Implicit Corecursive Queues - Donnacha Oisín Kidney](https://doisinkidney.com/posts/2019-05-14-corecursive-implicit-queues.html)
* [Applicative Sorting](http://elvishjerricco.github.io/2017/03/23/applicative-sorting.html)
* [treeowl/sort-traversable - Sort any Traversable container](https://github.com/treeowl/sort-traversable)

#### Distributive
Distributive is the categorical dual of Traversable.

```haskell
class Functor g => Distributive g where
    distribute  :: Functor f => f (g a) -> g (f a)
```

* [Data.Distributive](https://hackage.haskell.org/package/distributive/docs/Data-Distributive.html)

## Recursion Schemes
* [Recursion-scheme-generator](http://vmchale.com/recursion-scheme-generator/index.html)
* [recursion-schemes: Representing common recursion patterns as higher-order functions](http://hackage.haskell.org/package/recursion-schemes)
* [n番煎じのrecursion-scheme - The curse of λ](https://myuon.github.io/posts/recursion-scheme/)
* [CATEGORICAL PROGRAMMING WITH INDUCTIVE AND COINDUCTIVE TYPES](http://kodu.ut.ee/~varmo/papers/thesis.pdf)

### F始代数
* [F始代数](http://nineties.github.io/category-seminar/7.html#/43)
* [Understanding F-Algebras](https://www.schoolofhaskell.com/user/bartosz/understanding-algebras)
* [Catamorphisms in 15 Minutes!](http://chrislambda.github.io/blog/2014/01/30/catamorphisms-in-15-minutes/)
* [Finite trees as initial algebra](https://theorylunch.wordpress.com/2013/02/28/finite-trees-as-initial-algebra/)

### cata, ana, hylo, para
* [Functional Programming with Bananas, Lenses, Envelopes and Barbed Wire](http://eprints.eemcs.utwente.nl/7281/01/db-utwente-40501F46.pdf)
* [Review: Bananas, Lenses, Envelopes and Barbed Wire :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/recursion-schemes)
* [再帰のパターン](http://maoe.hatenadiary.jp/entry/20090820/1250782646)
* [Practical Recursion Schemes](https://medium.com/@jaredtobin/practical-recursion-schemes-c10648ec1c29)
* [What's in a Fold: The Basic Catamorphism in recursion-schemes - The Life Monadic](http://duplode.github.io/posts/whats-in-a-fold.html)
* [The Monad Cat - Programming with bananas and barbed wire. Part 1](https://monad.cat/posts/2016-05-10-barbed-wire.html)
* [Practical Recursion Schemes · jtobin.io](https://jtobin.io/practical-recursion-schemes)
* [A Tour of Some Useful Recursive Types · jtobin.io](https://jtobin.io/tour-of-some-recursive-types)
* [Monadic Recursion Schemes · jtobin.io](https://jtobin.io/monadic-recursion-schemes)
* [Stalking a Hylomorphism in the Wild \| Bartosz Milewski's Programming Cafe](https://bartoszmilewski.com/2017/12/29/stalking-a-hylomorphism-in-the-wild/)
* [Don't fear the cat-amorphism (nor the hylomorphism)](http://fho.f12n.de/posts/2014-05-07-dont-fear-the-cat.html)
* [Recursion Schemes By Example](https://recursion-schemes-by-example.chrispenner.ca/articles/recursive/basic-catamorphisms)
* [Sorting with Style · jtobin.io](https://jtobin.io/sorting-with-style) - hyloを使ってmergeソートを実装する
* [Sorting Slower with Style · jtobin.io](https://jtobin.io/sorting-slower-with-style) - apoを使って挿入ソートを実装する
* [おじいさん、今日のご飯はCatamorphismですよ - Qiita](https://qiita.com/rinse_/items/878a962f92e675f21695)
* [おじいさん、今日のご飯はAnamorphismですよ - Qiita](https://qiita.com/rinse_/items/022e212474e40da3a2fe)
* [おじいさん、今日のご飯はHylomorphismですよ - Qiita](https://qiita.com/rinse_/items/8335294ebb7e93cc84c2)

### mutu
* [(PDF) Make it Practical: A Generic Linear-Time Algorithm for Solving Maximum-Weightsum Problems](https://www.researchgate.net/publication/2630929_Make_it_Practical_A_Generic_Linear-Time_Algorithm_for_Solving_Maximum-Weightsum_Problems)
* [最大重み和問題の線形時間アルゴリズムの導出](https://www.jstage.jst.go.jp/article/jssst/18/5/18_5_483/_article/-char/ja/)
* [ナップサック問題およびその発展問題の統一的解法](https://www.jstage.jst.go.jp/article/jssst/18/2/18_2_301/_article/-char/ja/)

### 融合変換
* [Theory and Practice of Fusion](http://www.cs.ox.ac.uk/ralf.hinze/publications/IFL10.pdf)
* [融合変換による最適化の理論的基盤と正当性](http://www.slideshare.net/sakai/20060627)

### Other morphisms
* [Zygomorphisms and Futumorphisms specialised to lists](http://stackoverflow.com/questions/36851766/zygomorphisms-and-futumorphisms-specialised-to-lists)
* [Time Traveling Recursion Schemes · jtobin.io](https://jtobin.io/time-traveling-recursion)
* [Promorphisms, Pre and Post](https://jtobin.io/promorphisms-pre-post)
* [somehow-morphisms on fixed point written in Haskell](https://qiita.com/cutsea110/items/69889a99d30b627bc04a)

### 動的計画法
* [Haskell で動的計画法を書くための3つの方針](http://d.hatena.ne.jp/toslunar/20100408/1270719176)
* [「組合せ最適化でグループ分け」Haskellでやってみた](http://qiita.com/ttatsf/items/3789159bc4e880cc07bc)
* [Dynamorphism 〜 Haskellでも動的計画法がしたい！ 〜](http://titech-ssr.blog.jp/archives/1047835805.html)
* [動的計画法にData.Vector.constructNは使うべきではない。 - Qiita](https://qiita.com/autotaker1984/items/6e15bd36e1de50a0ad1d)

### 応用例
* [Program Reduction: A Win for Recursion Schemes](http://newartisans.com/2018/04/win-for-recursion-schemes/)
* [A Simple Hylomorphism Example – Colour Coding](https://colourcoding.net/2018/04/12/a-simple-hylomorphism-example/)
* [A catamorphic lambda-calculus interpreter](https://www.michaelpj.com/blog/2018/04/08/catamorphic-lc-interpreter.html)
* [An Introduction to Recursion Schemes](http://blog.sumtypeofway.com/an-introduction-to-recursion-schemes/)
  * [Recursion Schemes, Part II: A Mob of Morphisms](http://blog.sumtypeofway.com/recursion-schemes-part-2/)
  * [Recursion Schemes, Part III: Folds in Context](http://blog.sumtypeofway.com/recursion-schemes-part-iii-folds-in-context/)
  * [Recursion Schemes, Part IV: Time is of the Essence](http://blog.sumtypeofway.com/recursion-schemes-part-iv-time-is-of-the-essence/)
  * [Recursion Schemes, Part 4½: Better Living Through Base Functors](http://blog.sumtypeofway.com/recursion-schemes-part-41-2-better-living-through-base-functors/)
  * [Recursion Schemes, Part V: Hello, Hylomorphisms](http://blog.sumtypeofway.com/recursion-schemes-part-v/)
  * [Recursion Schemes, Part VI: Comonads, Composition, and Generality](https://blog.sumtypeofway.com/recursion-schemes-part-6-comonads-composition-and-generality/)
* [Haskell at Barclays: Exotic tools for exotic trades](http://www.timphilipwilliams.com/slides/HaskellAtBarclays.pdf)
* [Compdata Trees and Catamorphisms](https://blaxill.org/posts/compdata-trees-and-catamorphisms/)
* [累積百ます計算,パスカルの三角形,関・ベルヌーイ数を計算する - Qiita](https://qiita.com/cutsea110/items/6a28049337166d4d9c3f)

### その他
* [Practical deforestation for fixed-point structures – introducing tungsten \| Alexandre Moine’s blog](https://blog.nyarlathotep.one/2019/07/practical-deforestation-for-fixed-point-structures/)
* [ASTのための高階代数を元にした recursion schemes - Qiita](https://qiita.com/Mizunashi_Mana/items/d73162057ff276a3238a)
* [下方射と上方射の Haskell 実装 — Avendia](http://ziphil.com/diary/application/24.html)
* [続くといいな日記 – 始代数と終余代数が一致する条件](https://mizunashi-mana.github.io/blog/posts/2019/12/algebraic-compact-functor/)
