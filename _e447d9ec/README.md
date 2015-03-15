#実用Haskell
[Haskell 2010 言語報告書](http://www.sampou.org/haskell/haskell2010-report-htja/)

##Parser

```haskell
type Source    = String
type Remainder = String
newtype Parser result = Parser { parse :: Source -> [(result, Remainder)] }
```

* [Monadic Parsing in Haskell](http://www.cs.nott.ac.uk/~gmh/pearl.pdf)
* [構文解析器結合子](https://www.ipsj.or.jp/07editj/promenade/4702.pdf)
   * [モナディック・パーサー](http://d.hatena.ne.jp/kazu-yamamoto/20080920/1221881130)
* [Parsec](http://www.haskell.org/haskellwiki/Parsec)

###コンパイラを作る
* [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours)
* [Implementing a JIT Compiled Language with Haskell and LLVM](http://www.stephendiehl.com/llvm/)
* [Write You a Haskell](http://dev.stephendiehl.com/fun/)

##理想のLazy IOを求めて
* [IO inside](https://www.haskell.org/haskellwiki/IO_inside)

[**The problem**](http://www.scs.stanford.edu/14sp-cs240h/slides/pipes-slides.html#(3))

```haskell
replicateM :: Monad m => Int -> m a -> m [a]
mapM :: Monad m => (a -> m b) -> [a] -> m [b]
sequence :: Monad m => [m a] -> m [a]
```

* Does not work on infinite lists
* You can't consume any results until everything has been processed
* You have to run the entire computation, even if you don't need every result
* This wastes memory by buffering every result

###History
* ✕ Lazy IO
* Deprecated [enumerator](https://hackage.haskell.org/package/enumerator)
* [iteratee](https://hackage.haskell.org/package/iteratee)
* [iterIO](https://hackage.haskell.org/package/iterIO)
* [machines](http://hackage.haskell.org/package/machines)

###io-streams
* [io-streams](http://hackage.haskell.org/package/io-streams)
* <http://yunomu.hatenablog.jp/entry/2013/09/22/160859>

----

> Conduits were created for the Yesod web framework. My understanding is that they were designed to be blazingly fast. Early versions of the library were highly stateful.
> 
> Pipes focus on elegance. They have just one type instead of several, form monad (transformer) and category instances, and are very "functional" in design.

出典: <http://stackoverflow.com/questions/9983840/what-are-the-pros-and-cons-of-enumerators-vs-conduits-vs-pipes>

###Pipes
* [Pipes.Tutorial](https://hackage.haskell.org/package/pipes/docs/Pipes-Tutorial.html)
* [Pipes](http://www.scs.stanford.edu/14sp-cs240h/slides/pipes-slides.html)

###Conduit
* <https://hackage.haskell.org/package/conduit>
* [Conduit Overview](https://www.fpcomplete.com/user/snoyberg/library-documentation/conduit-overview)
* [Simpler conduit library based on monadic folds](http://newartisans.com/2014/06/simpler-conduit-library/)
* [５分で分かるコンジット](http://melpon.org/yesodbookjp/conduit)
* [ConduitとHaskellでネットワークプロキシサーバを作る](http://tanakh.jp/posts/2012-07-01-conduit-0.5.html)
* [Conduitの使い方](http://qiita.com/siphilia_rn/items/f3d8d83496a8eab65274)

###例外処理
* [Haskell での例外処理](http://d.hatena.ne.jp/kazu-yamamoto/20120604/1338802792)
* [Haskellでの例外処理(その2)](http://d.hatena.ne.jp/kazu-yamamoto/20120605/1338871044)

##Web
* [Haskell でソケット通信をやってみる](http://yasutech.blogspot.jp/2012/01/haskell.html)
* [aeson](http://hackage.haskell.org/package/aeson)
* [buffer-builder](https://hackage.haskell.org/package/buffer-builder)

###Client
####Network.HTTP
> NOTE: This package only supports HTTP; it does not support HTTPS. Attempts to use HTTPS result in an error.

出典: <https://hackage.haskell.org/package/HTTP/docs/Network-HTTP.html>

####Alternatives
* [http-conduit](http://hackage.haskell.org/package/http-conduit)
* [twitter-conduit](http://hackage.haskell.org/package/twitter-conduit)

###Server
* [Haskell から見た node.js](http://d.hatena.ne.jp/kazu-yamamoto/20110825/1314254885)
* [Web](http://www.scs.stanford.edu/14sp-cs240h/slides/web-slides.html)
* [scotty-web/scotty](https://github.com/scotty-web/scotty)
* [agrafix/Spock](https://github.com/agrafix/Spock)

###Yesod
* [Yesod Web Framework](http://www.yesodweb.com/)
* [quick start guide](http://www.yesodweb.com/page/quickstart)
* [tutorial](http://yannesposito.com/Scratch/en/blog/Yesod-tutorial-for-newbies/)
* [i18n, authentication, authorization, and database](http://www.yesodweb.com/blog/2012/01/blog-example)
* [book](http://www.yesodweb.com/book)
* [cookbook](https://github.com/yesodweb/yesod/wiki/Cookbook)

##FRP

> Functional reactive programming (FRP) is a declarative approach to GUI design. The term declarative makes a distinction between the “what” and the “how” of programming. A declarative language allows you to say what is displayed, without having to specify exactly how the computer should do it.

出典: [What is Functional Reactive Programming?](http://elm-lang.org/learn/What-is-FRP.elm)

> 値（あるいは状態）を直接的に扱わないで、「時間とともに変化する値（状態）」と「振る舞い(behavior)」の関係性に注目して、宣言的にプログラムを表現する

出典: [FRP - Functional Reactive Programming](http://www.slideshare.net/kamimuraryo/frp-functional-reactive-programming)

* [FRPの話](http://maoe.hatenadiary.jp/entry/2012/12/24/011414)
* [【翻訳】あなたが求めていたリアクティブプログラミング入門](http://ninjinkun.hatenablog.com/entry/introrxja)
* [やさしいFunctional reactive programming（概要編）](http://maoe.hatenadiary.jp/entry/20100109/1263059731)
* [Q. （関数型）リアクティブプログラミングとは何ですか？](http://postd.cc/what-is-functional-reactive-programming/)
* <http://maoe.hatenadiary.jp/entry/20100116/1263661213>
* <http://maoe.hatenadiary.jp/entry/20100123/1264225964>
* <http://netsuperbrain.com/blog/posts/introducing-reactive-events/>
* [A Survey of Functional Reactive Programming](http://www.cs.rit.edu/~eca7215/frp-independent-study/Survey.pdf)

###Other Language
* [Elm](http://elm-lang.org/)
  * [Elm at Prezi: Functional Reactive Programming for the Web](http://engineering.prezi.com/blog/2013/05/21/elm-at-prezi/)
* [Kefir.js](https://pozadi.github.io/kefir/)
* [Bacon.js](http://baconjs.github.io/)
  * [Functional Reactive Programming in JavaScript](http://flippinawesome.org/2013/09/30/functional-reactive-programming-in-javascript/)
* [ReactiveCocoa/ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa)

##数値計算
* [linear](http://hackage.haskell.org/package/linear)
* [repa](https://hackage.haskell.org/package/repa)
* [hmatrix](https://hackage.haskell.org/package/hmatrix)
* [ad](https://hackage.haskell.org/package/ad)

##OpenGL
* [OpenGL](https://hackage.haskell.org/package/OpenGL)
* [gl](https://hackage.haskell.org/package/gl)
* [ekmett/quine](https://github.com/ekmett/quine)
* [OpenGL Tutorial 1](https://wiki.haskell.org/OpenGLTutorial1)
* [OpenGL Tutorial 2](https://wiki.haskell.org/OpenGLTutorial2)

> I've discovered that GLUT works for me if I compile first with ghc, and then run, rather than attempting to run via ghci or runghc. Have you tried that?

出典: <http://stackoverflow.com/questions/21008691/haskell-opengl-and-glut-freeze-on-mac-os-x-can-i-use-glfw-over-glut>

* [GLUtil](https://hackage.haskell.org/package/GLUtil)
* [Modern OpenGL with Haskell](http://www.arcadianvisions.com/blog/?p=224)

##CLI
* [turtle](http://hackage.haskell.org/package/turtle)
* [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative)

##Repos
* [badamson/2048.hs](https://github.com/badamson/2048.hs)
* [hedis](https://hackage.haskell.org/package/hedis)
* [ncurses](http://hackage.haskell.org/package/ncurses)
* [ImperativeHaskell](http://hackage.haskell.org/package/ImperativeHaskell)
* [mikeizbicki/HLearn](https://github.com/mikeizbicki/HLearn/)

##デバッグ
* [Debug.Trace](http://hackage.haskell.org/package/base/docs/Debug-Trace.html)
* [2.5. GHCiデバッガ](http://www.kotha.net/ghcguide_ja/latest/ghci-debugger.html)
* [criterion](http://hackage.haskell.org/package/criterion)

##FFI
* [FFI使ってC++バインディングに入門](http://mymo.blog8.fc2.com/blog-entry-52.html)
* [HsLua](https://www.haskell.org/haskellwiki/HsLua)

###Cocoa
* [Haskell ではじめるふわとろ Cocoa アプリ開発](http://konn-san.com/prog/haskell/haskell-introduction-to-cocoa.html)

##Others
* [bitemyapp/learnhaskell](https://github.com/bitemyapp/learnhaskell)
* [Haskell ポインタープログラミング](http://d.hatena.ne.jp/kazu-yamamoto/20131225/1387938629)
* [The Implementation of Functional Programming Languages](http://research.microsoft.com/en-us/um/people/simonpj/papers/slpj-book-1987/)
* [Partial Function Considered Harmful](http://tanakh.jp/posts/2011-12-25-partial-function-considered-harmful.html)
* [Haskell on Heroku](https://haskellonheroku.com/)
* [High-Performance Haskell](http://www.slideshare.net/tibbe/highperformance-haskell)
* [haskell で乱数](http://yomi322.hateblo.jp/entry/2012/10/07/121507)
* [EclipseFP](http://eclipsefp.github.io/)
* [Haxl - Haskellを使った暗黙的な並列データアクセス](http://www.infoq.com/jp/news/2014/06/haxl)
* [Stephen Diehl](http://www.stephendiehl.com/)
* [frp-arduino/frp-arduino](https://github.com/frp-arduino/frp-arduino)
* [第 16 章 Hindley/Milner 型推論](http://www29.atwiki.jp/tmiya/pages/78.html)
* <https://twitter.com/lvsn/status/533685461957349376>
* [A Type-theoretic Reconstruction of the Visitor Pattern](http://www.cs.bham.ac.uk/~hxt/research/mfps-visitors.pdf)
* [Lazy Functional State Threads](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.144.2237&rep=rep1&type=pdf)
* [Theorems for free!](http://www.cs.sfu.ca/CourseCentral/831/burton/Notes/July14/free.pdf)
* [Typed Tagless Final Interpreters](http://okmij.org/ftp/tagless-final/course/lecture.pdf)
* [Just do it: Simple monadic equational reasoning](http://www.cs.ox.ac.uk/publications/publication4877-abstract.html)
* 🎥 [Kenneth Foner - Getting a Quick Fix on Comonads](https://www.youtube.com/watch?v=F7F-BzOB670)

###Formatting

```haskell
format ("Person's name is " % text % ", age is " % hex) "Dave" 54
```

* [Formatting](https://hackage.haskell.org/package/formatting)
  * [HoleyMonoid](http://hackage.haskell.org/package/HoleyMonoid)   
* [Text.Printf](http://hackage.haskell.org/package/base/docs/Text-Printf.html)

##積み資料
* [The Monad.Reader](http://themonadreader.wordpress.com/previous-issues/)
* [Haskell Cast](https://www.youtube.com/channel/UC0pv4sIiJ404ubqUJ2e4WzA)

### [CS240h lecture notes](http://www.scs.stanford.edu/14sp-cs240h/slides/)
* [Information flow control](http://www.scs.stanford.edu/14sp-cs240h/slides/ifc-slides.html)

###連載: Haskellプログラミング
* [木(tree)で遊ぶ](https://www.ipsj.or.jp/07editj/promenade/4605.pdf)
* [数当てゲームを解く](https://www.ipsj.or.jp/07editj/promenade/4606.pdf)
* [Rubicキューブと置換の乗算](https://www.ipsj.or.jp/07editj/promenade/4607.pdf)
* [文字列間の距離-モナドを使って-](https://www.ipsj.or.jp/07editj/promenade/4609.pdf)
* [関数画家](https://www.ipsj.or.jp/07editj/promenade/4610.pdf)
* [ペンシルパズルを解く](https://www.ipsj.or.jp/07editj/promenade/4611.pdf)
* [対戦型n目並べ](https://www.ipsj.or.jp/07editj/promenade/4612.pdf)
* [暦法算法](https://www.ipsj.or.jp/07editj/promenade/4701.pdf)
* [自分自身を出力するプログラム](https://www.ipsj.or.jp/07editj/promenade/4703.pdf)
