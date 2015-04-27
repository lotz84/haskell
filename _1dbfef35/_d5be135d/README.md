#テスト
* [Haskellの単体テスト最前線](https://github.com/kazu-yamamoto/unit-test-example/blob/master/markdown/ja/tutorial.md)
* [Testing](http://www.scs.stanford.edu/14sp-cs240h/slides/testing-slides.html)
* <https://twitter.com/datgame/status/563269982721941505>
* [Functional TDD: A Clash of Cultures](https://www.facebook.com/notes/kent-beck/functional-tdd-a-clash-of-cultures/472392329460303)
* [Practical testing in Haskell](http://jaspervdj.be/posts/2015-03-13-practical-testing-in-haskell.html)
* [ソフトウェアテスト技法いろいろ](http://shanon-tech.blogspot.jp/2011/05/blog-post.html)

###QuickCheck

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
