## 構文解析器
### Alex / Happy
* [Alex and Happy: Parsing comments and strings](https://www.jyotirmoy.net/posts/2015-08-17-alex-happy-startcodes.html)
* [Happyでパースエラーで列行番号とどんなミスマッチが起こったか報告する - Qiita](https://qiita.com/aiya000/items/7cdc843972c8bd9da04e)

### パーサーコンビネータ
* [JavaScriptでパーサコンビネータのコンセプトを理解する](http://blog.anatoo.jp/entry/2015/04/26/220026)

```haskell
type Parser = StateT String []
-- type Parser = StateT String Maybe
-- type Parser = StateT String (Either Error)

parse = evalStateT
```

* [The parsec package](https://hackage.haskell.org/package/parsec)
* [[ANN] binary-parsers 0.1.0.0](https://www.reddit.com/r/haskell/comments/53m6cc/ann_binaryparsers_0100/)
* [The parsers package](http://hackage.haskell.org/package/parsers)
* [モナディック・パーサー](http://d.hatena.ne.jp/kazu-yamamoto/20080920/1221881130)
* [構文解析器結合子](https://www.ipsj.or.jp/07editj/promenade/4702.pdf)
* [Monadic Parsing in Haskell](http://www.cs.nott.ac.uk/~gmh/pearl.pdf)
* [Revisiting 'Monadic Parsing in Haskell' - Vaibhav Sagar](http://vaibhavsagar.com/blog/2018/02/04/revisiting-monadic-parsing-haskell/)
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
* [OpenFlowの可変長フィールドをAttoparsecで解析する](http://qiita.com/ilyaletre/items/b0e77aeb67914aec60be)
* [Parser Combinators](http://athiemann.net/2016/05/27/parser-combinators.html)
* [えっ!?　１時間でオリジナルのプログラミング言語の開発を構文解析から!?](http://qiita.com/hiruberuto/items/160fe92376e795168acd)
* [quickdudley/phaser](https://github.com/quickdudley/phaser)
* [Left-recursive parsing of Haskell imports and declarations](http://blog.ezyang.com/2016/12/left-recursive-parsing-of-haskell-imports-and-declarations/)
* [Package takeover: indents](https://jaspervdj.be/posts/2016-12-22-indents.html)
* [Modular parser combinators - Coq en Stock](https://ptival.github.io/2017/02/25/modular-parser-combinators/)
* [Monoidal Parsing—Edward Kmett](https://www.youtube.com/watch?v=Txf7swrcLYs)
* [パーサー結合子：ハスケル初心者のための解析](https://two-wrongs.com/parser-combinators-parsing-for-haskell-beginners.html)
* [Parsing list comprehensions is hard](http://www.rntz.net/post/2018-07-10-parsing-list-comprehensions.html)
* [「正規表現はあんまり使わないかな。パーサー使うから」っていう人の気持ちがわかった！ - Qiita](https://qiita.com/aiya000/items/82f432a4b19c60561c01)
* [【Haskell】Persistentをstack installするときに発生するエラー対処。>=0.9.0 is required but it could not be found. - Qiita](https://qiita.com/moriwm77/items/aebda67739d8651ae21f)
* [The round-trip property](https://teh.id.au/posts/2017/06/07/round-trip-property/index.html)

#### attoparsec
* [The attoparsec package](http://hackage.haskell.org/package/attoparsec)
* [The blog of wjwh - Parsing infinite streams with attoparsec](http://www.wjwh.eu/posts/2019-01-01-parsing-infinite-streams.html)

### Megaparsec
* [Megaparsec](https://mrkkrp.github.io/megaparsec/)
  * [Tutorials](https://mrkkrp.github.io/megaparsec/tutorials.html)
  * [Announcing Megaparsec 5](https://mrkkrp.github.io/posts/announcing-megaparsec-5.html)
  * [Latest additions to Megaparsec](https://mrkkrp.github.io/posts/latest-additions-to-megaparsec.html)
  * [Beginner's guide to Megaparsec](http://akashagrawal.me/beginners-guide-to-megaparsec/)
* [Megaparsec 4 and 5](https://mrkkrp.github.io/posts/megaparsec-4-and-5.html)
* [Megaparsec tutorial from IH book](https://markkarpov.com/megaparsec/megaparsec.html)
* [Megaparsec 8](https://markkarpov.com/post/megaparsec-8.html)
* [jamesdbrock/replace-megaparsec: Stream editing with Haskell Megaparsec parsers](https://github.com/jamesdbrock/replace-megaparsec)

#### Terifecta
* [The trifecta package](https://hackage.haskell.org/package/trifecta)
* [Trifecta で拡張可能パーサを作る - Qiita](https://qiita.com/Mizunashi_Mana/items/064531eb4aeacb5a7c63)

#### Language
* [Hackage Search: language](https://hackage.haskell.org/packages/search?terms=language)
* [haskell-src-exts](https://hackage.haskell.org/package/haskell-src-exts)
* [language-javascript](https://hackage.haskell.org/package/language-javascript)
* [language-python](https://hackage.haskell.org/package/language-python)
* [mchakravarty/language-swift-quote](https://github.com/mchakravarty/language-swift-quote)
* [vincenthz/language-java](https://github.com/vincenthz/language-java)
* [language-rust: Parsing and pretty printing of Rust code](https://hackage.haskell.org/package/language-rust)
* [language-c: Analysis and generation of C code](https://hackage.haskell.org/package/language-c)

## ファイルフォーマット
### バイナリ
* [Haskellでバイナリをパースする その１(たぶん続かない)](http://qiita.com/AyachiGin/items/4f9a0afea548288bfc87)
* [Yuras/scanner: Fast non-backtracking incremental combinator parsing for bytestrings](https://github.com/Yuras/scanner)

### CSV
* ベンチマーク
  * https://github.com/haskell-perf/csv
* [cassava](https://hackage.haskell.org/package/cassava)
  * [CSV encoding and decoding in Haskell with Cassava](https://www.stackbuilders.com/tutorials/haskell/csv-encoding-decoding/)
  * [CASSAVA MEGAPARSEC LIBRARY RELEASED](https://www.stackbuilders.com/news/cassava-megaparsec-library-released)
* [sv: Encode and decode separated values (CSV, PSV, ...)](https://hackage.haskell.org/package/sv)
  * [Queensland FP Lab - Announcing sv 1.0](https://qfpl.io/posts/sv-1.0/)
* [readcsv: Lightweight CSV parser/emitter based on ReadP](https://hackage.haskell.org/package/readcsv-0.1)
* [Oleg's gists - Fancy types for CSV library](https://oleg.fi/gists/posts/2019-07-15-fancy-types-for-cassava.html)
* [ChrisPenner/lens-csv: Lensy interface for parsing CSV's](https://github.com/ChrisPenner/lens-csv)
* [HaskellでData.Csv(cassava)を使ってcsvファイルを処理する - Qiita](https://qiita.com/TTsurutani/items/811814ebf548332ede8a)

### XML
* [xml-conduit](https://hackage.haskell.org/package/xml-conduit)
  * [xml-lens](https://hackage.haskell.org/package/xml-lens)
* [The hxt package](https://hackage.haskell.org/package/hxt)
* [New XML Parser, Hexml](http://neilmitchell.blogspot.jp/2016/12/new-xml-parser-hexml.html)
* [ocramz/xeno: Fast Haskell XML parser](https://github.com/ocramz/xeno)
* [4e6/haskell-perf-xml - Simple benchmarks for XML parsing libraries](https://github.com/4e6/haskell-perf-xml)

### HTML
* [A taste of tag soup](http://codekinder.com/wordpress/a-taste-of-tag-soup)
* [How to write a simple MarkDown to inline-Styled HTml tool with Haskell](http://qiita.com/kimagure/items/97e8d7b9cb318ba7ebef)

### Excel
* [xlsx](https://hackage.haskell.org/package/xlsx)

### PDF
* [詳細PDF入門 ー 実装して学ぼう！PDFファイルの構造とその書き方読み方](http://itchyny.hatenablog.com/entry/2015/09/16/100000)

### YAML
* [yamadapc/haskell-frontmatter](https://github.com/yamadapc/haskell-frontmatter)
* [YAML + Aeson Lenses](http://mojobojo.com/posts/2016-03-31-yaml-aeson-lenses.html)

### RDF
* [rdf4h RDF for Haskell](http://robstewart57.github.io/rdf4h/)

### Markdown
* [snoyberg/markdown](https://github.com/snoyberg/markdown)
* [cmark: Fast, accurate CommonMark (Markdown) parser and renderer](https://hackage.haskell.org/package/cmark)
* [Announcing MMark](https://markkarpov.com/post/announcing-mmark.html)

### JSON
* [HaskellとJSON、そしてレコード型](http://syocy.hatenablog.com/entry/2017/08/14/235830)
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
* [Stricter JSON parsing with Haskell and Aeson – Arun Raghavan](https://arunraghavan.net/2017/02/stricter-json-parsing-with-haskell-and-aeson/)
* [crjdt-haskell Haskell package - Data \| LibHunt](https://haskell.libhunt.com/project/crjdt-haskell)
* [Playing with lens-aeson](https://www.snoyman.com/blog/2017/05/playing-with-lens-aeson)
* [Migrating JSON with lens and foci :: Capital Match Tech Blog](https://tech-blog.capital-match.com/posts/4-json-migration.html)
* [ParsecでJSONパーサの作成 - Qiita](https://qiita.com/penguinshunya/items/bf4e8b2527a7a2846940)
* [Type-driven safe derivation of ToJSON and FromJSON, using DerivingVia in GHC 8.6 and some type-level hacks](https://www.reddit.com/r/haskell/comments/8y98yt/typedriven_safe_derivation_of_tojson_and_fromjson/)
* [Queensland FP Lab - Waargonaut The JSONer](http://qfpl.io/posts/waargonaut-the-jsoner/)
* [Aeson's mysterious lazy parsing \| Winter's Land](http://winterland.me/2019/03/05/aeson's-mysterious-lazy-parsing/)
* [obsidiansystems/aeson-gadt-th: Template Haskell for generating ToJSON and FromJSON instances for GADTs](https://github.com/obsidiansystems/aeson-gadt-th)
* [Vlix/safe-json: Automatic versioning of JSON formats for Haskell data types (with backwards compatibility)](https://github.com/Vlix/safe-json)
* [aeson-schemas: Easily consume JSON data on-demand with type-safety](http://hackage.haskell.org/package/aeson-schemas)
* [Typeable Blog - JSON parser performance optimization, the slow path trick](https://blog.typeable.io/posts/2020-02-24-performance_slow_path.html)
- [JSON Parsing from Scratch in Haskell \| abhinavsarkar.net](https://abhinavsarkar.net/posts/json-parsing-from-scratch-in-haskell/)

### Others
* [github/semantic: Parsing, analyzing, and comparing source code across many languages](https://github.com/github/semantic)
  * [CodeGen: Semantic's improved language support system - The GitHub Blog](https://github.blog/2020-08-04-codegen-semantics-improved-language-support-system/)
* [Parsing and generating ABIF files (DNA chromatograms)](https://www.andrevdm.com/posts/2019-01-09-abif-chromatograms.html)
* [Philip Cunningham - Parse Ruby Objects in Haskell](https://filib.io/posts/2017-04-24-parse-ruby-objects-in-haskell.html)
* [Email message parsing in Haskell in 2018](https://gist.github.com/chrisdone/47a9e22672b54dedc87dec8b415e8127)

## 形式言語
### 微分
- [Well-Typed - The Haskell Consultants: Fix-ing regular expressions](https://well-typed.com/blog/2020/06/fix-ing-regular-expressions/)
- [Parsing with Derivatives - A Functional Pearl](http://matt.might.net/papers/might2011derivatives.pdf)
- [Regular-expression derivatives reexamined](https://www.ccs.neu.edu/home/turon/re-deriv.pdf)
- [[1010.5023] Yacc is dead](https://arxiv.org/abs/1010.5023)
- [Yacc is dead: An update](http://matt.might.net/articles/parsing-with-derivatives/)

### 正規表現
- [A tale of backwards compatibility in ASTs](http://blog.ezyang.com/2016/12/a-tale-of-backwards-compatibility-in-asts/)
- [関数型的正規表現マッチ](https://research.preferred.jp/2010/11/regexp-play/)
- [24 days of Hackage, 2015: day 2: Regexes with pcre-heavy; standalone Haskell scripts using Stack](http://conscientiousprogrammer.com/blog/2015/12/02/24-days-of-hackage-2015-day-2-regexes-with-pcre-heavy-standalone-haskell-scripts-using-stack/)
- [lens-regex で正規表現を便利に](http://qiita.com/thimura/items/887db74cdf8bde9c1902)
- [Haskellで簡単な正規表現を実装した【KMCアドベントカレンダー8日目】](http://yu-i9.hatenablog.com/entry/2014/12/08/000104)
- [A Play on Regular Expressions](http://sebfisch.github.io/haskell-regexp/regexp-play.pdf)
- [Differentiating Regular Expressions](http://languagengine.co/blog/differentiating-regular-expressions/)
- [Partial Derivatives of Regular Expressions](https://www.youtube.com/watch?v=QVdBPvOOjBA)
- [Regex Edit Distance](http://languagengine.co/blog/regex-edit-distance/)
- [Fast, Elegant Regexes in Haskell](https://begriffs.com/posts/2016-06-27-fast-haskell-regexes.html)
- [2016 11 24 - Herrmann - Compiling a Simple language to LLVM](https://www.youtube.com/watch?v=Re3XgFfflzg&feature=youtu.be)
- [IRIS Connect Engineers' Blog - regex: A Toolkit for regex-base](http://engineers.irisconnect.net/posts/2017-03-07-regex.html)
- [Regular Expressions of Types – Oleg Grenrus - SmallFP 2018-09-13 : haskell](https://www.reddit.com/r/haskell/comments/9gmpzc/regular_expressions_of_types_oleg_grenrus_smallfp/)
- [Applicative Regular Expressions using the Free Alternative · in Code](https://blog.jle.im/entry/free-alternative-regexp.html)
- [ChrisPenner/lens-regex-pcre: Text lenses using PCRE regexes](https://github.com/ChrisPenner/lens-regex-pcre)
- [Locally Nameless :: Callan McGill](https://boarders.github.io/posts/locally-nameless/)
- [Things that amuse me](http://augustss.blogspot.com/2007/10/simpler-easier-in-recent-paper-simply.html)
- [regex-applicative: 内部DSLとしての正規表現（ブログ記事版） - Haskell-jp](https://haskell.jp/blog/posts/2019/regex-applicative.html)
- [Well-Typed - The Haskell Consultants: Fix-ing regular expressions](https://well-typed.com/blog/2020/06/fix-ing-regular-expressions/)

### Others
* [『形式意味論入門』を Haskell に書き下す (前編) - ryota-ka's blog](https://ryota-ka.hatenablog.com/entry/2019/08/15/213000)
* [『形式意味論入門』を Haskell に書き下す (後編) - ryota-ka's blog](https://ryota-ka.hatenablog.com/entry/2020/07/26/110000)
* [ollef/Earley: Parsing all context-free grammars using Earley's algorithm in Haskell.](https://github.com/ollef/Earley)
* [Wouter Swierstra, なぜ属性文法は重要か（原題：Why Attribute Grammars Matter） - Pac Learner](https://sites.google.com/site/paclearner/why_attribute_grammars_matter)

## インタプリタ／コンパイラ
- [CSCI 360: Programming Languages (Fall 2016)](http://ozark.hendrix.edu/~yorgey/360/f16/)
- [Go言語でつくるインタプリタを Haskell で書く - Qiita](https://qiita.com/kita127/items/a50927bbafcc874d5065)
- [Micro C, Part 1: Parsing – Joseph Morag](https://blog.josephmorag.com/posts/mcc1/)
- [λm.me - Compiling Lisp to JavaScript From Scratch in 350 LOC](https://gilmi.xyz/blog/post/2016/10/14/lisp-to-js)

### Lisp / Scheme
* [Learn Functional Programming by writing a Scheme in Haskell :: 0x0f0f0f](https://0x0f0f0f.github.io/posts/2019/09/learn-functional-programming-by-writing-a-scheme-in-haskell/)
* [48時間でSchemeを書こう - Wikibooks](https://ja.wikibooks.org/wiki/48%E6%99%82%E9%96%93%E3%81%A7Scheme%E3%82%92%E6%9B%B8%E3%81%93%E3%81%86)
* [Write You A Scheme, Version 2](https://wespiser.com/writings/wyas/home.html)
* [24 days of Hackage, 2015: day 10: s-cargot: using S-expression syntax · Franklin Chen](https://conscientiousprogrammer.com/blog/2015/12/10/24-days-of-hackage-2015-day-10-s-cargot-using-s-expression-syntax/)
* [素朴なlispインタープリター - Qiita](https://qiita.com/kmtoki/items/38adf6fa9da0deffb57e)
* [簡易LISP処理系の実装例（Haskell版） - Qiita](https://qiita.com/ytaki0801/items/bdd1a9c1f4e108b4bca0)

### LLVM
- [llvm-hs Kaleidoscope Tutorial](https://lukelau.me/kaleidoscope/)
- [Haskell+LLVM構成で作る自作コンパイラ - Qiita](https://qiita.com/toru0408/items/6bedee118ba08ea2c0b2)

### Haskell
- [Write You a Haskell ( Stephen Diehl )](http://dev.stephendiehl.com/fun/)
- [Haskell コンパイラを書こう！](https://uhideyuki.sakura.ne.jp/studs/index.cgi/ja/HaskellInHaskell)
- [The Implementation of Functional Programming Languages - Microsoft Research](https://www.microsoft.com/en-us/research/publication/the-implementation-of-functional-programming-languages/)

### AST/実装テクニック
* [Kwang's Haskell Blog - Write you an interpreter](http://kseo.github.io/posts/2016-12-30-write-you-an-interpreter.html)
* [jaspervdj - Tries and elegant Scope Checking](https://jaspervdj.be/posts/2015-10-30-tries-scope-checking.html)
* [osa1 - Knot-tying: why and how (and my opinions on it)](https://osa1.net/posts/2020-02-21-knot-tying-why-how-opinions.html)
* [A tale of backwards compatibility in ASTs : Inside 245-5D](http://blog.ezyang.com/2016/12/a-tale-of-backwards-compatibility-in-asts/)
* [Functorial Blog - Higher-order Abstract Syntax for Cartesian Closed Categories](https://blog.functorial.com/posts/2017-10-08-HOAS-CCCs.html)
* [Kwang's Haskell Blog - Continuation Passing Style Interpreter](https://kseo.github.io/posts/2017-01-09-continuation-passing-style-interpreter.html)
* [僕の考えたさいきょうの抽象構文木データ型 - autotaker's blog](http://autotaker.hatenablog.com/entry/2017/01/16/143444)
* [/usr/sbin - Symbolic Execution: Intuition and Implementation](http://www.usrsb.in/symbolic-execution-intuition-and-implementation.html)
* [Query-based compiler architectures | Olle Fredriksson's blog](https://ollef.github.io/blog/posts/query-based-compilers.html)
