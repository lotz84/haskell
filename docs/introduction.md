##環境構築
* [The Haskell User Experience](http://rickdzekman.com/thoughts/the-haskell-user-experience/)

```bash
$ # on Mac OSX
$ brew install haskell-stack
$ stack setup
$ alias ghc='stack ghc'
$ alias ghci='stack ghci'
```

##Haskell入門
* [Metaチュートリアル](https://wiki.haskell.org/Meta%E3%83%81%E3%83%A5%E3%83%BC%E3%83%88%E3%83%AA%E3%82%A2%E3%83%AB)

> 関数プログラミングを習得するには，これまで命令プログラミングで培った技術はいったん忘れ，真っ白な気持ちで臨む必要があります。関数型の山を登るためには，命令型の山を降りなければなりません。

出典: [第1章　関数プログラミングは難しくない！](http://gihyo.jp/dev/feature/01/functional-prog/0001)

* [Try Haskell](https://tryhaskell.org/) - ５分あれば出来る！
* [10分で学ぶHaskell](https://wiki.haskell.org/10%E5%88%86%E3%81%A7%E5%AD%A6%E3%81%B6Haskell)
* [ウォークスルー Haskell](http://walk.wgag.net/haskell/)
* こわくないHaskell入門
  * [初級](http://qiita.com/arowM/items/9ebfb7cafecd99290663)
  * [初級その2](http://qiita.com/arowM/items/33245802f9305a73082e)
* [Haskell 超入門](http://qiita.com/7shi/items/145f1234f8ec2af923ef)
* [参照透過性とは何だったのか](http://www.slideshare.net/RuiccRail/haskell-day2012)
* [Rubyistに贈るHaskell入門](http://qiita.com/techno-tanoC/items/1549d0efc044faf16c36)
* [お気楽 Haskell プログラミング入門](http://www.geocities.jp/m_hiroi/func/haskell.html)
* [安定結婚問題を解きながらHaskellプログラミングを紹介しつつ恋愛について学ぶ](http://qiita.com/cutsea110/items/27d9f6db834b70e52dd9)
* [Haskellでポーカーを作ろう〜第一回 リストのシャッフルとカードの定義〜](http://tune.hateblo.jp/entry/2015/05/12/023112)
* [Haskellプログラミングのコツのようなもの](http://qiita.com/nobsun/items/ed33c22203734e706e9b)
* [やさしい Haskell 入門 (バージョン98)](http://www.sampou.org/haskell/tutorial-j/index.html)
* [Haskellの世界](https://skami.iocikun.jp/computer/haskell)
* [Haskell for Mac でちょっと Haskell をさわってみる](http://qiita.com/usamik26/items/d99bf694150a549b5078)
* [Learning Real Haskell Incrementally](http://begriffs.com/posts/2015-10-24-learning-haskell-incrementally.html)
* [Design Patterns in Haskell](http://blog.ezyang.com/2010/05/design-patterns-in-haskel/)
* [Haskell Design Patterns](https://www.packtpub.com/application-development/haskell-design-patterns)
* [The category design pattern](http://www.haskellforall.com/2012/08/the-category-design-pattern.html)
* [Ask-Elle: an adaptable programming tutor for Haskell giving automated feedback](http://www.cs.uu.nl/research/techreps/repo/CS-2015/2015-019.pdf)
* [What Code Does vs What Code Means](http://begriffs.com/posts/2015-12-26-what-code-means.html)
* [fptudelft/FP101x-Content-2015](https://github.com/fptudelft/FP101x-Content-2015)
* [Learning Real Haskell Incrementally](http://begriffs.com/posts/2015-10-24-learning-haskell-incrementally.html)
* [Free Programming Books#Haskell](https://github.com/vhf/free-programming-books/blob/master/free-programming-books.md#haskell)
* [Happy Learn Haskell Tutorial](http://www.happylearnhaskelltutorial.com/)
* [Yet Another Haskell Tutorial](http://www.umiacs.umd.edu/~hal/docs/daume02yaht.pdf)
* [Learning Haskell](http://learn.hfm.io/) -- 図が豊富でわかりやすい
* 🎥 [Haskell Basics](http://www.sonarlearning.co.uk/coursepage.php?topic=desktop&course=haskell-basics)
* [Real World Haskell](http://book.realworldhaskell.org/read/)
* [Introduction to functional programming with Haskell](https://ocramz.github.io/haskell/tutorials/2015/08/21/haskell-tut-v1.html)
* [PLEAC-Haskell](http://pleac.sourceforge.net/pleac_haskell/index.html)
* [A community maintained course for learning Haskell](http://openhaskell.com/)
* [99 Haskell](http://www.99haskell.org/)

##チートシート
* [What I Wish I Knew When Learning Haskell](http://www.stephendiehl.com/what/) [[ja](https://github.com/Kinokkory/wiwinwlh-jp/wiki)]
* [Haskellチートシート(翻訳)](http://qiita.com/techno-tanoC/items/1fa1c65db08da2440fc4)

##Examples
* [Basic Haskell Examples](http://www.haskellforall.com/2015/10/basic-haskell-examples.html)
* [Haskell by Example](http://lotz84.github.io/haskellbyexample/)

###エラトステネスの篩

```haskell
primes = sieve [2..]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

-- ghci> primes
-- [2,3,5,7,11,13,17,19,23,..
```

* [The Genuine Sieve of Eratosthenes](http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf)
* [The Genuine Sieve of Eratosthenes](http://vicarie.in/posts/sieve-of-eratos.html)
* [Haskell programmers are liars](http://www.garrisonjensen.com/2015/05/13/haskell-programs-are-lies.html)
* [An Optimal Haskell Quicksort](https://gautamcgoel.wordpress.com/2015/08/27/an-optimal-haskell-quicksort/)

###FizzBuzz

```hs
let (m ~> str) x = str <$ guard (x `mod` m == 0)
in map (fromMaybe . show <*> 3 ~> "fizz" <> 5 ~> "buzz")
```

* <https://www.reddit.com/r/haskell/comments/2cum9p>
* [Haskellで書かれたおもしろいFizzBuzz ― Haskellで読めないコードに遭遇した時に解読する方法を徹底解説！](http://itchyny.hatenablog.com/entry/2015/12/27/150000)

##Editor
###Vim
* [begriffs/haskell-vim-now](https://github.com/begriffs/haskell-vim-now?hr=2)
* [VimでHaskellしよう](http://qiita.com/yukiasai/items/92a2b343b6519b38f402)
* [Vim用のHaskellインデントプラグインvim-haskell-indentを作りました](http://itchyny.hatenablog.com/entry/2015/10/30/000000)
* [Haskellでimport文をソートするプラグイン vim-haskell-sort-import を作りました](http://itchyny.hatenablog.com/entry/2016/01/23/190000)
* [Connecting Vim with your Haskell repl](http://begriffs.com/posts/2013-08-19-connecting-vim-with-your-haskell-repl.html)

###Atom
* [Switching from Vim to Atom (A Haskeller's Perspective)](http://edsko.net/2015/03/07/vim-to-atom/)
* [haskell-pointfree package](https://atom.io/packages/haskell-pointfree)

###Others
* [Leksah](http://leksah.org/)
* [Haskell for Mac](http://haskellformac.com/)
* [EclipseFP](http://eclipsefp.github.io/)
* [[Haskell-cafe] [ANN] haskell-ide project](https://mail.haskell.org/pipermail/haskell-cafe/2015-October/121875.html)
* [The new haskell-ide repo](https://www.fpcomplete.com/blog/2015/10/new-haskell-ide-repo)
* [Haskell IDE Engine progress report November 2015](https://github.com/haskell/haskell-ide-engine/blob/master/docs/Report-2015-11.md)
* [Haskell IDE Engine progress report for December 2015.](https://github.com/haskell/haskell-ide-engine/blob/master/docs/Report-2015-12.md)
* [VS CodeでHaskellの簡単な環境を作る](http://azaika.hateblo.jp/entry/2015/12/19/151554)
* [wandernauta/viskell](https://github.com/wandernauta/viskell)
* [haskell/haskell-mode](https://github.com/haskell/haskell-mode)

##基本
* [The rebase package](http://hackage.haskell.org/package/rebase)
* [Base で定義されている演算子の一覧](http://hackage.haskell.org/package/acme-operators/docs/Acme-Operators-Base.html)
* [The base-prelude package](https://hackage.haskell.org/package/base-prelude)
* [順列列挙関数（素朴な実装）](http://qiita.com/nobsun/items/babd28fe81ba3b9f304f)

##関数
* [A simple Haskell function](http://neilmitchell.blogspot.jp/2016/01/a-simple-haskell-function.html)

###パターンマッチ
* [Pattern matching](http://mbps.hatenablog.com/entry/2014/10/04/010000)
* [PATTERN MATCHING: WOT'S... UH THE DEAL?](http://www.stackbuilders.com/news/pattern-matching-wot-s-uh-the-deal)
* [Pattern and Guard Extensions](https://www.fpcomplete.com/school/to-infinity-and-beyond/pick-of-the-week/guide-to-ghc-extensions/pattern-and-guard-extensions)

###多変数関数とカリー化
* [Curry](https://ro-che.info/ccc/10)
* [Loop School - Curring](http://school.looprecur.com/?video=122330958)
* [Haskell Functions Take One Argument](http://tonymorris.github.io/blog/posts/haskell-functions-take-one-argument/)
* [A taste of Curry](https://jeltsch.wordpress.com/2013/04/27/a-taste-of-curry/)

```haskell
curry :: ((a, b) -> c) -> a -> b -> c
uncurry :: (a -> b -> c) -> (a, b) -> c
```

> Haskell 初心者は括弧ばかりの Lisp のようなコードを書く。中級者になると、($) が多くなる。上級者(言い過ぎか？)になると、($) が消えて、(.) が多くなる。

出典: [関数合成の妙技](http://d.hatena.ne.jp/kazu-yamamoto/20100702/1278036842)

###ポイントフリー
必要のないところでポイントワイズに書く必要はないが、あまりポイントフリーに拘りすぎないのも大事

* [ポイントフリースタイル入門](http://d.hatena.ne.jp/melpon/20111031/1320024473)
* [Haskellのフクロウ ((.)$(.))](http://uid0130.blogspot.jp/2014/11/haskell_17.html)
* [Blunt](https://blunt.herokuapp.com/)
  * [pointfree](https://hackage.haskell.org/package/pointfree)

###遅延評価
* [Schrödinger's cat](https://ro-che.info/ccc/4)
* [Résumé](https://ro-che.info/ccc/11)
* [正格評価と遅延評価（基本編）](http://qiita.com/ruicc/items/07143c9e78c697227706)
* [正格評価と遅延評価（詳細編）](http://qiita.com/ruicc/items/31a269f93404268d80d7)
* [takenobu-hs/lazy_evaluation](https://github.com/takenobu-hs/lazy_evaluation)
* [なぜHaskellでタライ回しが速いのか、あるいは遅延評価とSTG](http://qiita.com/ruicc/items/b8b3c61a12baa1af3c69)

> One very interesting comparison is that lazy evaluation is to the CPU what garbage collection is to memory.

出典: <http://scott.sauyet.com/Javascript/Talk/2014/01/FuncProgTalk/#slide-40>

**遅延評価を利用したメモ化の実装例**

```haskell
fibs :: [Integer]
fibs = map fib [0..]

fib :: Int -> Integer
fib 0 = 1
fib 1 = 1
fib n = fibs !! (n-1) + fibs !! (n-2)
```

* [The Incomplete Guide to Lazy Evaluation (in Haskell)](https://hackhands.com/guide-lazy-evaluation-haskell/)
* [If Haskell were strict, what would the laziness be like?](http://nikita-volkov.github.io/if-haskell-were-strict/)
* [How to force a list](https://ro-che.info/articles/2015-05-28-force-list)
* [Thinking with Laziness](http://begriffs.com/posts/2015-06-17-thinking-with-laziness.html)
* [How Laziness Works](http://two-wrongs.com/how-laziness-works)
* [Haskell memoization](http://lukahorvat.github.io/programming/2014/11/18/haskell-memoization/)

###部分関数
* [Partial Function Considered Harmful](http://tanakh.jp/posts/2011-12-25-partial-function-considered-harmful.html)
* <https://twitter.com/GabrielG439/status/671803691591077888>
* [24 days of Hackage, 2015: day 16: safe; what is safety anyway?](http://conscientiousprogrammer.com/blog/2015/12/16/24-days-of-hackage-2015-day-16-safe-what-is-safety-anyway/)
* [部分関数をどう扱うか(spoonの紹介)](http://qiita.com/techno-tanoC/items/1b725713cd01bdf83b40)
* [The spoon package](https://hackage.haskell.org/package/spoon)

##型
* [Types Don't Lie, But They Won't Reveal Everything](http://www.cli-nerd.com/2016/01/18/types-dont-lie-but-they-dont-reveal-everything.html)

---

* [Generalizing function composition](http://jaspervdj.be/posts/2014-10-17-generalizing-function-composition.html)
* [Haskell Symposium 2012. Koen Claessen: Shrinking and showing functions](https://www.youtube.com/watch?v=CH8UQJiv9Q4)
* [Making a fast curry Push/enter vs eval/apply for higher-order languages](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.134.9317&rep=rep1&type=pdf)
* [A Pragmatic Case for Static Typing with Brian Hurt](https://vimeo.com/72870631)
* [On stateless software design: what is state ?](http://www.leonmergen.com/code/2015/12/04/on-stateless-software-design-what-is-state.html)
* [Does Haskell make promises it can't keep? or The big problem with wrapping numeric types](https://gist.github.com/tdoris/de36d2306edc5d6e9e7d#file-promises-md)
