##環境構築
* [Windows](https://www.haskell.org/downloads/windows)
* [Linux](https://www.haskell.org/downloads/linux)
* [OS X](https://www.haskell.org/downloads/osx)
    * [Haskell for Mac OS X](http://ghcformacosx.github.io/) (おすすめ)

エディタはvimでよい

* [hlint](https://hackage.haskell.org/package/hlint)

##Hello World
###GHCi
Haskell には GHCi というREPLが標準でついている。

```haskell
$ ghci
ghci> "Hello World"
"Hello World"
```

###ファイルから実行

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

###コンパイルして実行
上記の`hello.hs`を使う

```bash
$ ghc hello.hs
$ ./hello
Hello World!
```

##Examples

> 関数プログラミングを習得するには，これまで命令プログラミングで培った技術はいったん忘れ，真っ白な気持ちで臨む必要があります。関数型の山を登るためには，命令型の山を降りなければなりません。

出典: [第1章　関数プログラミングは難しくない！](http://gihyo.jp/dev/feature/01/functional-prog/0001)

###クイックソート

```haskell
quicksort [] = []
quicksort (p:xs) = quicksort [ x | x <- xs, x <= p] ++ [p] ++ quicksort [ x | x <- xs, x > p]
```

###エラトステネスの篩(素数生成)

```haskell
primes = sieve [2..]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
-- ghci> primes
-- [2,3,5,7,11,13,17,19,23,..
```

* [The Genuine Sieve of Eratosthenes](http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf)
* [Haskell programmers are liars](http://www.garrisonjensen.com/2015/05/13/haskell-programs-are-lies.html)

###フィボナッチ数列

```haskell
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
-- ghci> fibs
-- [1,1,2,3,5,8,13,21,34,55,89,..
```

しかしこれらの実装は綺麗であるが必ずしも効率がいいとは限らない([参考](http://d.hatena.ne.jp/kazu-yamamoto/20100624/1277348961))

##Basics
* [Try Haskell](https://tryhaskell.org/)
* [99 Haskell](http://www.99haskell.org/)
* [Basics](http://www.scs.stanford.edu/14sp-cs240h/slides/basics-slides.html)
* [What I Wish I Knew When Learning Haskell](http://www.stephendiehl.com/what/) [[ja](https://github.com/Kinokkory/wiwinwlh-jp/wiki)]

###Video Tutorials
* [Haskell Course by Philip Wadler](https://www.youtube.com/watch?v=AOl2y5uW0mA&list=PLtRG9GLtNcHBv4cuh2w1cz5VsgY6adoc3)
* [Haskell from Scratch](https://www.youtube.com/watch?v=zZ_nI9E9g0I&list=PLxj9UAX4Em-Ij4TKwKvo-SLp-Zbv-hB4B&index=1)
* [Adventures in Haskell](https://www.youtube.com/watch?v=9AllRc64pVE&list=PL_xuff3BkASMOzBr0hKVKLuSnU4UIinKx)
* [Sed implementation in Haskell](https://www.youtube.com/watch?v=0I90MTip-OQ&list=PLUQzXLQ6jvHL_k3QOMKXehVoZdk-sKtHd)
* [Haskell Tutorial - LazyCasts](https://www.youtube.com/watch?v=5XLTRuKoOtM&index=2&list=PLvj5k87ljYYHwOOcdGvS3qi85IvjOW--8)
* [Introduction to functional programming in Haskell](https://www.youtube.com/watch?v=me_KkQfSFrQ)
* [Recommended Haskell reading and watching](https://secure.plaimi.net/~alexander/haskell.html)

##基本的な型
|型   |値   |説明 |
|:----|:----|:----|
|`()`        |`()`               |unitと読む。ただひとつの値しか持たない型|
|`Bool`      |`True`,`False`     |真偽値を値として持つ型                  |
|`Int`       |ex) 1, 2, 3        |有界な整数を表す型                      |
|`Integer`   |ex) 1, 2, 3        |多倍長精度の整数を表す型                |
|`Float`     |ex) 1.0, 2.1, 3.2  |単精度浮動小数点数を表す型              |
|`Double`    |ex) 1.0, 2.1, 3.2  |倍精度浮動小数点数を表す型              |
|`Char`      |ex) 'a', 'b', 'c'  |文字を表す型。一文字                    |
|`String`    |ex) "abc", "123"   |文字列を表す型。`[Char]`と同じ          |
|`[a]`       |ex) [1, 2, 3]      |リストを表す型                          |
|`Maybe a`   |`Nothing`, `Just a`|存在しないかもしれない値を表す型        |
|`IO a`      |-                  |副作用を持つ計算に使われる型            |
|`(a, b)`    |ex) (1, 2)         |タプル。２つの値を組み合わせられる型    |
|`Either a b`|`Left a`, `Right b`|`a`か`b`かどちらかの値を取りうる型      |
|`a -> b`    |ex) id, const, head|関数の型                                |

`ghci`では

```haskell
ghci> :t 式
```

とすることで式の型を調べることが出来る。

```haskell
ghci> :t True
True :: Bool

ghci> :t 'a'
'a' :: Char

ghci> :t "abc"
"abc" :: [Char]

ghci> :t :t Just 'a'
Just 'a' :: Maybe Char

ghci> :t ('a', "abc")
('a', "abc") :: (Char, [Char])

ghci> :t Left 'a'
Left 'a' :: Either Char b

ghci> :t ()
() :: ()
```

###型注釈

式の任意の場所にその値がどのような型であるかを注釈として書くことが出来る。

```haskell
ghci> 1 :: Int
1
ghci> 5 :: Double
5.0
ghci> 1 + (2 :: Int)
3
ghci> Left 'a' :: Either Char Int
Left 'a'
```

##関数
* [Generalizing function composition](http://jaspervdj.be/posts/2014-10-17-generalizing-function-composition.html)
* [Haskell Symposium 2012. Koen Claessen: Shrinking and showing functions](https://www.youtube.com/watch?v=CH8UQJiv9Q4)

```haskell
-- 型の宣言
fac :: Integer -> Integer
-- 関数の実装
fac 0 = 1
fac n = n * fac (n-1)
-- ghci> fac 5
-- 120
```

関数適用の優先度はとても高く、上の例では`n * fac (n-1)`は`n * (fac (n-1))`と計算されます。

```haskell
-- Freshman Haskell programmer
fac n = if n == 0 
           then 1
           else n * fac (n-1)

-- Tenured professor
fac n = product [1..n]
```

出典: [The Evolution of a Haskell Programmer](http://www.willamette.edu/~fruehr/haskell/evolution.html)

###パターンマッチ
* [Pattern matching](http://mbps.hatenablog.com/entry/2014/10/04/010000)
* [PATTERN MATCHING: WOT'S... UH THE DEAL?](http://www.stackbuilders.com/news/pattern-matching-wot-s-uh-the-deal)

###多変数関数とカリー化
* [Curry](https://ro-che.info/ccc/10)
* [Loop School - Curring](http://school.looprecur.com/?video=122330958)

```haskell
ghci> :t take
take :: Int -> [a] -> [a]
```

`Int -> [a] -> [a]`は`Int -> ([a] -> [a])`すなわち整数をとってリストをとってリストを返す関数を返す関数として定義されている。実際に使うときは

```haskell
ghci> take 3 [1..]
[1,2,3]
```
の様に２変数関数のように使うことが出来る。このようにHaskellでは多変数関数を関数を返す関数として実装するのが普通である。

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
* [If Haskell were strict, what would the laziness be like?](http://nikita-volkov.github.io/if-haskell-were-strict/)
* [How to force a list](https://ro-che.info/articles/2015-05-28-force-list)

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
* [How to Define Data Types](https://www.youtube.com/watch?v=zV70nrsMEZg)
* [Refinement Types For Haskell](http://goto.ucsd.edu/~nvazou/refinement_types_for_haskell.pdf)

###代数的データ型
* [代数的データ型について](https://speakerdeck.com/amutake/dai-shu-de-detaxing-nituite-number-w8lt)

##動的型付けのエミュレート
* [Data.Dynamic](https://hackage.haskell.org/package/base/docs/Data-Dynamic.html)

```haskell
import Data.Dynamic

typeSwitch :: Dynamic -> IO ()
typeSwitch d = do
    case (fromDynamic d :: Maybe Int) of
        Nothing -> return ()
        Just i  -> putStrLn $ "This is Int! : " ++ show i
    case (fromDynamic d :: Maybe Bool) of
        Nothing -> return ()
        Just b  -> putStrLn $ "This is Bool!: " ++ show b

main = do
    let d1 = toDyn (8 :: Int)
    let d2 = toDyn (True :: Bool)

    typeSwitch d1
    -- This is Int! : 8
    typeSwitch d2
    -- This is Bool!: True
```

##データ構造
* [(cons cat (cons cat nil))](https://twitter.com/lvsn/status/533685461957349376)
* [Purely Functional Data Structures](http://www.cs.cmu.edu/~rwh/theses/okasaki.pdf)
  * [sile/pfds-ch1.md](https://gist.github.com/sile/e0cb80dc021ecb2d772d)
  * [sile/pfds-ch6.md](https://gist.github.com/sile/8fc169d694fa5f02fe2c)
  * [sile/pfds-7.md](https://gist.github.com/sile/9861a9d240eeb55555c2)
* [bytestring](https://hackage.haskell.org/package/bytestring)
  * [A guided tour through the bytestring library](http://meiersi.github.io/HaskellerZ/meetups/2012%2001%2019%20-%20The%20bytestring%20library/slides.html)
* [array](https://hackage.haskell.org/package/array)
  * [すごい配列楽しく学ぼう](http://www.slideshare.net/xenophobia__/ss-14558187)
  * [Open Data Types and Open Functions](https://www.cs.ox.ac.uk/people/ralf.hinze/publications/PPDP06.pdf)
* [Part 1: Leonardo Random Access Lists](https://www.fpcomplete.com/user/edwardk/fibonacci/leonardo)
* [Part 2: Open-Ended Fibonacci Search](https://www.fpcomplete.com/user/edwardk/fibonacci/search)
* [Lazy unary numbers](http://www.edofic.com/posts/2015-05-03-unary-numbers.html)
* [Palindromic tree](http://adilet.org/blog/25-09-14/)
* [OBVERSE AND REVERSE](http://www.stackbuilders.com/news/obverse-and-reverse)
* [foldl](https://hackage.haskell.org/package/foldl)
* [Examining Hackage: folds](http://jozefg.bitbucket.org/posts/2014-12-27-folds.html)
* [Moore for Less](https://www.fpcomplete.com/user/edwardk/moore)
* [Exact Real Arithmetic in Haskell](https://www.youtube.com/watch?v=LJQgYBQFtSE)

|記号|読み方|
|:---|:-----|
|`[]`|nil   |
|`:` |cons  |
|`++`|append|

###Zipper
* [zipper](https://hackage.haskell.org/package/zipper)
* [Zippers - LYAH](http://learnyouahaskell.com/zippers)
* [データ型の微分](http://ja.wikibooks.org/wiki/Haskell/Zippers#.E3.83.87.E3.83.BC.E3.82.BF.E5.9E.8B.E3.81.AE.E5.BE.AE.E5.88.86)

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
