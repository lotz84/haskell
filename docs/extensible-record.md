# 拡張可能レコード
標準のレコードが持つ問題点を解決したいくつかのデータ構造・ライブラリ

## 標準のレコードが持つ問題点
出典: <http://nikita-volkov.github.io/record/>

1. 名前問題が解決できていない。つまり同じモジュールの中で同じフィールド名をもつ２つのレコードを定義できない。例えば以下はコンパイルできない。

```hs
data A = A { field :: String }
data B = B { field :: String }
```

2. 部分的である。以下のコードはコンパイル時に何も警告しないのにランタイム時にエラーになる。

```hs
data A = A1 { field1 :: String } | 
         A2 { field2 :: String }

main = print $ field1 $ A2 "abc"
```

3. 型コンストラクタ間で違う方を持つ同じ名前のフィールドを定義することが出来ない。

```hs
data A = A1 { field :: String } | 
         A2 { field :: Int }
```

4. ネストしたレコードの値を更新することは指数関数的に面倒くさくなる

```hs
addManStk team = team {
  manager = (manager team) {
    diet = (diet (manager team)) {
      steaks = steaks (diet (manager team)) + 1
    }
  }
}
```

## OverloadedRecordFields
GHCの言語拡張でレコードの問題を解決しようという試み

* [ghc-proposals - Overloaded Record Fields](https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0002-overloaded-record-fields.rst)
* [GHC Wiki - OverloadedRecordFields](https://ghc.haskell.org/trac/ghc/wiki/Records/OverloadedRecordFields)
* [OverloadedRecordFields revived](http://www.well-typed.com/blog/2015/03/overloadedrecordfields-revived/)
* [重複したフィールドラベル](http://d.hatena.ne.jp/kazu-yamamoto/20160114)

すべての機能が入るまでの道のりは３ステップに分けられる

### Step1. DuplicateRecordFields
* [GHC Wiki - DuplicateRecordFields](https://ghc.haskell.org/trac/ghc/wiki/Records/OverloadedRecordFields/DuplicateRecordFields)

同じモジュール内で同じフィールド名をもつレコードを定義できるようにする言語拡張

```hs
data Person  = MkPerson  { personId :: Int, name :: String }
data Address = MkAddress { personId :: Int, address :: String }
```

GHC 8.0 で既に実装されている

### Step2. OverloadedLabels
* [GHC Wiki - OverloadedLabels](https://ghc.haskell.org/trac/ghc/wiki/Records/OverloadedRecordFields/OverloadedLabels)

`fromLabel @"field" @alpha proxy#` の糖衣構文として `#field` のような書き方ができるようになる。 `fromLabel` は以下の型クラス `IsLabel` のメソッド。

```hs
class IsLabel (x :: Symbol) a where
  fromLabel :: Proxy# x -> a
```

具体的に `IsLabel` のインスタンスが定義されるわけではないので `OverloadedLabels` だけでは使いみちは少ないが将来的にレコードが宣言されると適切なインスタンスが自動的に生成されることを予定している。

* [GHC.OverloadedLabels](https://hackage.haskell.org/package/base-4.10.0.0/docs/GHC-OverloadedLabels.html)
* [OverloadedLabels と Haskell Relational Record - khibino blog](http://khibino.hatenadiary.jp/entry/2017/12/18/081814)

GHC 8.0 で既に実装されている

### Step3. Magic type classes
* [GHC Wiki - Magic classes for overloaded record fields](https://ghc.haskell.org/trac/ghc/wiki/Records/OverloadedRecordFields/MagicClasses)

GHCがコンパイル時にレコードの宣言を見つけると以下のような型クラスのインスタンスを作るようになる。

```hs
-- | HasField x r a はrが型aのフィールドxを持つレコードであることを意味している
class HasField (x :: Symbol) r a | x r -> a where
  -- | レコードからフィールドを取り出す
  getField :: Proxy# x -> r -> a

-- | UpdateField x s t bはsが型tのレコードに型bの値をセットできる
--   フィールドxを持つレコードの型であることを意味している
class UpdateField (x :: Symbol) s t b | x t -> b, x s b -> t where
  -- | フィールドをレコードにセットする
  setField :: Proxy# x -> s -> b -> t
```

例えば

```hs
data T = MkT { x :: Int }
```

のようなレコードが定義されると

```hs
instance HasField "x" T Int where
  getField _ = x

instance UpdateField "x" T T Int where
  setField _ (MkT _) x = MkT x
```

のようなインスタンスが宣言される。

`IsLabel` とは以下のようなインスタンスによって結びついている。

```hs
instance (HasField x r a) => IsLabel x (r -> a) where
  fromLabel = getField (proxy# :: Proxy# x)
```

## ライブラリ
レコードのように扱える独自のデータ構造を使って標準のレコードが持つ問題を解決しようという試み

### Vinyl
> Extensible records for Haskell with lenses.

* [vinyl](https://hackage.haskell.org/package/vinyl)
* [Programming in Vinyl / BayHac 2014](https://vimeo.com/95694918)
* [Vinyl: Records in Haskell and Type Theory](https://vimeo.com/102785458)
* [Constant-time <code>vinyl</code> Field Getters](http://www.arcadianvisions.com/blog/2018/vinyl-arec.html)
* [Deriving Vinyl Representation from Plain Haskell Records](https://www.gagandeepbhatia.com/blog/deriving-vinyl-representation-from-plain-haskell-records/)

### record
レコードを表す独自の文法を定義しコンパイル時のプリプロセッサ [`record-preprocessor`](http://hackage.haskell.org/package/record-preprocessor) を走らせることを前提としている。

**Example**
```hs

-- Uses the Strict Record syntax.
type Person =
  {! 
    name :: String, 
    birthday :: {! year :: Int, month :: Int, day :: Int }, 
    country :: Country
  }

-- Uses the Lazy Record syntax.
type Country =
  {~
    name :: String,
    language :: String
  }
```

* [record](http://hackage.haskell.org/package/record)
  * [Announcing the first class records library](http://nikita-volkov.github.io/record/)
  * [Anonymous records in Haskell](http://www.techcast.com/events/bigtechday8/maffei-1005/?q=maffei-1005)
  
### Bookkeeper
GHCが `OverloadedLabels` 拡張までを提供していることを前提に作られたレコードライブラリ。Template Haskellを使っていないのも特徴。

**Example**

```hs
type Person = Book '[ "name" :=> String, "age" :=> Int ]

julian :: Person
julian = set #name "Julian K. Arni" $ set #age 28 $ emptyBook

-- もしくは

julian :: Person
julian = emptyBook
       & #age =: 28
       & #name =: "Julian K. Arni"

-- > get #name julian
-- "Julian K. Arni"
```

* [Bookkeeper](https://turingjump.com/blog/bookkeeper/)
* [Bookkeeper.Permissions](https://hackage.haskell.org/package/bookkeeper-permissions-0.1.0.0/docs/Bookkeeper-Permissions.html)

### rawr
GHCが `OverloadedLabels` 拡張までを提供していることを前提に作られたレコードライブラリ。TemplateHaskellを使っていないのも特徴。

```hs
type Foo = R ( "a" := Int, "b" := Bool )

foo :: Foo
foo = R ( #a := 42, #b := True )

-- > #a foo
-- 42

-- > foo ^. #a
-- 42

-- > -- Extensible Records
-- > R ( #foo := True ) :*: R ( #bar := False )
-- R ( bar := False, foo := True )
```

> Currently, records with up to 8 fields are supported.

という制約がある([参考](https://hackage.haskell.org/package/rawr-0.0.0.1/docs/Data-Rawr.html#g:3))

* [rawr: Anonymous extensible records](https://hackage.haskell.org/package/rawr)

### extensible

```hs
mkField "name collective cry"

type Animal = Record
  [ "name" :> String
  , "collective" :> String
  , "cry" :> Maybe String
  ]

swan :: Animal
swan = name @= "swan"
  <: collective @= "lamentation"
  <: cry @= Nothing
  <: Nil
  
-- > swan ^. name
-- "swan"
```

* [extensible](http://hackage.haskell.org/package/extensible)
* [割とすぐに始められるextensibleチュートリアル(レコード編)](http://fumieval.hatenablog.com/entry/2016/10/10/000011)
* [Extensible Records Explained](https://www.schoolofhaskell.com/user/fumieval/extensible-records)
* [波打たせるものの正体(エクステンシブル・タングル)](http://fumieval.hatenablog.com/entry/2016/12/18/181540)
* [extensible-0.4.9 がリリースされました。](https://haskell.e-bigmoon.com/posts/2018/05-14-release-extensible-049.html)

### Others
* [ruin](https://hackage.haskell.org/package/ruin)
* [named-record](https://hackage.haskell.org/package/named-records)
* [Control Flow in Haskell (0) - Introduction](http://hsyl20.fr/home/posts/2016-12-12-control-flow-in-haskell-part-0.html)
* [SuperRecord: Anonymous Records for Haskell](https://www.athiemann.net/2017/07/02/superrecord.html)
* [OVERCOMING THE RECORD PROBLEM](http://www.parsonsmatt.org/overcoming-records/#/)
* [data-diverse: Extensible records and polymorphic variants.](https://hackage.haskell.org/package/data-diverse)
* [Fun with Records in Haskell by making "RowLists" - Qiita](https://qiita.com/kimagure/items/6a9764966edd6cef497d)
* [SuperRecord: Anonymous Records for Haskell](https://www.athiemann.net/2017/07/02/superrecord.html)

## 理論
* [Records are Sheaves of Types.](http://archive.is/0PM3e)
