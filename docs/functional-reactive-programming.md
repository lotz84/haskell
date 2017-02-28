* [Functional Reactive Animation](http://conal.net/papers/icfp97/)

## リアクティブプログラミング
* [リアクティブ宣言](http://www.reactivemanifesto.org/ja)
* [Reactive とは何か？ #reactive_shinjuku](https://speakerdeck.com/okapies/reactive-tohahe-ka-number-reactive-shinjuku)
* [【翻訳】あなたが求めていたリアクティブプログラミング入門](http://ninjinkun.hatenablog.com/entry/introrxja)

## FRPとは何か

> Functional reactive programming (FRP) is a declarative approach to GUI design. The term declarative makes a distinction between the “what” and the “how” of programming. A declarative language allows you to say what is displayed, without having to specify exactly how the computer should do it.

出典: [What is Functional Reactive Programming?](http://elm-lang.org/learn/What-is-FRP.elm)

> 値（あるいは状態）を直接的に扱わないで、「時間とともに変化する値（状態）」と「振る舞い(behavior)」の関係性に注目して、宣言的にプログラムを表現する

出典: [FRP - Functional Reactive Programming](http://www.slideshare.net/kamimuraryo/frp-functional-reactive-programming)

> 私は、Laurence Gのコメントと同じ意見です。彼は、FRPを「“時間とともに変化する”値を表すデータ型」とシンプルに表現しています。

出典: [Q. （関数型）リアクティブプログラミングとは何ですか？](http://postd.cc/what-is-functional-reactive-programming/)

* [FRPの話](http://maoe.hatenadiary.jp/entry/2012/12/24/011414) - FRPの歴史の話
* [関数リアクティブプログラミングの実践](http://www.kotha.net/misc/fpm2012/frptalk.html)
* [Introduction to FRP - Why Applicative Functors?](http://apfelmus.nfshost.com/blog/2011/05/06-frp-why-functors.html)
* [やさしいFunctional reactive programming（概要編）](http://maoe.hatenadiary.jp/entry/20100109/1263059731)
* [やさしいFunctional reactive programming（Event編） - maoeのブログ](http://maoe.hatenadiary.jp/entry/20100116/1263661213)
* [やさしいFunctional reactive programming（Behavior編） - maoeのブログ](http://maoe.hatenadiary.jp/entry/20100123/1264225964)
* [A Survey of Functional Reactive Programming](http://www.cs.rit.edu/~eca7215/frp-independent-study/Survey.pdf)
* [FRP - A Short Primer by Gergely Patai at Helsinki FRP Meetup April 1, 2015](https://www.youtube.com/watch?v=_BICQhz6tkM&feature=youtu.be&list=PL3FxNVzVB9HJXCXlEDi3-mzx_Lw_pP11j)
* [The Essense of FRP](http://begriffs.com/posts/2015-07-22-essence-of-frp.html)
* [Yampy Cube by Konstantin Zudov at Helsinki FRP Meetup May 6, 2015](https://www.youtube.com/watch?v=T7XwTolu9YI)
* [Functional Reactive Programming from First Principles](http://haskell.cs.yale.edu/?post_type=publication&p=200)
* [Part One - Infrastructure](http://zyghost.com/series/odin/part-one/)
* [Functional Reactive Programming](http://bobkonf.de/2016/apfelmus.html)
* [A Sensible Intro to FRP](https://begriffs.com/posts/2016-07-27-tikhon-on-frp.html)
* [FRP - Events & Behaviour, Part 1 - David Laing - BFPG 2016-09](https://www.youtube.com/watch?v=GXW1jBijhlk)

## ライブラリ
* 比較: [gelisam/frp-zoo](https://github.com/gelisam/frp-zoo)
* [euphoria](https://hackage.haskell.org/package/euphoria)
* [pipes-concurrency-1.0.0: Reactive programming](http://www.haskellforall.com/2013/04/pipes-concurrency-100-reactive.html)

### Reactive Banana
* **Deprecated** - [The sodium package](http://hackage.haskell.org/package/sodium)
  * [Deprecating the Haskell version of Sodium for Reactive Banana](http://blog.reactiveprogramming.org/?p=258)
* [reactive-banana](https://hackage.haskell.org/package/reactive-banana)
* [FRP - Dynamic event switching in reactive-banana-0.7](http://apfelmus.nfshost.com/blog/2012/09/03-frp-dynamic-event-switching-0-7.html)
* [FRP explanation using reactive-banana](https://wiki.haskell.org/FRP_explanation_using_reactive-banana)

### FRPNow
* [Practical Principled FRP](http://www.cse.chalmers.se/~atze/papers/prprfrp.pdf)
* [3 02 Practical Principled FRP](https://www.youtube.com/watch?v=WajfYdqCeAM)
* [Announce: FRPNow-0.12](https://www.reddit.com/r/haskell/comments/3ddn1b/announce_frpnow012/)
* [FRPNowでFizzBuzzなど](http://qiita.com/as_capabl/items/ae7cca3343731d303b49)
* [FRPNowをサーバで使ってみた](http://qiita.com/asukamirai/items/d23c34a71d72d077e39d)

### Reflex
* [Ryan Trinkle - Reflex: Practical Functional Reactive Programming](https://www.youtube.com/watch?v=dOy7zIk3IUI)
* 🎥 [Reflex: Practical Functional Reactive Programming](https://www.youtube.com/watch?v=mYvkcskJbc4)
  * [part2](https://www.youtube.com/watch?v=3qfc9XFVo2c)
* [関西関数型道場 - 第参回 S1 「Reflexの紹介」](https://www.youtube.com/watch?v=G24P2kR8O_w)
* [reinh/reflex-dom-stack-demo](https://github.com/reinh/reflex-dom-stack-demo)
* [On Reflex - Boston Haskell - Greg Hale](https://www.youtube.com/watch?v=MfXxuy_CJSk)

## 線形時相論理
* [Haskell Exists: FRP for free](https://haskellexists.blogspot.jp/2016/01/frp-for-free.html)
  * [Fixing a space leak by copying thunks.](http://haskellexists.blogspot.de/2016/01/fixing-space-leak-by-copying-thunks.html)
