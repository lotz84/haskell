* [Iteratees](https://ro-che.info/ccc/15)
* [The Art of Incremental Stream Processing](http://mth.io/talks/streams/)
* [Formalizing Eventsourcing](http://www.corecursion.net/post/2017-01-01-Formalizing_Eventsourcing)

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

```haskell
main = do
    xs <- sequence . repeat $ getLine
    mapM_ putStrLn xs
    -- 期待通りに動かない例
```

* [How to build library-agnostic streaming sources](http://www.haskellforall.com/2014/11/how-to-build-library-agnostic-streaming.html)

### History
* ✕ Lazy IO
    * [Lazy IO considered harmful](https://sites.google.com/site/haskell/notes/lazy-io-considered-harmful-way-to-go-left-fold-enumerator)
    * [jaspervdj - Lazy I/O and graphs: Winterfell to King's Landing](https://jaspervdj.be/posts/2017-01-17-lazy-io-graphs.html)
    * [愛しの Lazy I/O - Qiita](http://qiita.com/nobsun/items/a0fc3b987f013e9649f0)
    * [憎らしの Lazy I/O - Qiita](http://qiita.com/nobsun/items/a20b9621d5ea4b3937ce)
* Deprecated [enumerator](https://hackage.haskell.org/package/enumerator)
* [iteratee](https://hackage.haskell.org/package/iteratee)
    * [iterIO](https://hackage.haskell.org/package/iterIO)
* [ストリーム処理ライブラリはなぜ必要なのか](https://docs.google.com/document/d/17CDvq00OgRjvSgRnQz3pLEYPF4246LtIBbx6-7w9fmo)

### io-streams
* [io-streams](http://hackage.haskell.org/package/io-streams)
* [io-streams - yunomuのブログ](http://yunomu.hatenablog.jp/entry/2013/09/22/160859)
* [Stackでhttp-streamsのインストールに失敗したときの回避方法](http://qiita.com/kuy/items/f106c75a246a62503572)

### Pipes
* [Pipes.Tutorial](https://hackage.haskell.org/package/pipes/docs/Pipes-Tutorial.html)
* [Pipes](http://www.scs.stanford.edu/14sp-cs240h/slides/pipes-slides.html)
* [Pipes - London Haskell](https://www.youtube.com/watch?v=2jdJGdA7AYs)
* [Examining Hackage: pipes](http://jozefg.bitbucket.org/posts/2015-06-01-pipes.html)
* [pipes-parseの概要](http://qiita.com/hiratara/items/88ffab011f6e93a88f64)
* <https://twitter.com/argumatronic/status/626168311957434368>
* [The pipes-safe package](https://hackage.haskell.org/package/pipes-safe)
* [The pipes-concurrency package](https://hackage.haskell.org/package/pipes-concurrency)
* [Shortcut fusion for pipes](http://www.haskellforall.com/2014/01/stream-fusion-for-pipes.html)

### Conduit
* [conduit library](https://haskell-lang.org/library/conduit)
* <https://hackage.haskell.org/package/conduit>
* [Conduit Overview](https://www.fpcomplete.com/user/snoyberg/library-documentation/conduit-overview)
* [Simpler conduit library based on monadic folds](http://newartisans.com/2014/06/simpler-conduit-library/)
* [５分で分かるコンジット](http://melpon.org/yesodbookjp/conduit)
* [ConduitとHaskellでネットワークプロキシサーバを作る](http://tanakh.jp/posts/2012-07-01-conduit-0.5.html)
* [Conduitの使い方](http://qiita.com/siphilia_rn/items/f3d8d83496a8eab65274)
* [Conduits - Dealing with streaming data](http://none.io/posts/2014-07-03-Conduits---Dealing-with-streaming-data.html)
* [[翻訳] Conduit Overview - School of Haskell](http://qiita.com/alpha22jp/items/0d634b0bb9f4ccb0cd05)
* [Thoughts on Conduits](http://neilmitchell.blogspot.jp/2015/07/thoughts-on-conduits.html)
* [Counties and Conduit](http://levischuck.com/posts/2015-07-26-counties-and-conduit.html)
* [Parallel/Pipelined Conduit](http://neilmitchell.blogspot.jp/2015/07/parallelpipelined-conduit.html)
* [進捗を取りながらファイルをダウンロードする](http://qiita.com/techno-tanoC/items/39fdc32f3c8f79a26183)
* [Summary of the Haskell Conduit package](http://haskell.zcourts.com/io/2013/12/27/introduction-to-conduit/)
* [Proposed conduit reskin](http://www.snoyman.com/blog/2016/09/proposed-conduit-reskin)
* [Sharing, Space Leaks, and Conduit and friends](http://www.well-typed.com/blog/2016/09/sharing-conduit/)
* [udp-conduit: Simple fire-and-forget conduit UDP wrappers](https://hackage.haskell.org/package/udp-conduit)
* [ConduitベースのTCPサーバ・クライアント](http://qiita.com/yutasth/items/9e2040c9f2206360c85f)
* [ConduitベースのTCPクライアント Ver 0.2](http://qiita.com/yutasth/items/53b6c57d872abe45d087)
* [Uniqhash Machines Implementation Using MealyM ~ Bows and Arrows](http://sordina.github.io/blog/2016/11/06/1478354235-uniqhash_machines_implementation.html)

> Conduits were created for the Yesod web framework. My understanding is that they were designed to be blazingly fast. Early versions of the library were highly stateful.
>
> Pipes focus on elegance. They have just one type instead of several, form monad (transformer) and category instances, and are very "functional" in design.

出典: <http://stackoverflow.com/questions/9983840/what-are-the-pros-and-cons-of-enumerators-vs-conduits-vs-pipes>

### Machines
* [machines](http://hackage.haskell.org/package/machines)
* [Welcome to the Machines by Aloïs Cochard](https://www.youtube.com/watch?v=sEfn_x245mE&index=7&list=PL9Z-JgiTsOYTdi91N_DlcpWqkCYvMrhA4)

### Arrow based
* [Programming with Arrows](http://www.cse.chalmers.se/~rjmh/afp-arrows.pdf)
* [The auto package](http://hackage.haskell.org/package/auto)
* [machinecell](http://hackage.haskell.org/package/machinecell)
* [Arrow化pipeはFRPの夢を見るか？](http://qiita.com/as_capabl/items/cefef00635031a540dd3)
* [Arrow化pipeはFRPの夢を見るか？(GUI編)](http://qiita.com/as_capabl/items/11751da09f9257864692)

### Others
* [quiver](http://hackage.haskell.org/package/quiver)
  * [quiver-http](https://hackage.haskell.org/package/quiver-http)
* [fumieval/boombox](https://github.com/fumieval/boombox)
* [bch29/streaming-png](https://github.com/bch29/streaming-png)
* [First class stream fusion](http://www.yesodweb.com/blog/2016/02/first-class-stream-fusion)
* [Stream fusion for streaming, without writing any code](http://twanvl.nl/blog/haskell/streaming-vector)
* [Tweag I/O - How to compose streaming programs](http://www.tweag.io/posts/2017-10-05-streaming2.html)
