* [Functional Reactive Animation](http://conal.net/papers/icfp97/)

## FRPとは何か

> Functional reactive programming (FRP) is a declarative approach to GUI design. The term declarative makes a distinction between the “what” and the “how” of programming. A declarative language allows you to say what is displayed, without having to specify exactly how the computer should do it.

出典: [What is Functional Reactive Programming?](http://elm-lang.org/learn/What-is-FRP.elm)

> 値（あるいは状態）を直接的に扱わないで、「時間とともに変化する値（状態）」と「振る舞い(behavior)」の関係性に注目して、宣言的にプログラムを表現する

出典: [FRP - Functional Reactive Programming](http://www.slideshare.net/kamimuraryo/frp-functional-reactive-programming)

> 私は、Laurence Gのコメントと同じ意見です。彼は、FRPを「“時間とともに変化する”値を表すデータ型」とシンプルに表現しています。

出典: [Q. （関数型）リアクティブプログラミングとは何ですか？](http://postd.cc/what-is-functional-reactive-programming/)

* [FRPの話](http://maoe.hatenadiary.jp/entry/2012/12/24/011414) - FRPの歴史の話
* [関数リアクティブプログラミングの実践](http://www.kotha.net/misc/fpm2012/frptalk.html)
* [【翻訳】あなたが求めていたリアクティブプログラミング入門](http://ninjinkun.hatenablog.com/entry/introrxja)
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
* [Reactive Sheets: an intuitive approach to functional‐reactive computing](https://www.youtube.com/watch?v=9qBYatgAzXg)
* [YampaでFunctional Reactiveな認知行動療法ボット - Qiita](https://qiita.com/makoraru/items/596729de09d6aeb81e5a)

## ライブラリ
* 比較: [gelisam/frp-zoo](https://github.com/gelisam/frp-zoo)
* [euphoria](https://hackage.haskell.org/package/euphoria)
* [pipes-concurrency-1.0.0: Reactive programming](http://www.haskellforall.com/2013/04/pipes-concurrency-100-reactive.html)

### Reactive Banana
* [reactive-banana](https://hackage.haskell.org/package/reactive-banana)
* [FRP - Dynamic event switching in reactive-banana-0.7](http://apfelmus.nfshost.com/blog/2012/09/03-frp-dynamic-event-switching-0-7.html)
* [FRP explanation using reactive-banana](https://wiki.haskell.org/FRP_explanation_using_reactive-banana)

* **Deprecated** - [The sodium package](http://hackage.haskell.org/package/sodium)
  * > If you have been using the sodium FRP library, note that Stephen Blackheath has deprecated the Haskell variant of sodium so that he can focus on his upcoming FRP book and on the sodium ports for other languages.
  * [apfelmus - FRP — Release of reactive-banana version 1.0](http://apfelmus.nfshost.com/blog/2015/10/29-frp-banana-1-0.html)

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
* [2017 02 23 Niklas Hambüchen FRP browser programming with Reflex - YouTube](https://www.youtube.com/watch?v=dNGClNsnn24)
* [hansroland/reflex-dom-inbits: A tutorial about reflex-dom with small code bits](https://github.com/hansroland/reflex-dom-inbits)
* [An introduction to reflex](https://blog.qfpl.io/posts/reflex/basics/introduction/)
* [Events](https://blog.qfpl.io/posts/reflex/basics/events/)
* [Behaviors](https://blog.qfpl.io/posts/reflex/basics/behaviors/)
* [Dynamics](https://blog.qfpl.io/posts/reflex/basics/dynamics/)
* [Queensland FP Lab - Switching](https://blog.qfpl.io/posts/reflex/basics/switching/)
* [Queensland FP Lab - Working with the DOM](https://blog.qfpl.io/posts/reflex/basics/dom/)
* [Queensland FP Lab - Growing a Date Picker in Reflex - Part 1](https://blog.qfpl.io/posts/reflex/widgets/growing-a-date-picker-1/)
* [An Introduction to Brick+Reflex](http://hexagoxel.de/postsforpublish/posts/2017-10-30-brick-plus-reflex.html)
* [Semantic UI for Reflex Dom](https://tomsmalley.github.io/semantic-reflex/)
* [dfordivam' blog - Introducing tenjinreader.com for Haskellers](https://dfordivam.github.io/posts/2018-02-27-introducing-tenjinreader-for-haskellers.html)
* [gonimo/Gonimo-Architecture.md at master · gonimo/gonimo](https://github.com/gonimo/gonimo/blob/master/front/doc/Gonimo-Architecture.md)
* [obsidiansystems/obelisk](https://github.com/obsidiansystems/obelisk)

### Netwire
* [Today in Code — Almost a Netwire 5 Tutorial](http://todayincode.tumblr.com/post/96914679355/almost-a-netwire-5-tutorial)
* [TIL Netwire (FRP library) is basically "deprecated." : haskell](https://www.reddit.com/r/haskell/comments/7yezo2/til_netwire_frp_library_is_basically_deprecated/)

## 線形時相論理
* [Haskell Exists: FRP for free](https://haskellexists.blogspot.jp/2016/01/frp-for-free.html)
  * [Fixing a space leak by copying thunks.](http://haskellexists.blogspot.de/2016/01/fixing-space-leak-by-copying-thunks.html)
