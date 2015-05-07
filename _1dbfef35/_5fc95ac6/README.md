#基本と関数と型
##Hello World

```bash
$ vim hello.hs
```

```haskell
main = putStrLn "Hello World!"
```

```bash
$ runhaskell hello.hs
Hello World!
```

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

```shell
$ cabal install hlint
$ hlint code.hs
```

[hlint](https://hackage.haskell.org/package/hlint)

##Basics
* [Try Haskell](https://tryhaskell.org/)
* [Basics](http://www.scs.stanford.edu/14sp-cs240h/slides/basics-slides.html)
* [What I Wish I Knew When Learning Haskell](http://www.stephendiehl.com/what/)
  * [日本語訳](https://github.com/Kinokkory/wiwinwlh-jp/wiki)
* 🎥 [Haskell Course by Philip Wadler](https://www.youtube.com/watch?v=AOl2y5uW0mA&list=PLtRG9GLtNcHBv4cuh2w1cz5VsgY6adoc3)
* 🎥 [Haskell from Scratch](https://www.youtube.com/watch?v=zZ_nI9E9g0I&list=PLxj9UAX4Em-Ij4TKwKvo-SLp-Zbv-hB4B&index=1)
* 🎥 [Adventures in Haskell](https://www.youtube.com/watch?v=9AllRc64pVE&list=PL_xuff3BkASMOzBr0hKVKLuSnU4UIinKx)
* 🎥 [Sed implementation in Haskell](https://www.youtube.com/watch?v=0I90MTip-OQ&list=PLUQzXLQ6jvHL_k3QOMKXehVoZdk-sKtHd)
* 🎥 [Haskell Tutorial - LazyCasts](https://www.youtube.com/watch?v=5XLTRuKoOtM&index=2&list=PLvj5k87ljYYHwOOcdGvS3qi85IvjOW--8)
* 🎥 [Loop School](http://school.looprecur.com/)
* 🎥 [Introduction to functional programming in Haskell](https://www.youtube.com/watch?v=me_KkQfSFrQ)
* [99 Haskell](http://www.99haskell.org/)
* [TEACHING HASKELL TO A 10 YEAR OLD: DAY 1](https://superginbaby.wordpress.com/2015/04/08/teaching-haskell-to-a-10-year-old-day-1/)
* [anchor/haskell-cheat-sheets](https://github.com/anchor/haskell-cheat-sheets)
* [caiorss/Functional-Programming](https://github.com/caiorss/Functional-Programming#concepts)
* [Recommended Haskell reading and watching](https://secure.plaimi.net/~alexander/haskell.html)

> ゴルフでもトリッキーなコードでもなく、 計算の仕方を変えるだけでより直接的に、シンプルに、コードが短くなりました。 必要なのはやりたいことが実際にはどのような計算なのかということを認識することです。 難しく考えないようにしましょう。

出典: [非決定計算としてのリストモナド](http://tanakh.jp/posts/2012-02-22-list-monad.html)

```haskell
-- Freshman Haskell programmer
fac n = if n == 0 
           then 1
           else n * fac (n-1)

-- Tenured professor
fac n = product [1..n]
```

出典: [The Evolution of a Haskell Programmer](http://www.willamette.edu/~fruehr/haskell/evolution.html)

##関数
* [Curry](https://ro-che.info/ccc/10)

> We shall suppose that functional application is more binding than any other operator, so f x ++ y means (f x) ++ y and not f (x ++ y).

出典: [An Introduction to the Theory of Lists](https://www.cs.ox.ac.uk/files/3378/PRG56.pdf)

> Haskell 初心者は括弧ばかりの Lisp のようなコードを書く。中級者になると、($) が多くなる。上級者(言い過ぎか？)になると、($) が消えて、(.) が多くなる。

出典: [関数合成の妙技](http://d.hatena.ne.jp/kazu-yamamoto/20100702/1278036842)

###ポイントフリー
必要のないところでポイントワイズに書く必要はないが、あまりポイントフリーに拘りすぎないのも大事

* [ポイントフリースタイル入門](http://d.hatena.ne.jp/melpon/20111031/1320024473)
* [Haskellのフクロウ ((.)$(.))](http://uid0130.blogspot.jp/2014/11/haskell_17.html)
* [Blunt](https://evening-thicket-5270.herokuapp.com/)
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

* [Schrödinger's cat](https://ro-che.info/ccc/4)
* [Résumé](https://ro-che.info/ccc/11)
* [Can someone explain the concept behind Haskell's memoization?](http://programmers.stackexchange.com/questions/220746/can-someone-explain-the-concept-behind-haskells-memoization)
* [The Incomplete Guide to Lazy Evaluation (in Haskell)](https://hackhands.com/guide-lazy-evaluation-haskell/)

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

##型
* [Types & Kinds](http://slpopejoy.github.io/2015/04/10/Types/)
* [A Route To Learning The Haskell Type System](http://www.colourcoding.net/blog/archive/2015/03/02/a-route-to-learning-the-haskell-type-system.aspx)
* [Function Types](http://bartoszmilewski.com/2015/03/13/function-types/)

##データ構造
* [(cons cat (cons cat nil))](https://twitter.com/lvsn/status/533685461957349376)
* [Purely Functional Data Structures](http://www.cs.cmu.edu/~rwh/theses/okasaki.pdf)
* [bytestring](https://hackage.haskell.org/package/bytestring)
  * [A guided tour through the bytestring library](http://meiersi.github.io/HaskellerZ/meetups/2012%2001%2019%20-%20The%20bytestring%20library/slides.html)
* [array](https://hackage.haskell.org/package/array)
  * [すごい配列楽しく学ぼう](http://www.slideshare.net/xenophobia__/ss-14558187)
  * [Open Data Types and Open Functions](https://www.cs.ox.ac.uk/people/ralf.hinze/publications/PPDP06.pdf)
* [Part 1: Leonardo Random Access Lists](https://www.fpcomplete.com/user/edwardk/fibonacci/leonardo)
* [Part 2: Open-Ended Fibonacci Search](https://www.fpcomplete.com/user/edwardk/fibonacci/search)
* [Lazy unary numbers](http://www.edofic.com/posts/2015-05-03-unary-numbers.html)
* [Palindromic tree](http://adilet.org/blog/25-09-14/)

|記号|読み方|
|:---|:-----|
|`()`|unit  |
|`:` |cons  |
|`[]`|nil   |
|`++`|append|

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
* [OverloadedRecordFields revived](http://www.well-typed.com/blog/2015/03/overloadedrecordfields-revived/)
