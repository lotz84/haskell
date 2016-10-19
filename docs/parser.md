* [Alex and Happy: Parsing comments and strings](http://www.jyotirmoy.net/posts/2015-08-17-alex-happy-startcodes.html)
* [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours) [[ja](https://ja.wikibooks.org/wiki/48%E6%99%82%E9%96%93%E3%81%A7Scheme%E3%82%92%E6%9B%B8%E3%81%93%E3%81%86)]
* [Write You a Haskell](http://dev.stephendiehl.com/fun/)
* [The Implementation of Functional Programming Languages](http://research.microsoft.com/en-us/um/people/simonpj/papers/slpj-book-1987/)
* [Introduction to PEG](http://www.slideshare.net/kmizushima/introduction-to-peg)
* [ビジュアル構文解析](http://www.slideshare.net/ichikaz3/ss-11400787)
* [Tries and elegant Scope Checking](http://jaspervdj.be/posts/2015-10-30-tries-scope-checking.html)
* [24 days of Hackage, 2015: day 13: hint: runtime eval for Haskell](http://conscientiousprogrammer.com/blog/2015/12/13/24-days-of-hackage-2015-day-13-hint-runtime-eval-for-haskell/)
* [24 days of Hackage, 2015: day 14: Earley: a promising newer parser library for Haskell](http://conscientiousprogrammer.com/blog/2015/12/14/24-days-of-hackage-2015-day-14-earley-a-promising-newer-parser-library-for-haskell/)
* [Yuras/scanner](https://github.com/Yuras/scanner)
* [Building a Lisp->JS transpiler From Scratch in 350 LOC](http://gilmi.xyz/post/2016/10/14/lisp-to-js)

## 正規表現
* [関数型的正規表現マッチ](https://research.preferred.jp/2010/11/regexp-play/)
* [24 days of Hackage, 2015: day 2: Regexes with pcre-heavy; standalone Haskell scripts using Stack](http://conscientiousprogrammer.com/blog/2015/12/02/24-days-of-hackage-2015-day-2-regexes-with-pcre-heavy-standalone-haskell-scripts-using-stack/)
* [lens-regex で正規表現を便利に](http://qiita.com/thimura/items/887db74cdf8bde9c1902)
* [Haskellで簡単な正規表現を実装した【KMCアドベントカレンダー8日目】](http://yu-i9.hatenablog.com/entry/2014/12/08/000104)
* [A Play on Regular Expressions](http://sebfisch.github.io/haskell-regexp/regexp-play.pdf)
* [Differentiating Regular Expressions](http://languagengine.co/blog/differentiating-regular-expressions/)
* [Partial Derivatives of Regular Expressions](https://www.youtube.com/watch?v=QVdBPvOOjBA)
* [Regex Edit Distance](http://languagengine.co/blog/regex-edit-distance/)
* [Fast, Elegant Regexes in Haskell](https://begriffs.com/posts/2016-06-27-fast-haskell-regexes.html)

## パーサーコンビネータ
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
  * [Announcing Megaparsec 5](https://mrkkrp.github.io/posts/announcing-megaparsec-5.html)
* [The attoparsec package](http://hackage.haskell.org/package/attoparsec)
* [[ANN] binary-parsers 0.1.0.0](https://www.reddit.com/r/haskell/comments/53m6cc/ann_binaryparsers_0100/)
* [The trifecta package](https://hackage.haskell.org/package/trifecta)
* [The parsers package](http://hackage.haskell.org/package/parsers)
* [モナディック・パーサー](http://d.hatena.ne.jp/kazu-yamamoto/20080920/1221881130)
* [構文解析器結合子](https://www.ipsj.or.jp/07editj/promenade/4702.pdf)
* [Monadic Parsing in Haskell](http://www.cs.nott.ac.uk/~gmh/pearl.pdf)
* [Pandoc - a universal document converter](http://pandoc.org/)
  * [Try pandoc!](http://pandoc.org/try/)
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
* [OpenFlowの可変長フィールドをAttoparsecで解析する](http://qiita.com/ilyaletre/items/b0e77aeb67914aec60be)
* [Parser Combinators](http://athiemann.net/2016/05/27/parser-combinators.html)
* [えっ!?　１時間でオリジナルのプログラミング言語の開発を構文解析から!?](http://qiita.com/hiruberuto/items/160fe92376e795168acd)

### Language
* [Hackage Search: language](https://hackage.haskell.org/packages/search?terms=language)
* [haskell-src-exts](https://hackage.haskell.org/package/haskell-src-exts)
* [language-javascript](https://hackage.haskell.org/package/language-javascript)
* [language-python](https://hackage.haskell.org/package/language-python)
* [mchakravarty/language-swift-quote](https://github.com/mchakravarty/language-swift-quote)
* [vincenthz/language-java](https://github.com/vincenthz/language-java)

## データ構造
### バイナリ
* [Haskellでバイナリをパースする その１(たぶん続かない)](http://qiita.com/AyachiGin/items/4f9a0afea548288bfc87)

### CSV
* [cassava](https://hackage.haskell.org/package/cassava)
* [CSV encoding and decoding in Haskell with Cassava](https://www.stackbuilders.com/tutorials/haskell/csv-encoding-decoding/)
* [CASSAVA MEGAPARSEC LIBRARY RELEASED](https://www.stackbuilders.com/news/cassava-megaparsec-library-released)

### XML
* [xml-conduit](https://hackage.haskell.org/package/xml-conduit)
  * [xml-lens](https://hackage.haskell.org/package/xml-lens)
* [The hxt package](https://hackage.haskell.org/package/hxt)

### Excel
* [xlsx](https://hackage.haskell.org/package/xlsx)

### PDF
* [詳細PDF入門 ー 実装して学ぼう！PDFファイルの構造とその書き方読み方](http://itchyny.hatenablog.com/entry/2015/09/16/100000)

### YAML
* [yamadapc/haskell-frontmatter](https://github.com/yamadapc/haskell-frontmatter)
* [YAML + Aeson Lenses](http://mojobojo.com/posts/2016-03-31-yaml-aeson-lenses.html)

### Markdown
* [snoyberg/markdown](https://github.com/snoyberg/markdown)
* [cmark: Fast, accurate CommonMark (Markdown) parser and renderer](https://hackage.haskell.org/package/cmark)

### JSON
* [aeson](http://hackage.haskell.org/package/aeson)
  * [Aeson: the tutorial](http://artyom.me/aeson)
  * [AesonでJSONをパース・生成する方法まとめ](http://qiita.com/alpha22jp/items/4cc65f128962e11811fb)
* [aeson-schema](https://hackage.haskell.org/package/aeson-schema)
  * [timjb/aeson-schema](https://github.com/timjb/aeson-schema)
* [informatikr/aeson-pretty](https://github.com/informatikr/aeson-pretty)
* [hdgarrood/aeson-better-errors](https://github.com/hdgarrood/aeson-better-errors)
* [The aeson-yak package](http://hackage.haskell.org/package/aeson-yak)
* [lens-aeson](https://hackage.haskell.org/package/lens-aeson)
* [mgajda/json-autotype](https://github.com/mgajda/json-autotype)
* [JSON Autotype 1.0 - Haskell SG](https://www.youtube.com/watch?v=8D2-m2ikydc)
* [HaskellでのJSONパースがこんなに簡単だったとは](http://qiita.com/lotz/items/6305f8460db3419c22e3)
* [24 days of Hackage, 2015: day 12: json-autotype: inferring types from data](http://conscientiousprogrammer.com/blog/2015/12/12/24-days-of-hackage-2015-day-12-json-autotype-inferring-types-from-data/)
* [03 Parsing JSON and catching exceptions](https://github.com/mitchellwrosen/slacky/wiki/03-Parsing-JSON-and-catching-exceptions)
