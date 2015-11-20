* [できる！並列・並行プログラミング](http://www.slideshare.net/pfi/ss-9780450)
* [Parallel and Concurrent Programming in Haskell](http://chimera.labs.oreilly.com/books/1230000000929/index.html)
   * [pdf](http://community.haskell.org/~simonmar/par-tutorial.pdf)
* [Concurrency](http://www.scs.stanford.edu/14sp-cs240h/slides/concurrency-slides.html)
* [Memory](http://www.scs.stanford.edu/14sp-cs240h/slides/memory-slides.html)
* [criterion performance measurements](https://tvh.github.io/refs-bench.html)
* [関数型プログラミング言語における通信記述の型付け](http://ir.nul.nagoya-u.ac.jp/jspui/handle/2237/16436)
* [The Art of Multiprocessor Programming](http://www.e-reading.club/bookreader.php/134637/Herlihy_-_The_art_of_multiprocessor_programming.pdf)
    * [sile/amp1-2.md](https://gist.github.com/sile/3130042)
    * [sile/AMP-CH2.md](https://gist.github.com/sile/8097704)
    * [sile/amp-3-5.md](https://gist.github.com/sile/3568187)
    * [sile/amp-4-8.md](https://gist.github.com/sile/3762308)
    * [sile/AMP-CH7-a.md](https://gist.github.com/sile/6a0fd3da6fb2f02ef163)
    * [sile/AMP-CH10.md](https://gist.github.com/sile/2d50fc54fa25e55da139)
    * [sile/AMP-CH13.md](https://gist.github.com/sile/83593f59c7f3e205fb8b)
    * [sile/AMP-CH18-SUMMARY.md](https://gist.github.com/sile/1dc1a595e2c4c998b6b6)
* [agocorona/transient](https://github.com/agocorona/transient)
* [並列処理の理論とホモトピー](http://pantodon.shinshu-u.ac.jp/topology/literature/concurrency.html)
* [高速WebサーバMighttpdのアーキテクチャ](http://www.iij.ad.jp/company/development/tech/activities/mighttpd/)
* [Edward Kmett - Propagators - Boston Haskell](https://www.youtube.com/watch?v=DyPzPeOPgUE)

##並列
* [monad-par](https://hackage.haskell.org/package/monad-par)
* [accelerate](http://hackage.haskell.org/package/accelerate)
* [accelerate-cuda](http://hackage.haskell.org/package/accelerate-cuda)
* [Obsidian](https://hackage.haskell.org/package/Obsidian)
* [3 07 Functional GPU Programming](https://www.youtube.com/watch?v=8cXZTDLC9FY)
* [Programming with distributed functional futures](http://www.macs.hw.ac.uk/~rs46/posts/2015-09-07-distributed-functional-futures.html)
* [Repeating History: Execution Replay for Parallel Haskell Programs](https://research-repository.st-andrews.ac.uk/bitstream/10023/5895/1/tfp2012.pdf)
* [Parallel Computation of Cryptographic Hash Functions](https://www.youtube.com/watch?v=VL04HTzL2B0)
* [2 04 Imprving Implicit Parallelism](https://www.youtube.com/watch?v=UsU8h0WYemo)

##並行
* [async](http://hackage.haskell.org/package/async)
* [lifted-async](https://hackage.haskell.org/package/lifted-async)
* [新しいlifted-asyncの使い方](http://maoe.hatenadiary.jp/entry/2014/12/31/015338)
* [Relativistic Programming in Haskell](http://web.cecs.pdx.edu/~walpole/papers/haskell2015.pdf)
   * [ekmett/rcu](https://github.com/ekmett/rcu)
* [並行プログラミングと継続モナド](http://www.slideshare.net/RuiccRail/ss-52718653)
* [lvish](http://hackage.haskell.org/package/lvish)
* [parallel-io](http://batterseapower.github.io/parallel-io/)
* [joey/ blog/ entry/ concurrent output library](http://joeyh.name/blog/entry/concurrent_output_library/)
* [joey/ blog/ entry/ a tiling region manager for the console](http://joeyh.name/blog/entry/a_tiling_region_manager_for_the_console/)

###MVar
* [Control.Concurrent.MVar](https://hackage.haskell.org/package/base/docs/Control-Concurrent-MVar.html)
* [Common Concurrency Abstractions in Haskell, MVar](http://www.kuznero.com/posts/haskell/2015-07-31-common-concurrency-abstractions-MVar-part-2.html)

```haskell
import Control.Concurrent
main = do
    messages <- newEmptyMVar
    forkIO $ putMVar messages "ping"
    
    msg <- takeMVar messages
    putStrLn msg
```

出展: [Haskell by Example: Channels](http://lotz84.github.io/haskellbyexample/ex/channels)

###Chan
[Control.Concurrent.Chan](https://hackage.haskell.org/package/base/docs/Control-Concurrent-Chan.html)

###STM
* [Beautiful concurrency](http://research.microsoft.com/en-us/um/people/simonpj/papers/stm/beautiful.pdf)
* [Simple STM example](https://wiki.haskell.org/Simple_STM_example)
* [Lock Free Data Structures using STM in Haskell](http://research.microsoft.com/en-us/um/people/simonpj/papers/stm/lock-free-flops06.pdf)
* [The Future is Parallel, and the Future of Parallel is Declarative](https://www.youtube.com/watch?v=hlyQjK1qjw8)
* [A Compositional Theory for STM Haskell](https://vimeo.com/6685355)
* [Programming in the Age of Concurrency: Software Transactional Memory](http://channel9.msdn.com/Shows/Going+Deep/Programming-in-the-Age-of-Concurrency-Software-Transactional-Memory)
* [joey/ blog/ entry/ STM Region contents](http://joeyh.name/blog/entry/STM_Region_contents/)

##分散
* [分散システム処理モデルに関する動向について（MapReduceからBorgまで）](http://techblog.yahoo.co.jp/architecture/2015_06_ditributed_system/)
* [Cloud Haskell](http://haskell-distributed.github.io/)
* [distributed-process](https://hackage.haskell.org/package/distributed-process)
* [ZuriHac 2015 - Distributed Programming in Haskell](https://www.youtube.com/watch?v=qlnU73a3Cw0)
* [Estimation of π using distributed computing. Streaming. Transient effects VI](https://www.fpcomplete.com/user/agocorona/estimation-of-using-distributed-computing-streaming-transient-effects-vi-1)
* [Moving Haskell processes between nodes (Transient effects IV)](https://www.fpcomplete.com/user/agocorona/moving-haskell-processes-between-nodes-transient-effects-iv)
  * [agocorona/transient](https://github.com/agocorona/transient)
