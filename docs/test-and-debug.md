##テスト
* [Haskellの単体テスト最前線](https://github.com/kazu-yamamoto/unit-test-example/blob/master/markdown/ja/tutorial.md)
* [Testing](http://www.scs.stanford.edu/14sp-cs240h/slides/testing-slides.html)
* <https://twitter.com/datgame/status/563269982721941505>
* [Functional TDD: A Clash of Cultures](https://www.facebook.com/notes/kent-beck/functional-tdd-a-clash-of-cultures/472392329460303)
* [Practical testing in Haskell](http://jaspervdj.be/posts/2015-03-13-practical-testing-in-haskell.html)
* [ソフトウェアテスト技法いろいろ](http://shanon-tech.blogspot.jp/2011/05/blog-post.html)
* [Flame graphs for GHC time profiles with ghc-prof-flamegraph](https://www.fpcomplete.com/blog/2015/04/ghc-prof-flamegraph)
* [CRogers/should-not-typecheck](https://github.com/CRogers/should-not-typecheck)
* [Announce: dejafu-0.1.0.0](http://www.barrucadu.co.uk/posts/2015-08-27-announce-dejafu.html)
* [feuerbach/smallcheck](https://github.com/feuerbach/smallcheck)
* [Tasty](http://documentup.com/feuerbach/tasty)
* [Unit testing IO in Haskell](https://blog.pusher.com/unit-testing-io-in-haskell/)
* [The webdriver package](https://hackage.haskell.org/package/webdriver)
* [Hspec: A Testing Framework for Haskell](http://hspec.github.io/index.html)
* [IO 部分の自動テスト](http://krdlab.hatenablog.com/)
* [5 Ways to Test Applications that Access a Database in Haskell](http://functor.tokyo/blog/2015-11-20-testing-db-access)
* [Breaking the Law: Verifying Typeclass Laws with QuickCheck and Deja Fu](http://www.barrucadu.co.uk/posts/2015-11-29-breaking-the-law-verifying-typeclass-laws-with-quickcheck-and-dejafu.html)
* [barrucadu/dejafu](https://github.com/barrucadu/dejafu)
* [dejafu/async-dejafu](https://github.com/barrucadu/dejafu/tree/master/async-dejafu)
* [24 days of Hackage, 2015: day 3: HSpec; the importance of testing](http://conscientiousprogrammer.com/blog/2015/12/03/24-days-of-hackage-2015-day-3-hspec-the-importance-of-testing/)
* [24 days of Hackage, 2015: day 5: should-not-typecheck: making Haskell sort of dynamically typed with deferred type errors](http://conscientiousprogrammer.com/blog/2015/12/05/24-days-of-hackage-2015-day-5-should-not-typecheck-making-haskell-sort-of-dynamically-typed-with-deferred-type-errors/)
* [Phantheck, the Type-Level QuickCheck](http://begriffs.com/posts/2015-12-06-quickcheck-for-types.html)
* [24 days of Hackage, 2015: day 15: IOSpec: testing IO; and some QuickCheck tricks](http://conscientiousprogrammer.com/blog/2015/12/15/24-days-of-hackage-2015-day-15-iospec-testing-io-and-some-quickcheck-tricks/)
* [Hspecベストプラクティス](http://fujimura.hatenablog.com/entry/2015/12/15/214332)

###QuickCheck
* [How can I test a higher-order function using QuickCheck?](http://stackoverflow.com/questions/9686665/how-can-i-test-a-higher-order-function-using-quickcheck)

```haskell
import Data.List
import Test.QuickCheck

prop_sort :: [Int] -> Bool
prop_sort xs = sort xs == sort (sort xs)
```

```shell
$ ghci test.hs
...
Ok, modules loaded: Main.

*Main> quickCheck prop_sort
+++ OK, passed 100 tests.

*Main> verboseCheck prop_sort
Passed:
[]
Passed:
[-1]
Passed:
[6,-2]
Passed:
[5,-3,0,0,-5,-3,-3]
...
+++ OK, passed 100 tests.
```

##デバッグ
* [Debug.Trace](http://hackage.haskell.org/package/base/docs/Debug-Trace.html)
* [2.5. GHCiデバッガ](http://www.kotha.net/ghcguide_ja/latest/ghci-debugger.html)
* [criterion](http://hackage.haskell.org/package/criterion)
* [Perf for low-level profiling](https://www.fpcomplete.com/user/bitonic/perf-for-low-level-profiling)
* [Control.Exception.Base (assert)](http://hackage.haskell.org/package/base-4.8.1.0/docs/Control-Exception-Base.html#v:assert)
* [【Haskell】Debug.Traceとプロファイリングで幸せなデバッグ生活](http://yu-i9.hatenablog.com/entry/2014/09/04/000000)

##例外処理
* <https://twitter.com/GabrielG439/status/656202814121574400>
* [Haskell での例外処理](http://d.hatena.ne.jp/kazu-yamamoto/20120604/1338802792)
* [Haskellでの例外処理(その2)](http://d.hatena.ne.jp/kazu-yamamoto/20120605/1338871044)
* [Exceptions Best Practices](https://www.fpcomplete.com/user/commercial/content/exceptions-best-practices)
* [Lightweight Checked Exceptions in Haskell](http://www.well-typed.com/blog/2015/07/checked-exceptions/)
* [ERRORS AND EXCEPTIONS IN HASKELL](http://www.stackbuilders.com/news/errors-and-exceptions-in-haskell)
* [errors](http://hackage.haskell.org/package/errors)
* [The exceptions package](http://hackage.haskell.org/package/exceptions)
* [The retry package](https://hackage.haskell.org/package/retry)
* [Erin Swenson-Healey: A Beginner's Guide to Exceptions in Haskell](https://www.youtube.com/watch?v=PWS0Whf6-wc)
