> 4 types of Haskell exceptions:
> * Checked+Impure: ExceptT
> * Unchecked+Impure: IO
> * Checked+Pure: Either
> * Unchecked+Pure: BAD (not in type) 
<https://twitter.com/GabrielG439/status/656202814121574400>

* [エラー処理を書いてはいけない](http://tanakh.jp/pub/pfi-seminar-2011-12-08.html)
* [Haskell での例外処理](http://d.hatena.ne.jp/kazu-yamamoto/20120604/1338802792)
* [Haskellでの例外処理(その2)](http://d.hatena.ne.jp/kazu-yamamoto/20120605/1338871044)
* [Erin Swenson-Healey: A Beginner's Guide to Exceptions in Haskell](https://www.youtube.com/watch?v=PWS0Whf6-wc)

## Checked+Impure
* [The exceptions package](http://hackage.haskell.org/package/exceptions)
* [The errors package](http://hackage.haskell.org/package/errors)
* [Exceptions Best Practices](https://www.schoolofhaskell.com/user/commercial/content/exceptions-best-practices)
* [Lightweight Checked Exceptions in Haskell](http://www.well-typed.com/blog/2015/07/checked-exceptions/)
* [MonadMask vs MonadBracket :: FP Complete](https://www.fpcomplete.com/blog/2017/02/monadmask-vs-monadbracket)
* [Better Exception Messages - Michael Snoyman's blog](http://www.snoyman.com/blog/2017/02/better-exception-messages)
* [Exception handling in Haskell Jobs – Lazy Eval – Medium](https://medium.com/lazy-eval/exception-handling-in-haskell-jobs-383835fb73e6)
* [Rethinking MonadError – The Science of Code](https://lukajcb.github.io/blog/functional/2018/04/15/rethinking-monaderror.html)

### safe-exceptions
* [fpco/safe-exceptions](https://github.com/fpco/safe-exceptions)
* [Announce: safe-exceptions, for async exception safety](https://www.fpcomplete.com/blog/2016/06/announce-safe-exceptions)
* [Haskellの最近の例外ハンドリング](http://syocy.hatenablog.com/entry/2016/07/02/174426)
* [続・Haskellの最近の例外ハンドリング](http://syocy.hatenablog.com/entry/2016/08/28/175500)
* [Haskellの例外、今はコレ！ Control.Monad.Catch](http://qiita.com/aiya000/items/6700753df2dfb9ae942e)
* [Asynchronous Exception Handling in Haskell](https://www.fpcomplete.com/blog/2018/04/async-exception-handling-haskell)
* [Async Exception Handling in Haskell - YouTube](https://www.youtube.com/watch?v=T5y8sFmCFnA)

## Unchecked+Impure
* [The retry package](https://hackage.haskell.org/package/retry)
* [Neil Mitchell's Haskell Blog: Haskell exceptions and FFI wrappers](https://neilmitchell.blogspot.jp/2017/11/haskell-exceptions-and-ffi-wrappers.html)

## Checked+Pure
* [ERRORS AND EXCEPTIONS IN HASKELL](http://www.stackbuilders.com/news/errors-and-exceptions-in-haskell)
* [Haskell Cat: Maybe/Either vs exceptions](https://www.youtube.com/watch?v=8xkG660D6bI)
* [Error handling is code too!](http://cs-syd.eu/posts/2016-03-13-error-handling-is-code-too.html)
* [Finding bugs in Haskell code by proving it – Blog – Joachim Breitner's Homepage](https://www.joachim-breitner.de/blog/734-Finding_bugs_in_Haskell_code_by_proving_it)
* [Pure Functional Validation – Blacklane Engineering – Medium](https://medium.com/blacklane-engineering/pure-functional-validation-64a7885d22ac)
