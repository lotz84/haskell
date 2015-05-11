* [できる！並列・並行プログラミング](http://www.slideshare.net/pfi/ss-9780450)
* [Concurrency](http://www.scs.stanford.edu/14sp-cs240h/slides/concurrency-slides.html)
* [Memory](http://www.scs.stanford.edu/14sp-cs240h/slides/memory-slides.html)
* [Beautiful concurrency](http://research.microsoft.com/en-us/um/people/simonpj/papers/stm/beautiful.pdf)
* [A Compositional Theory for STM Haskell](https://vimeo.com/6685355)
* [Programming in the Age of Concurrency: Software Transactional Memory](http://channel9.msdn.com/Shows/Going+Deep/Programming-in-the-Age-of-Concurrency-Software-Transactional-Memory)
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

##並列
* [monad-par](https://hackage.haskell.org/package/monad-par)
* [accelerate](http://hackage.haskell.org/package/accelerate)
* [accelerate-cuda](http://hackage.haskell.org/package/accelerate-cuda)

##並行
* [async](http://hackage.haskell.org/package/async)

###MVar
[Control.Concurrent.MVar](https://hackage.haskell.org/package/base/docs/Control-Concurrent-MVar.html)

```haskell
import Control.Concurrent
main = do
    messages <- newEmptyMVar
    forkIO $ putMVar messages "ping"
    
    msg <- takeMVar messages
    putStrLn msg
```

出展: [Haskell by Example: Channels](http://lotz84.github.io/haskellbyexample/ex/channels)

####Select

```haskell
{-# LANGUAGE GADTs #-}
import Control.Concurrent

data Select a where
    Default :: IO a -> Select a
    Case    :: MVar b -> (b -> IO a) -> Select a

select :: [Select a] -> IO a
select [] = error "select: empty list"
select ((Default x):_) = x
select (x@(Case v f):xs)  = do
    var <- tryTakeMVar v
    case var of
        Just b  -> f b
        Nothing -> select (xs ++ [x])
```

###Chan
[Control.Concurrent.Chan](https://hackage.haskell.org/package/base/docs/Control-Concurrent-Chan.html)

###STM
* [Simple STM example](https://wiki.haskell.org/Simple_STM_example)

##分散
* [Cloud Haskell](http://haskell-distributed.github.io/)
* [distributed-process](https://hackage.haskell.org/package/distributed-process)
