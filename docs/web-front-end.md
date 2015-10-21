* [シンプルでかつ最高のJavaScriptプロファイラ sjsp を作りました！](http://itchyny.hatenablog.com/entry/2015/07/01/120000)
* [ananthakumaran/webify](https://github.com/ananthakumaran/webify)
* [LambdaCms](http://lambdacms.org/)
* [Animating Web UI with React and Haskell](http://joelburget.com/react-haskell/)

##Elm
* [elm](http://elm-lang.org/)
* [Evan Czaplicki - Let's be mainstream! User focused design in Elm - Curry On](https://www.youtube.com/watch?v=oYk8CKH7OhE)
* [elm-bridge](http://hackage.haskell.org/package/elm-bridge)
* [elm-lang/elm-make](https://github.com/elm-lang/elm-make)
* [elm+electronで気楽に始めるFRP](http://qiita.com/yasuyuky/items/e28106e3dd7fed17d50f)
* [関数型リアクティブプログラミング言語Elmに学ぶ フロントエンド開発の新しい形](http://codezine.jp/article/detail/8873)
* [Building elm with stack](http://therning.org/magnus/posts/2015-10-13-000-building-elm-with-stack.html)

##AltJS
* [Haste](http://haste-lang.org/)
  * [Client-side haskell](http://ifeanyi.co/posts/client-side-haskell/)
* [ghcjs/ghcjs](https://github.com/ghcjs/ghcjs)
* [faylang/fay](https://github.com/faylang/fay)

###Pure Script
* <http://www.purescript.org/>
* [andyarvanitis/pure11](https://github.com/andyarvanitis/pure11)
* [Stack Safety for Free](http://functorial.com/stack-safety-for-free/index.pdf)
* [slamdata/purescript-halogen](https://github.com/slamdata/purescript-halogen)
* [実例によるPureScript](http://hiruberuto.bitbucket.org/purescript/)
* [purescript/purescript-free](https://github.com/purescript/purescript-free)

##HTML Template/DSL
* Template - [shakespeare](https://hackage.haskell.org/package/shakespeare)
* Template - [hastache](https://hackage.haskell.org/package/hastache)
* Combinator - [blaze-html](http://hackage.haskell.org/package/blaze-html)
  * [meiersi/blaze-react](https://github.com/meiersi/blaze-react)
* [ede](https://hackage.haskell.org/package/ede)
* [mustache](https://hackage.haskell.org/package/mustache)

###Lucid
* [chrisdone/lucid](https://github.com/chrisdone/lucid)
* [Lucid: templating DSL for HTML](http://chrisdone.com/posts/lucid)

```haskell
indexHtml :: Html ()
indexHtml = do
    doctype_
    html_ $ do
        head_ $ do
            title_ [] "Hello Lucid!"
            link_  [rel_ "stylesheet", type_ "text/css", href_ "/css/main.css"]
        body_ $ do
            h1_ [] "Lucid"
            p_  [] "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
            script_ [src_ "/js/main.js"] ("" :: Text)
```
