* [Alex and Happy: Parsing comments and strings](http://www.jyotirmoy.net/posts/2015-08-17-alex-happy-startcodes.html)
* [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours) [[ja](https://ja.wikibooks.org/wiki/48%E6%99%82%E9%96%93%E3%81%A7Scheme%E3%82%92%E6%9B%B8%E3%81%93%E3%81%86)]
* [Write You a Haskell](http://dev.stephendiehl.com/fun/)
* [The Implementation of Functional Programming Languages](http://research.microsoft.com/en-us/um/people/simonpj/papers/slpj-book-1987/)
* [Introduction to PEG](http://www.slideshare.net/kmizushima/introduction-to-peg)
* [ビジュアル構文解析](http://www.slideshare.net/ichikaz3/ss-11400787)
* [A Tutorial Implementation of a Dependently Typed Lambda Calculus](http://www.andres-loeh.de/LambdaPi/)
* [Tries and elegant Scope Checking](http://jaspervdj.be/posts/2015-10-30-tries-scope-checking.html)

##パーサーコンビネータ
* [JavaScriptでパーサコンビネータのコンセプトを理解する](http://blog.anatoo.jp/entry/2015/04/26/220026)

```haskell
type Parser = StateT String []
-- type Parser = StateT String Maybe
-- type Parser = StateT String (Either Error)

parse = evalStateT
```

* [The parsec package](https://hackage.haskell.org/package/parsec)
* [The megaparsec package](https://hackage.haskell.org/package/megaparsec)
* [The attoparsec package](http://hackage.haskell.org/package/attoparsec)
* [The trifecta package](https://hackage.haskell.org/package/trifecta)
* [The parsers package](http://hackage.haskell.org/package/parsers)
* [モナディック・パーサー](http://d.hatena.ne.jp/kazu-yamamoto/20080920/1221881130)
* [構文解析器結合子](https://www.ipsj.or.jp/07editj/promenade/4702.pdf)
* [Monadic Parsing in Haskell](http://www.cs.nott.ac.uk/~gmh/pearl.pdf)
* [Pandoc - a universal document converter](http://pandoc.org/)
  * [markup.rocks](http://markup.rocks/)
* [Erasing "expected" messages in Parsec](http://jaspervdj.be/posts/2015-09-02-erasing-parsec-expected-messages.html)
* [bound](http://hackage.haskell.org/package/bound)
* [Two kinds of backtracking](http://gelisam.blogspot.ca/2015/09/two-kinds-of-backtracking.html)
* [8章:関数型パーサ](http://www.slideshare.net/RuiccRail/programming-haskell-chapter8)
* [Simple Monadic Parser in Haskell](http://michal.muskala.eu/2015/09/23/simple-monadic-parser-in-haskell.html)
* [Packrat Parsing: Simple, Powerful, Lazy, Linear Time](http://bford.info/pub/lang/packrat-icfp02.pdf)

###Language
* [Hackage Search: language](https://hackage.haskell.org/packages/search?terms=language)
* [haskell-src-exts](https://hackage.haskell.org/package/haskell-src-exts)
* [language-javascript](https://hackage.haskell.org/package/language-javascript)
* [language-python](https://hackage.haskell.org/package/language-python)
* [mchakravarty/language-swift-quote](https://github.com/mchakravarty/language-swift-quote)

##データ構造
###CSV
* [cassava](https://hackage.haskell.org/package/cassava)

###XML
* [xml-conduit](https://hackage.haskell.org/package/xml-conduit)
  * [xml-lens](https://hackage.haskell.org/package/xml-lens)

###JSON
* [aeson](http://hackage.haskell.org/package/aeson)
  * [Aeson: the tutorial](http://artyom.me/aeson)
  * [AesonでJSONをパース・生成する方法まとめ](http://qiita.com/alpha22jp/items/4cc65f128962e11811fb)
* [aeson-schema](https://hackage.haskell.org/package/aeson-schema)
  * [timjb/aeson-schema](https://github.com/timjb/aeson-schema)
* [The aeson-yak package](http://hackage.haskell.org/package/aeson-yak)
* [lens-aeson](https://hackage.haskell.org/package/lens-aeson)
* [buffer-builder](https://hackage.haskell.org/package/buffer-builder)
