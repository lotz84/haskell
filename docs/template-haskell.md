Template Haskell はHaskellの言語仕様には無くGHCの独自拡張なのでGHCのバージョンが変わる毎に仕様も変わる可能性があるので注意

* [7.17. Template Haskell](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/template-haskell.html)
* [Template Haskell Is Not Scary](http://www.parsonsmatt.org/programming/2015/11/15/template_haskell.html)
* [Template Haskell](https://wiki.haskell.org/Template_Haskell)
* [Language.Haskell.TH](http://hackage.haskell.org/package/template-haskell-2.5.0.0/docs/Language-Haskell-TH.html)
* [できる！Template Haskell (完)](http://haskell.g.hatena.ne.jp/mr_konn/20111218/1324220725)
* [TemplateHaskellでコンパイル時に計算しておく方法](http://qiita.com/hiyakashi_/items/452549b8766c341cd3c8)
* [Typed holes support in Template Haskell](http://lambda.jstolarek.com/2015/10/typed-holes-support-in-template-haskell/)
* [24 days of Hackage, 2015: day 9: Template Haskell goodies: here, interpolate, file-embed](http://conscientiousprogrammer.com/blog/2015/12/09/24-days-of-hackage-2015-day-9-template-haskell-goodies-here-interpolate-file-embed/)
* [User-defined literals in Haskell via QuasiQuotes](http://harry.garrood.me/blog/qq-literals/)
* [What Template Haskell gets wrong and Racket gets right](http://blog.ezyang.com/2016/07/what-template-haskell-gets-wrong-and-racket-gets-right/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+ezyang+%28Inside+245s%29)
* [functor.tokyo -- Inspecting generated Template Haskell](https://functor.tokyo/blog/2017-01-16-looking-at-generated-template-haskell)
* [Template Haskellを使って定数をコンパイル時に計算しておく - Qiita](http://qiita.com/aosho235/items/62ca7e5b3135e1f3122d)
* [Quasiquotes and Template Haskell \| Py Py Python](http://www.pypython.site/2017/01/quasiquotes-and-template-haskell.html)
* [maxigit/Metamorphosis: TemplateHaskell functions to generate types and converter function.](https://github.com/maxigit/Metamorphosis)
* [Template Haskell – zw3rk – Medium](https://medium.com/@zw3rk/template-haskell-75c7b67f9718)
* [Bloggy Badger: Composing Declarations in Template Haskell](http://gelisam.blogspot.jp/2017/10/composing-declarations-in-template.html)
* [Template Haskell tutorial](https://markkarpov.com/tutorial/th.html)
* [Haskellで手軽に変数を文字列に埋め込む - 変数展開 - Qiita](https://qiita.com/nwtgck/items/f1478b4b232a22e747a1)
* [Template Haskell でコンパイル時 FizzBuzz](http://ryota-ka.hatenablog.com/entry/2018/01/25/031605)
* [Template Haskell でコード中に JSON を埋め込んだりコンパイル時にファイルから型安全に読み込んだりする](http://ryota-ka.hatenablog.com/entry/2018/02/14/103000)
* [Haskellの実行バイナリにファイルを埋め込む - syocy’s diary](http://syocy.hatenablog.com/entry/2018/02/14/160833)

```haskell
{-# LANGUAGE QuasiQuotes #-}
import Language.Haskell.TH.Quote

readCSV xs = let (ys, zs) = break (==',') xs
             in if null zs then [ys]
                           else ys : readCSV (tail zs)

csv :: QuasiQuoter
csv = QuasiQuoter
      { quoteExp  = exp
      , quotePat  = undefined
      , quoteType = undefined
      , quoteDec  = undefined
      }
      where
      exp = dataToExpQ (const Nothing) . readCSV
```

```
>>> [csv|1,2,3|]
["1","2","3"]
```

* [Pre-Proposal: Introspective Template Haskell](https://mail.haskell.org/pipermail/ghc-devs/2015-November/010402.html)
