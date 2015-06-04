##Parser

```haskell
type Source    = String
type Remainder = String
newtype Parser result = Parser { parse :: Source -> [(result, Remainder)] }
```

* [Monadic Parsing in Haskell](http://www.cs.nott.ac.uk/~gmh/pearl.pdf)
* [Parsing with Haskell](http://fileadmin.cs.lth.se/cs/Education/EDAN40/assignment4/parser.pdf)
* [構文解析器結合子](https://www.ipsj.or.jp/07editj/promenade/4702.pdf)
   * [モナディック・パーサー](http://d.hatena.ne.jp/kazu-yamamoto/20080920/1221881130)
* [parsec](https://hackage.haskell.org/package/parsec)
* [attoparsec](http://hackage.haskell.org/package/attoparsec)
* [JavaScriptでパーサコンビネータのコンセプトを理解する](http://blog.anatoo.jp/entry/2015/04/26/220026)
* [Pandoc - a universal document converter](http://pandoc.org/)
  * [markup.rocks](http://markup.rocks/)
* [cassava](https://hackage.haskell.org/package/cassava-0.4.2.4)
* [haskell-src-exts](https://hackage.haskell.org/package/haskell-src-exts)
* [htoml](https://hackage.haskell.org/package/htoml)

###コンパイラを作る
* [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours)
* [Implementing a JIT Compiled Language with Haskell and LLVM](http://www.stephendiehl.com/llvm/)
* [Write You a Haskell](http://dev.stephendiehl.com/fun/)
* [The Implementation of Functional Programming Languages](http://research.microsoft.com/en-us/um/people/simonpj/papers/slpj-book-1987/)
