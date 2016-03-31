* [Alex and Happy: Parsing comments and strings](http://www.jyotirmoy.net/posts/2015-08-17-alex-happy-startcodes.html)
* [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours) [[ja](https://ja.wikibooks.org/wiki/48%E6%99%82%E9%96%93%E3%81%A7Scheme%E3%82%92%E6%9B%B8%E3%81%93%E3%81%86)]
* [Write You a Haskell](http://dev.stephendiehl.com/fun/)
* [The Implementation of Functional Programming Languages](http://research.microsoft.com/en-us/um/people/simonpj/papers/slpj-book-1987/)
* [Introduction to PEG](http://www.slideshare.net/kmizushima/introduction-to-peg)
* [ビジュアル構文解析](http://www.slideshare.net/ichikaz3/ss-11400787)
* [A Tutorial Implementation of a Dependently Typed Lambda Calculus](http://www.andres-loeh.de/LambdaPi/)
* [Tries and elegant Scope Checking](http://jaspervdj.be/posts/2015-10-30-tries-scope-checking.html)
* [24 days of Hackage, 2015: day 13: hint: runtime eval for Haskell](http://conscientiousprogrammer.com/blog/2015/12/13/24-days-of-hackage-2015-day-13-hint-runtime-eval-for-haskell/)
* [24 days of Hackage, 2015: day 14: Earley: a promising newer parser library for Haskell](http://conscientiousprogrammer.com/blog/2015/12/14/24-days-of-hackage-2015-day-14-earley-a-promising-newer-parser-library-for-haskell/)

##正規表現
* [24 days of Hackage, 2015: day 2: Regexes with pcre-heavy; standalone Haskell scripts using Stack](http://conscientiousprogrammer.com/blog/2015/12/02/24-days-of-hackage-2015-day-2-regexes-with-pcre-heavy-standalone-haskell-scripts-using-stack/)
* [lens-regex で正規表現を便利に](http://qiita.com/thimura/items/887db74cdf8bde9c1902)
* [Haskellで簡単な正規表現を実装した【KMCアドベントカレンダー8日目】](http://yu-i9.hatenablog.com/entry/2014/12/08/000104)
* [Partial Derivatives of Regular Expressions](https://www.youtube.com/watch?v=QVdBPvOOjBA)

##パーサーコンビネータ
* [JavaScriptでパーサコンビネータのコンセプトを理解する](http://blog.anatoo.jp/entry/2015/04/26/220026)

```haskell
type Parser = StateT String []
-- type Parser = StateT String Maybe
-- type Parser = StateT String (Either Error)

parse = evalStateT
```

* [The parsec package](https://hackage.haskell.org/package/parsec)
* [Megaparsec](https://mrkkrp.github.io/megaparsec/)
  * [Tutorials](https://mrkkrp.github.io/megaparsec/tutorials.html)
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
* Efficient parsing of large text files, [part1](https://hbtvl.wordpress.com/2015/11/19/efficient-parsing-of-large-text-files-part-1/) [part2](https://hbtvl.wordpress.com/2015/11/28/efficient-parsing-of-large-text-files-part-2/) [part3](https://hbtvl.wordpress.com/2015/11/29/efficient-parsing-of-large-text-files-part-3/) [part4](https://hbtvl.wordpress.com/2015/12/14/efficient-parsing-of-large-text-files-part-4-and-conclusion/)
* [High-performance Log Parsing in Haskell: Part Two](https://www.safaribooksonline.com/blog/2015/12/14/high-performance-log-parsing-in-haskell-part-two/)
* [Parser Combinators: Parsing for Haskell Beginners](http://two-wrongs.com/parser-combinators-parsing-for-haskell-beginners)
* [What's in a parser combinator?](http://remusao.github.io/whats-in-a-parser-combinator.html)
* [Megaparsec 4 and 5](https://mrkkrp.github.io/posts/megaparsec-4-and-5.html)

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

###Excel
* [xlsx](https://hackage.haskell.org/package/xlsx)

###PDF
* [詳細PDF入門 ー 実装して学ぼう！PDFファイルの構造とその書き方読み方](http://itchyny.hatenablog.com/entry/2015/09/16/100000)

###YAML
* [yamadapc/haskell-frontmatter](https://github.com/yamadapc/haskell-frontmatter)

###JSON
* [aeson](http://hackage.haskell.org/package/aeson)
  * [Aeson: the tutorial](http://artyom.me/aeson)
  * [AesonでJSONをパース・生成する方法まとめ](http://qiita.com/alpha22jp/items/4cc65f128962e11811fb)
* [aeson-schema](https://hackage.haskell.org/package/aeson-schema)
  * [timjb/aeson-schema](https://github.com/timjb/aeson-schema)
* [hdgarrood/aeson-better-errors](https://github.com/hdgarrood/aeson-better-errors)
* [The aeson-yak package](http://hackage.haskell.org/package/aeson-yak)
* [lens-aeson](https://hackage.haskell.org/package/lens-aeson)
* [mgajda/json-autotype](https://github.com/mgajda/json-autotype)
* [JSON Autotype 1.0 - Haskell SG](https://www.youtube.com/watch?v=8D2-m2ikydc)
* [HaskellでのJSONパースがこんなに簡単だったとは](http://qiita.com/lotz/items/6305f8460db3419c22e3)
* [24 days of Hackage, 2015: day 12: json-autotype: inferring types from data](http://conscientiousprogrammer.com/blog/2015/12/12/24-days-of-hackage-2015-day-12-json-autotype-inferring-types-from-data/)
