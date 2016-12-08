## テスト
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
* [Using doctest-discover with Stack](http://blog.rcook.org/blog/2016/doctest-discover-stack/)
* [Tests vs. Types](http://kevinmahoney.co.uk/articles/tests-vs-types/)
* [Testing GHC with Stackage](https://www.fpcomplete.com/blog/2016/02/testing-ghc-with-stackage)
* [Go言語でファジング](http://deeeet.com/writing/2015/12/21/go-fuzz/)
* [Speeding up the automated building and testing of our Haskell projects](http://bitemyapp.com/posts/2016-03-28-speeding-up-builds.html)
* [Fuzz testing distributed systems with QuickCheck](https://blog.pusher.com/fuzz-testing-distributed-systems-with-quickcheck/)
* [Property-based Testing with QuickCheck in Playgrounds](http://blog.haskellformac.com/blog/property-based-testing-with-quickcheck-in-playgrounds)
* [Lysxia/generic-random](https://github.com/Lysxia/generic-random)
* [Quickfix all the things with Sarsi](http://aloiscochard.blogspot.jp/2016/04/quickfix-all-things-with-sarsi.html)
* [karun012/arion](https://github.com/karun012/arion)
* [Test your benchmarks!](https://ivanmiljenovic.wordpress.com/2016/05/23/test-your-benchmarks/)
* [Haskell Tutorials, a tutorial](http://yannesposito.com/Scratch/en/blog/Haskell-Tutorials--a-tutorial/)
* [Behavior-driven development (BDD) in Haskell with Hspec](https://www.stackbuilders.com/tutorials/haskell/bdd-in-haskell-with-hspec/)
* [async exceptions, STM, and deadlocks](https://www.fpcomplete.com/blog/2016/06/async-exceptions-stm-deadlocks)
* [Behavior-driven development (BDD) in Haskell with Hspec](https://www.stackbuilders.com/tutorials/haskell/bdd-in-haskell-with-hspec/)
* [rudymatela/fitspec](https://github.com/rudymatela/fitspec)
* [Using types to unit-test in Haskell](https://lexi-lambda.github.io/blog/2016/10/03/using-types-to-unit-test-in-haskell/)

### QuickCheck
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

### HipSpec
* [danr/hipspec](https://github.com/danr/hipspec)
* [Proving Type Class Laws for Haskell](http://tfp2016.org/papers/TFP_2016_paper_20.pdf)
* [HipSpec: Automating Inductive Proofs of Program Properties](http://www.cse.chalmers.se/~jomoa/papers/hipspec-atx.pdf)
* [Automating Inductive Proofs using Theory Exploration](http://www.cse.chalmers.se/~nicsma/papers/hipspec-cade.pdf)
* [HipSpec - Automating Inductive Proofs using Theory Exploration](http://www.cse.chalmers.se/~danr/hipspec-london-talk.pdf)

## デバッグ
* [Debug.Trace](http://hackage.haskell.org/package/base/docs/Debug-Trace.html)
* [2.5. GHCiデバッガ](http://www.kotha.net/ghcguide_ja/latest/ghci-debugger.html)
* [criterion](http://hackage.haskell.org/package/criterion)
* [Perf for low-level profiling](https://www.fpcomplete.com/user/bitonic/perf-for-low-level-profiling)
* [Control.Exception.Base (assert)](http://hackage.haskell.org/package/base-4.8.1.0/docs/Control-Exception-Base.html#v:assert)
* [【Haskell】Debug.Traceとプロファイリングで幸せなデバッグ生活](http://yu-i9.hatenablog.com/entry/2014/09/04/000000)
* [24 days of Hackage, 2015: day 21: hood, GHood, Hoed: observation oriented debugging in Haskell](http://conscientiousprogrammer.com/blog/2015/12/21/24-days-of-hackage-2015-day-21-hood-ghood-hoed-observation-oriented-debugging-in-haskell/)
* [JohnReedLOL/HaskellPrintDebugger](https://github.com/JohnReedLOL/HaskellPrintDebugger)

## 例外処理
* [エラー処理を書いてはいけない](http://tanakh.jp/pub/pfi-seminar-2011-12-08.html)
* <https://twitter.com/GabrielG439/status/656202814121574400>
* [Haskell での例外処理](http://d.hatena.ne.jp/kazu-yamamoto/20120604/1338802792)
* [Haskellでの例外処理(その2)](http://d.hatena.ne.jp/kazu-yamamoto/20120605/1338871044)
* [Exceptions Best Practices](https://www.fpcomplete.com/user/commercial/content/exceptions-best-practices)
* [Lightweight Checked Exceptions in Haskell](http://www.well-typed.com/blog/2015/07/checked-exceptions/)
* [ERRORS AND EXCEPTIONS IN HASKELL](http://www.stackbuilders.com/news/errors-and-exceptions-in-haskell)
* [The exceptions package](http://hackage.haskell.org/package/exceptions)
* [The retry package](https://hackage.haskell.org/package/retry)
* [Erin Swenson-Healey: A Beginner's Guide to Exceptions in Haskell](https://www.youtube.com/watch?v=PWS0Whf6-wc)
* [Exceptions Best Practices](https://www.schoolofhaskell.com/user/commercial/content/exceptions-best-practices)
* [The errors package](http://hackage.haskell.org/package/errors)
* [Haskell Cat: Maybe/Either vs exceptions](https://www.youtube.com/watch?v=8xkG660D6bI)
* [Error handling is code too!](http://cs-syd.eu/posts/2016-03-13-error-handling-is-code-too.html)
* [Announce: safe-exceptions, for async exception safety](https://www.fpcomplete.com/blog/2016/06/announce-safe-exceptions)
* [fpco/safe-exceptions](https://github.com/fpco/safe-exceptions)
* [Haskellの最近の例外ハンドリング](http://syocy.hatenablog.com/entry/2016/07/02/174426)
* [続・Haskellの最近の例外ハンドリング](http://syocy.hatenablog.com/entry/2016/08/28/175500)
* [Haskellの例外、今はコレ！ Control.Monad.Catch](http://qiita.com/aiya000/items/6700753df2dfb9ae942e)
* [Exceptions Best Practices in Haskell](https://www.fpcomplete.com/blog/2016/11/exceptions-best-practices-haskell)
* [The validation package](http://hackage.haskell.org/package/validation)
