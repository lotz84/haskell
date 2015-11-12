##Template Haskell
* [Language.Haskell.TH](http://hackage.haskell.org/package/template-haskell-2.5.0.0/docs/Language-Haskell-TH.html)
* [できる！Template Haskell (完)](http://haskell.g.hatena.ne.jp/mr_konn/20111218/1324220725)
* [TemplateHaskellでコンパイル時に計算しておく方法](http://qiita.com/hiyakashi_/items/452549b8766c341cd3c8)
* [Typed holes support in Template Haskell](http://lambda.jstolarek.com/2015/10/typed-holes-support-in-template-haskell/)

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
