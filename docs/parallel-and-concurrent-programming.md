- [Parallel and Concurrent Programming in Haskell](http://chimera.labs.oreilly.com/books/1230000000929/index.html)
   - [pdf](http://community.haskell.org/~simonmar/par-tutorial.pdf)
- [並行並列言語Haskellの基本と特徴 - ログミーTech](https://logmi.jp/tech/articles/321095)
  - [並列並行言語Haskell - Speaker Deck](https://speakerdeck.com/syocy/bing-lie-bing-xing-yan-yu-haskell)

## 並列
### Eval
- [parallel: Parallel programming library](https://hackage.haskell.org/package/parallel)

### Par
- [monad-par](https://hackage.haskell.org/package/monad-par)
- [Programming with distributed functional futures](http://www.macs.hw.ac.uk/~rs46/posts/2015-09-07-distributed-functional-futures.html)

### Repa
- [repa: High performance, regular, shape polymorphic parallel arrays.](https://hackage.haskell.org/package/repa)
- [Tweag - Parallelising your array code](https://www.tweag.io/blog/2017-11-16-repa/)
- [Evaluation of Libraries for Parallel Computing in Haskell](https://www.jstage.jst.go.jp/article/ipsjjip/25/0/25_308/_pdf)

### accelerate
- [accelerate](http://hackage.haskell.org/package/accelerate)
- [accelerate-cuda](http://hackage.haskell.org/package/accelerate-cuda)
- [Accelerateとglossで作るライフゲーム - Qiita](https://qiita.com/A_kirisaki/items/b45b127adb7d2d91e7f6)
- [lts-13.19でaccelerate-llvmを使う時の備忘録 - Qiita](https://qiita.com/A_kirisaki/items/f558daa4ca72d9d36371)

### Others
- [Obsidian](https://hackage.haskell.org/package/Obsidian)
- [Repeating History: Execution Replay for Parallel Haskell Programs](https://research-repository.st-andrews.ac.uk/bitstream/10023/5895/1/tfp2012.pdf)
- [AutoPar: automating the parallelization of functional programs](http://doras.dcu.ie/20805/)
- [Reasoning About Program Behavior Algebraically](http://dev.stephendiehl.com/types_behavior.pdf)
- [Finding Parallel Functional Pearls: Automatic Parallel Recursion Scheme Detection in Haskell Functions via Anti-Unification](https://research-repository.st-andrews.ac.uk/bitstream/handle/10023/15729/Barwell_2017_FGCS_ParallelFunctionalPearls_AAM.pdf?sequence=1&isAllowed=y)
- [Parallel typeclass for Haskell • gvolpe's blog](https://gvolpe.github.io/blog/parallel-typeclass-for-haskell/)
- [Merritt Blog - Getting Started with OpenCL in Haskell](https://lancelet.github.io/posts/2017-12-26-opencl-helloworld.html)
- [ekmett/propagators](https://github.com/ekmett/propagators)

## 並行
- [CONCURRENT HASKELL IN THE REAL WORLD](https://www.stackbuilders.com/news/concurrent-haskell-in-the-real-world)
- [Relativistic Programming in Haskell](http://web.cecs.pdx.edu/~walpole/papers/haskell2015.pdf)
   - [ekmett/rcu](https://github.com/ekmett/rcu)
- [Abstracting Async.Concurrently](http://elvishjerricco.github.io/2016/09/17/abstracting-async-concurrently.html)
- [rrnewton/haskell-lockfree](https://github.com/rrnewton/haskell-lockfree)

### 軽量スレッド
- [Haskellで並行化する方法: 6秒かかる処理を3秒にしよう](http://qiita.com/eielh/items/64ba5f0164b89c6c284e)
- [A Tour of Go in Haskell](https://a-tour-of-go-in-haskell.syocy.net/ja_JP/index.html)
- [A Tour of Go in Haskellを作ったのと、GoとHaskellの比較 - syocy’s diary](http://syocy.hatenablog.com/entry/a-tour-of-go-in-haskell)
- [高速WebサーバMighttpdのアーキテクチャ](http://www.iij.ad.jp/company/development/tech/activities/mighttpd/)
- [Green Threads are like Garbage Collection](https://www.fpcomplete.com/blog/2017/01/green-threads-are-like-garbage-collection)
- [Concurrency and Node](https://www.fpcomplete.com/blog/2016/12/concurrency-and-node)
- [Mio: A High-Performance Multicore IO Manager for GHC](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.649.3381&rep=rep1&type=pdf)
- [マルチコアでスケールするようになったHaskell \| IIJの技術 \| インターネットイニシアティブ（IIJ）](https://www.iij.ad.jp/dev/tech/activities/haskell/)
- [Threading responsibly - forkIO considered harmful.](https://mazzo.li/posts/threads-resources.html)
- [Common Concurrency Abstractions in Haskell, MVar](http://www.kuznero.com/posts/haskell/2015-07-31-common-concurrency-abstractions-MVar-part-2.html)
- [Concurrency](http://www.scs.stanford.edu/14sp-cs240h/slides/concurrency-slides.html)
- [MVarとTVar - Qiita](https://qiita.com/taashi/items/13cba99ccb8b7ccfbac8)
- [高速なキューを作る話（前編）](http://qiita.com/asukamirai/items/cb22ed08a124b282f142)
- [高速なキューを作る話（後編）](http://qiita.com/asukamirai/items/481b22d9a8a410990828)
- [Haskell における並行処理と並列処理と最適化 - Qiita](http://qiita.com/satosystems/items/e7fb4295598dc61e4c67)
- [The Haskell Concurrency Primitive Shootout – codeburst](https://codeburst.io/the-haskell-concurrency-primitive-shootout-538c21993f1c)
- [RAM footprint per unit of concurrency (approx)](http://bob.ippoli.to/haskell-for-erlangers-2014/#/cost-of-concurrency)
- [Skynet 1M threads microbenchmark](https://github.com/atemerev/skynet)
- [Pinpointing deadlocks in Haskell](https://www.fpcomplete.com/blog/2018/05/pinpointing-deadlocks-in-haskell)
- [Haskell の並列処理と遅延評価の罠](http://labs.timedia.co.jp/2017/08/cphaskell.html)

### STM
* [できる！並列・並行プログラミング](http://www.slideshare.net/pfi/ss-9780450)
* [Beautiful concurrency](http://research.microsoft.com/en-us/um/people/simonpj/papers/stm/beautiful.pdf)
* [Simple STM example](https://wiki.haskell.org/Simple_STM_example)
* [Lock Free Data Structures using STM in Haskell](http://research.microsoft.com/en-us/um/people/simonpj/papers/stm/lock-free-flops06.pdf)
* [The Future is Parallel, and the Future of Parallel is Declarative](https://www.youtube.com/watch?v=hlyQjK1qjw8)
* [A Compositional Theory for STM Haskell](https://vimeo.com/6685355)
* [Programming in the Age of Concurrency: Software Transactional Memory](http://channel9.msdn.com/Shows/Going+Deep/Programming-in-the-Age-of-Concurrency-Software-Transactional-Memory)
* [joey/ blog/ entry/ STM Region contents](http://joeyh.name/blog/entry/STM_Region_contents/)
* [An example of software transactional memory](http://begriffs.com/posts/2013-09-04-an-example-of-software-transactional.html)
* [Software Transactional Memory](http://begriffs.com/posts/2016-04-02-software-transactional-memory.html)
* [Improving Haskell STM Performance (2016) : haskell](https://www.reddit.com/r/haskell/comments/80tk0t/improving_haskell_stm_performance_2016/)
* [TChan vs TQueue: What's the difference?](https://www.parsonsmatt.org/2018/10/12/tchan_vs_tqueue.html)
* [STMとReal-Time Queueを利用したマルチスレッドズンドコキヨシ - Qiita](https://qiita.com/YoshikuniJujo/items/e9639712a49ac0af2a9a)
* [Memory](http://www.scs.stanford.edu/14sp-cs240h/slides/memory-slides.html)
- [Haskell's Missing Concurrency Basics](http://www.snoyman.com/blog/2016/11/haskells-missing-concurrency-basics)
- [Comparative Concurrency with Haskell](https://www.fpcomplete.com/blog/2016/11/comparative-concurrency-with-haskell)

### Async
* [async](http://hackage.haskell.org/package/async)
* [lifted-async](https://hackage.haskell.org/package/lifted-async)
* [新しいlifted-asyncの使い方](http://maoe.hatenadiary.jp/entry/2014/12/31/015338)
* [asyncでお手軽非同期プログラミング with Haskell - Qiita](https://qiita.com/pxfnc/items/fbf8f91f1eb90c9e32b8)
* [asyncでお手軽非同期プログラミング with Haskell その2 - Qiita](https://qiita.com/pxfnc/items/4e77812db82c79e55c33)
* [Тех-Детали: Masking async tasks in the wild](https://lin-techdet.blogspot.com/2019/02/masking-async-tasks-in-wild.html)

### Haxl
* [Haxl: Making Concurrency Unreasonably Easy \| Big Techday 10 - TNG Technology Consulting](http://events.techcast.com/bigtechday10/Garmisch-1345/?q=Garmisch-1345)

## 分散
* [Speeding up a distributed computation in Haskell :: FP Complete](https://www.fpcomplete.com/blog/2017/01/speeding-up-distributed-computation)
* [Distributed Programming with Linear Types \| SkillsCast \| 12th October 2017](https://skillsmatter.com/skillscasts/10637-distributed-programming-with-linear-types)
* [[ANN] distributed-dataset: A distributed data processing framework in Haskell - Utku Demir](https://utdemir.com/posts/ann-distributed-dataset.html)
* [Introduction · Capataz](https://romanandreg.gitbooks.io/capataz/content/)

### Raft
* [chrisnc/tangaroa](https://github.com/chrisnc/tangaroa)
* [NicolasT/kontiki](https://github.com/NicolasT/kontiki) - An implementation of the Raft consensus protocol
* [adjoint-io/raft: Raft Consensus Algorithm](https://github.com/adjoint-io/raft)

### Transient
* [agocorona/transient](https://github.com/agocorona/transient)
* [agocorona/transient-universe](https://github.com/agocorona/transient-universe)
* [Moving Haskell processes between nodes (Transient effects IV)](https://www.fpcomplete.com/user/agocorona/moving-haskell-processes-between-nodes-transient-effects-iv)
* [Estimation of π using distributed computing. Streaming. Transient effects VI](https://www.fpcomplete.com/user/agocorona/estimation-of-using-distributed-computing-streaming-transient-effects-vi-1)
* [Composing distributed Web applications](https://github.com/agocorona/transient/wiki/Composing--distributed-Web-applications)

### Cloud Haskell
型付けされたメッセージを備えたErlangライクなアクターモデル

- [Cloud Haskell](http://haskell-distributed.github.io/)
- [Cloud Haskellについて調べてみた - Qiita](https://qiita.com/lotz/items/c049f3a94d913ab6ae1b)
- [Distributed Systems in Haskell](http://yager.io/Distributed/Distributed.html)
- [Using Cloud Haskell to write a type-safe distributed chat - Tutorials](https://www.stackbuilders.com/tutorials/haskell/cloud-haskell/)
- [Session types in Cloud Haskell : haskell](https://www.reddit.com/r/haskell/comments/7g3ckg/session_types_in_cloud_haskell/)
- [Well-Typed - The Haskell Consultants: A Cloud Haskell Appetiser (Parallel Haskell Digest 11)](http://www.well-typed.com/blog/68/)
- [Well-Typed - The Haskell Consultants: Communication Patterns in Cloud Haskell (Part 1)](http://www.well-typed.com/blog/71/)
- [Well-Typed - The Haskell Consultants: Communication Patterns in Cloud Haskell (Part 2)](http://www.well-typed.com/blog/72/)
- [Well-Typed - The Haskell Consultants: Communication Patterns in Cloud Haskell (Part 3)](http://www.well-typed.com/blog/73/)
- [Well-Typed - The Haskell Consultants: Communication Patterns in Cloud Haskell (Part 4)](http://www.well-typed.com/blog/74/)
