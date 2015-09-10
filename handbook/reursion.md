#再帰
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

main = print $ sum [1..10]
```

再帰を使って書くことになる

* [再帰ドリル](https://github.com/kazu-yamamoto/recursion-drill)
* [末尾再帰最適化](https://ja.wikipedia.org/wiki/%E6%9C%AB%E5%B0%BE%E5%86%8D%E5%B8%B0#.E6.9C.AB.E5.B0.BE.E5.91.BC.E5.87.BA.E3.81.97.E6.9C.80.E9.81.A9.E5.8C.96)

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

##領域理論
* fix
* [Solving Recursive Equations](http://jozefg.bitbucket.org/posts/2015-08-14-solve-domains.html)

##Catamorphism, Anamorphism
* [Functional Programming with Bananas, Lenses, Envelopes and Barbed Wire](http://eprints.eemcs.utwente.nl/7281/01/db-utwente-40501F46.pdf)
* [再帰のパターン](http://maoe.hatenadiary.jp/entry/20090820/1250782646)
* [関西関数型道場 - 第参回 S2 「再帰について」](https://www.youtube.com/watch?v=mPH95hS3P1c)
* [An Introduction to Recursion Schemes](http://patrickthomson.ghost.io/an-introduction-to-recursion-schemes/)
* [Recursion Schemes, Part 2: A Mob of Morphisms](http://patrickthomson.ghost.io/recursion-schemes-part-2/)
* [Practical Recursion Schemes](https://medium.com/@jaredtobin/practical-recursion-schemes-c10648ec1c29)
