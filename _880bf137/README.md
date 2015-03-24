##Template Haskell
* [Language.Haskell.TH](http://hackage.haskell.org/package/template-haskell-2.5.0.0/docs/Language-Haskell-TH.html)
* [できる！Template Haskell (完)](http://haskell.g.hatena.ne.jp/mr_konn/20111218/1324220725)

```
{-# LANGUAGE QuasiQuotes #-}
import Language.Haskell.TH.Quote

csv :: QuasiQuoter
csv = QuasiQuoter
      { quoteExp  = exp
      , quotePat  = undefined
      , quoteType = undefined
      , quoteDec  = undefined
      }
      where
      exp = dataToExpQ (const Nothing) . readCSV
      readCSV xs = let (ys, zs) = break (==',') xs
                   in if null zs then [ys]
                                 else ys : readCSV (tail zs)
```

```
>>> [csv|1,2,3|]
["1","2","3"]
```

##Type Inference
* [An Explanation of Type Inference for ML/Haskell](http://jozefg.bitbucket.org/posts/2015-02-28-type-inference.html)

##GHC
* [栄光のグラスゴーHaskellコンパイルシステム利用の手引き](http://www.kotha.net/ghcguide_ja/latest/)
* [Haskellのコンパイル中に現れるSTGと, GDBで見るC-backendなC--](http://d.hatena.ne.jp/suztomo/20111224/1324718354)
* [Haskellコードの高速化](http://www.kotha.net/hperf/)
* [Naïve Haskell data representation](http://www.scs.stanford.edu/14sp-cs240h/slides/memory-slides.html#(11))
* [Language extensions](http://www.scs.stanford.edu/14sp-cs240h/slides/extensions-slides.html)
* [Haskell Compiler (compiler)](http://www.scs.stanford.edu/14sp-cs240h/slides/ghc-compiler-slides.html)
* [Haskell Compiler (rts)](http://www.scs.stanford.edu/14sp-cs240h/slides/ghc-rts.pdf)
* [The GHC Runtime System](http://ezyang.com/jfp-ghc-rts-draft.pdf)
* [複数のGHCを共存させる](http://d.hatena.ne.jp/kazu-yamamoto/20140415/1397528405)
* [24 Days of GHC Extensions](https://ocharles.org.uk/blog/pages/2014-12-01-24-days-of-ghc-extensions.html)
* [GADTs meet their match](http://research.microsoft.com/en-us/um/people/simonpj/papers/pattern-matching/gadtpm.pdf)
* [Why are ADTs necessary?](http://www.reddit.com/r/haskell/comments/2z1n16/why_are_adts_necessary/)
* 🎥 [Dan Doel - Introduction to Low Level Haskell Optimization](https://www.youtube.com/watch?v=McFNkLPTOSY)

###Bang patterms
* [7.18. Bang patterns](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/bang-patterns.html)
* [Bang patterns](https://ghc.haskell.org/trac/haskell-prime/wiki/BangPatterns)

###Proposals
* [Default superclass instances](https://ghc.haskell.org/trac/ghc/wiki/DefaultSuperclassInstances)


##Ecosystem
* [Hackage](http://hackage.haskell.org/)
* [Hoogle](https://www.haskell.org/hoogle/)
* [Hayoo!](http://hayoo.fh-wedel.de/)

###Group
* [New York Haskell Users Group](http://www.meetup.com/NY-Haskell/)
* [HaskellJP](http://wiki.haskell.jp/)
* [haskell-ja](http://chaton.practical-scheme.net/haskell-ja/)
* [Google+](https://plus.google.com/communities/104818126031270146189)
* [Facebook](https://www.facebook.com/groups/programming.haskell)
* [Reddit](http://www.reddit.com/r/haskell/)

###Conference
* [JSSST-SIGPPL](http://ppl.jssst.or.jp/)
* [International Conference on Functional Programming](http://www.icfpconference.org/)
