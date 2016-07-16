Index
=====
* [Client](https://github.com/lotz84/haskell/blob/master/docs/web.md#client)
  * [Scraping](https://github.com/lotz84/haskell/blob/master/docs/web.md#scraping)
  * [Email](https://github.com/lotz84/haskell/blob/master/docs/web.md#email)
* [Front end](https://github.com/lotz84/haskell/blob/master/docs/web.md#front-end)
  * [Haskell to JavaScript compiler](https://github.com/lotz84/haskell/blob/master/docs/web.md#haskell-to-javascript-compiler)
    * [GHC JS](https://github.com/lotz84/haskell/blob/master/docs/web.md#ghc-js)
    * [Haste](https://github.com/lotz84/haskell/blob/master/docs/web.md#haste)
    * [fay](https://github.com/lotz84/haskell/blob/master/docs/web.md#fay)
  * [HTML Template](https://github.com/lotz84/haskell/blob/master/docs/web.md#html-template)
    * [Lucid](https://github.com/lotz84/haskell/blob/master/docs/web.md#lucid)
* [Back end](https://github.com/lotz84/haskell/blob/master/docs/web.md#back-end)
  * [Web Server](https://github.com/lotz84/haskell/blob/master/docs/web.md#web-server)
    * [WAI/Warp](https://github.com/lotz84/haskell/blob/master/docs/web.md#waiwarp)
  * [Web Application Framework](https://github.com/lotz84/haskell/blob/master/docs/web.md#web-application-framework)
    * [比較](https://github.com/lotz84/haskell/blob/master/docs/web.md#比較)
    * [認証/認可](https://github.com/lotz84/haskell/blob/master/docs/web.md#認証認可)
    * [Logger](https://github.com/lotz84/haskell/blob/master/docs/web.md#logger)
    * [デプロイ](https://github.com/lotz84/haskell/blob/master/docs/web.md#デプロイ)
    * [Scotty](https://github.com/lotz84/haskell/blob/master/docs/web.md#scotty)
    * [Spock](https://github.com/lotz84/haskell/blob/master/docs/web.md#spock)
    * [Rest](https://github.com/lotz84/haskell/blob/master/docs/web.md#rest)
    * [Snap](https://github.com/lotz84/haskell/blob/master/docs/web.md#snap)
    * [Servant](https://github.com/lotz84/haskell/blob/master/docs/web.md#servant)
    * [Yesod](https://github.com/lotz84/haskell/blob/master/docs/web.md#yesod)
  * [Protocol](https://github.com/lotz84/haskell/blob/master/docs/web.md#protocol)
    * [MQTT](https://github.com/lotz84/haskell/blob/master/docs/web.md#mqtt)
    * [Protocol Buffers](https://github.com/lotz84/haskell/blob/master/docs/web.md#protocol-buffers)
    * [JSON-RPC](https://github.com/lotz84/haskell/blob/master/docs/web.md#json-rpc)
    * [Web Socket](https://github.com/lotz84/haskell/blob/master/docs/web.md#web-socket)
  * [Database](https://github.com/lotz84/haskell/blob/master/docs/web.md#database)
    * [Simple Clients](https://github.com/lotz84/haskell/blob/master/docs/web.md#simple-clients)
    * [HDBC](https://github.com/lotz84/haskell/blob/master/docs/web.md#hdbc)
    * [SQL DSL](https://github.com/lotz84/haskell/blob/master/docs/web.md#sql-dsl)
      * [Haskell Relational Record](https://github.com/lotz84/haskell/blob/master/docs/web.md#haskell-relational-record)
  * [Heroku](https://github.com/lotz84/haskell/blob/master/docs/web.md#heroku)
    * [Haskell on Heroku](https://github.com/lotz84/haskell/blob/master/docs/web.md#haskell-on-heroku)
* [Others](https://github.com/lotz84/haskell/blob/master/docs/web.md#others)

----

Client
======
* [Tutorial] Creating a BitTorrent client in Haskell
  * [#1](https://blog.chaps.io/2015/10/05/torrent-client-in-haskell-1.html)
  * [#2](http://blog.chaps.io/2015/10/13/torrent-client-in-haskell-2.html)
  * [#3](http://blog.chaps.io/2015/11/24/torrent-client-in-haskell-3)
* [HaskellでTwitterにpostする](http://yunomu.hatenablog.jp/entry/2012/05/13/210629)
* [HaskellからSlackにさくっとPOSTする](http://blog.euphonictech.com/entry/2016/05/08/225740)
* [Writing a haskell client for a third party API](http://blog.byteally.com/posts/2016-04-21-Writing-a-haskell-client-for-a-third-party-API.html)
* A minimal web-browser written and configured in Haskell - [k0ral/hbro](https://github.com/k0ral/hbro)
* [The dns package](https://hackage.haskell.org/package/dns)
* [basvandijk/rss](https://github.com/basvandijk/rss)
* [pontarius/pontarius-xmpp](https://github.com/pontarius/pontarius-xmpp)
* HTTP Client
  * [owainlewis/http-dispatch](https://github.com/owainlewis/http-dispatch)
  * [http-client](https://hackage.haskell.org/package/http-client)
  * [http-client-tls](https://hackage.haskell.org/package/http-client-tls)
  * [http-conduit](http://hackage.haskell.org/package/http-conduit)
  * [pipes-http](https://hackage.haskell.org/package/pipes-http)
  * [http-streams](https://hackage.haskell.org/package/http-streams)
* Twitter - [twitter-conduit](http://hackage.haskell.org/package/twitter-conduit)
* Facebook - [fb](https://hackage.haskell.org/package/fb)
* Instagram - [The ig package](http://hackage.haskell.org/package/ig)
* Github
  * [github package](https://hackage.haskell.org/package/github)
  * [github-types](https://hackage.haskell.org/package/github-types)
  * [github-webhook-handler](https://hackage.haskell.org/package/github-webhook-handler)
* AWS
  * [aristidb/aws](https://github.com/aristidb/aws)
  * [brendanhay/amazonka](https://github.com/brendanhay/amazonka)
* Reddit - [reddit](https://hackage.haskell.org/package/reddit)
* IRC - [glguy/irc-core](https://github.com/glguy/irc-core)
* Twilio - [steven777400/TwilioIVR](https://github.com/steven777400/TwilioIVR/)
* Stripe - [The stripe-haskell package](http://hackage.haskell.org/package/stripe-haskell)
* Kafka
  * [cosbynator/haskakafka](https://github.com/cosbynator/haskakafka)
  * [tylerholien/milena](https://github.com/tylerholien/milena)
* kubernetes - [soundcloud/haskell-kubernetes](https://github.com/soundcloud/haskell-kubernetes)
* Telegram Bot API - [The telegram-api package](https://hackage.haskell.org/package/telegram-api)
* Clarifai - [caneroj1/clarifai-hs](https://github.com/caneroj1/clarifai-hs)

Scraping
--------
* [wreq](http://www.serpentine.com/wreq/)
  * [Web Scraping with Lenses](http://two-wrongs.com/web-scraping-with-lenses)
  * [24 days of Hackage, 2015: day 4: wreq: Web client programming; with notes on lens and operator syntax](http://conscientiousprogrammer.com/blog/2015/12/04/24-days-of-hackage-2015-day-4-wreq-web-client-programming-with-notes-on-lens-and-operator-syntax/)
* [fimad/scalpel](https://github.com/fimad/scalpel)
  * [Haskell で楽しい Web スクレイピング](http://qiita.com/na-o-ys/items/30a4950d5391911493c2)
* [egonSchiele/HandsomeSoup](https://github.com/egonSchiele/HandsomeSoup)

Email
-----
* [Network.Mail.Mime でのメール送信方法](http://qiita.com/satosystems/items/43ad35db2a289c15c998)
* [Network.Mail.Client.Gmail でのメール送信方法](http://qiita.com/satosystems/items/c6c57d6d3b813d3dcb23)
* [The smtp-mail package](https://hackage.haskell.org/package/smtp-mail)
* [The imap package](https://hackage.haskell.org/package/imap)
* [The HaskellNet package](http://hackage.haskell.org/package/HaskellNet)

Front end
=========
* [Hakyll](https://github.com/lotz84/haskell/blob/master/docs/haskell-made-tools.md#hakyll) - 静的サイトジェネレータ
* [シンプルでかつ最高のJavaScriptプロファイラ sjsp を作りました！](http://itchyny.hatenablog.com/entry/2015/07/01/120000)
* [A Distributed Haskell for the Modern Web](http://ekblad.cc/lic.pdf)

Haskell to JavaScript compiler
------------------------------
### GHC JS
* [ghcjs/ghcjs](https://github.com/ghcjs/ghcjs)
* [ghcjs/ghcjs-dom](https://github.com/ghcjs/ghcjs-dom)
* [Fun with GHCJSi](https://www.youtube.com/watch?v=x7dQVZiWjvA)
* [GETTING STARTED WITH GHCJS DEV](http://hangman-profile-56437.bitballoon.com/)
* [Haskell to JavaScript](https://lettier.github.io/posts/2016-07-04-haskell-to-javascript.html)

### Haste
* [Haskell + Haste で Fourier 級数の可視化](http://qiita.com/lesguillemets/items/dbd928237be3e6a1221d)
* [Haste + Parsec でブラウザ上で動く電卓をつくる](http://qiita.com/lesguillemets/items/b58e684a773fb4b5e4aa)
* [Haskell風AltJSのベンチマーク](http://qiita.com/philopon/items/1451f6b8c5ccec41479d)
* [Haste](http://haste-lang.org/)
  * [Client-side haskell](http://ifeanyi.co/posts/client-side-haskell/)
* [Zero config, no server Haste.App](http://haste-lang.org/blog/haste-standalone/)
* <http://lesguillemets.github.io/fouricle/>
* [オートマトンで遊ぶやつを作った](http://myuon-myon.hatenablog.com/entry/2015/12/18/193654)
* [Automatoy](http://myuon.github.io/automatoy/)

### fay
* [faylang/fay](https://github.com/faylang/fay)

HTML Template
-------------
* [shakespeare](https://hackage.haskell.org/package/shakespeare)
* [ede](https://hackage.haskell.org/package/ede) - オススメ
* [mustache](https://hackage.haskell.org/package/mustache)
* [The react-haskell package](https://hackage.haskell.org/package/react-haskell)
  * [Animating Web UI with React and Haskell](http://joelburget.com/react-haskell/)
* [blaze-html](http://hackage.haskell.org/package/blaze-html)
* [meiersi/blaze-react](https://github.com/meiersi/blaze-react)
* [stackbuilders/stache](https://github.com/stackbuilders/stache) - Mustache templates for Haskell

### Lucid
* [chrisdone/lucid](https://github.com/chrisdone/lucid)
* [Lucid: templating DSL for HTML](http://chrisdone.com/posts/lucid)
* [lucid-svg](http://hackage.haskell.org/package/lucid-svg)
* [Overloading Monads for Html Deployment](https://www.fpcomplete.com/user/AthanClark/overloaded-monadic-deployment)

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

Back end
========
* [Tutorial] Haskell Game Server
  * [Part 1](http://mojobojo.com/posts/2015-12-26-haskell-game-server-part-1.html)
  * [Part 1 Followup](http://mojobojo.com/posts/2015-12-28-haskell-game-server-part-1-followup.html)
  * [Part 2](http://mojobojo.com/posts/2016-01-01-haskell-game-server-part-2.html)

Web Server
----------
* [mighttpd](https://hackage.haskell.org/package/mighttpd)
* [Haskell から見た node.js](http://d.hatena.ne.jp/kazu-yamamoto/20110825/1314254885)
* [Web/Comparison of Happstack, Snap and Yesod](https://wiki.haskell.org/Web/Comparison_of_Happstack,_Snap_and_Yesod)

### WAI/Warp
* [Haskell版フォルダを指定してhttpで公開する簡易Webサーバー](http://qiita.com/saturday06/items/fad44a9bc49b2f387bde)
* [wai](https://hackage.haskell.org/package/wai)
* [warp](https://hackage.haskell.org/package/warp)
* [The Performance of Open Source Applications - Warp](http://aosabook.org/en/posa/warp.html)
* [stackを使ってhaskellで最小のWeb Applicationしてみる](http://qiita.com/eielh/items/09b9f1c21f7d16e09ede)
* [Using WAI's vault for fun and profit](http://www.yesodweb.com/blog/2015/10/using-wais-vault)
* [Resurrecting servius](http://www.yesodweb.com/blog/2015/10/resurrecting-servius)
* [Nested-Routes - WAI Routing Library](https://nestedroutes.com/)
* [Writing controller specs for a Warp server](http://begriffs.com/posts/2014-10-19-warp-server-controller-test.html)

Web Application Framework
-------------------------
* [HaskellでWebAppの開発に必要なN個のこと](http://maoe.hatenadiary.jp/entry/2013/09/10/182914)
* [CQRS in Haskell](http://www.corecursion.net/post/CQRS_in_Haskell)
* [Announcing serversession](http://blog.felipe.lessa.nom.br/?p=153)
* [agrafix/users](https://github.com/agrafix/users)

### 比較
| Framework        | Latest Release | Version   | Star | Contributors |
| :--------------- | :------------- | :-------- | :--- | :----------- |
| [Yesod][1]       | 2016/6/23      | 1.4.22    | 1496 | 158          |
| [Scotty][2]      | 2015/7/14      | 0.10.2    | 910  | 43           |
| [Servant][3]     | 2016/5/11      | 0.7.1     | 546  | 62           |
| [Rest][4]        | 2016/4/21      | 0.38      | 343  | 20           | 
| [Snap][5]        | 2016/3/16      | 0.14.0.7  | 330  | 44           |
| [Spock][6]       | 2015/11/11     | 0.10.0.1  | 309  | 15           |
| [Airship][7]     | 2016/5/28      | 0.6.0     | 177  | 11           |
| [MFlow][8]       | 2015/9/21      | 0.4.6.0   | 87   | 1            |
| [miku][9]        | 2016/3/17      | 2016.3.17 | 76   | 2            |
| [Apiry][10]      | 2016/3/28      | 2.0.1     | 54   | 2            |
| [Happstack][11]  | 2016/6/5       | 7.4.6.2   | 30   | 30           |
| [Simple][12]     | 2016/1/12      | 0.11.1    | 27   | 7            |
| [Fn][13]         | 2016/3/12      | 0.3.0.1   | 13   | 2            |
| [WebApi][14]     | 2016/4/20      | 0.2.2.0   | 10   | 3            |

2016/7/3 調べ

[1]: https://github.com/yesodweb/yesod
[2]: https://github.com/scotty-web/scotty
[3]: https://github.com/haskell-servant/servant
[4]: https://github.com/silkapp/rest
[5]: https://github.com/snapframework/snap
[6]: https://github.com/agrafix/Spock
[7]: https://github.com/helium/airship
[8]: https://github.com/agocorona/MFlow
[9]: https://github.com/nfjinjing/miku
[10]: https://github.com/philopon/apiary
[11]: https://github.com/Happstack/happstack-server
[12]: https://github.com/alevy/simple
[13]: https://github.com/positiondev/fn
[14]: https://github.com/byteally/webapi

### 認証/認可
* [Taking Authentication to the next Level](https://www.spock.li/2015/08/23/taking_authentication_to_the_next_level.html)
* [(解説) はてなブックマークにおけるアクセス制御 - 半環構造に基づくモデル化](http://developer.hatenastaff.com/entry/bookmark-semiring-ac)
* [hoauth2](http://hackage.haskell.org/package/hoauth2)
* [HaskellでOAuth](http://qiita.com/_Ghostrick_/items/ce8d89e0d511cfd56ce9)

### Logger
* [wdanilo/haskell-logger](https://github.com/wdanilo/haskell-logger)
* [kazu-yamamoto/logger](https://github.com/kazu-yamamoto/logger)
* [jgoerzen/hslogger](https://github.com/jgoerzen/hslogger)
* [The logging-effect package](https://hackage.haskell.org/package/logging-effect)
* [The logging-facade package](https://hackage.haskell.org/package/logging-facade)
* [The katip package](http://hackage.haskell.org/package/katip)
* [The monad-log package](http://hackage.haskell.org/package/monad-log)

### デプロイ
* [snoyberg/keter](https://github.com/snoyberg/keter)
* [stackbuilders/hapistrano](https://github.com/stackbuilders/hapistrano)
* [Deploying A Haskell Web Service With Nix](http://jezenthomas.com/deploying-a-haskell-web-service-with-nix/)
* [.keterファイルの解凍でエラーになる時は](http://qiita.com/jabaraster/items/1e713911625258c6f2e1)

### Scotty
* [The scotty package](http://hackage.haskell.org/package/scotty)
* [Basic HTTP auth with Scotty](https://ro-che.info/articles/2016-04-14-scotty-http-basic-auth)
* [bendyworks/api-server](https://github.com/bendyworks/api-server)

### Spock
* [Spock Web Framework](https://www.spock.li/)
* [«Spock – Powerful Elegant Web Applications using Haskell» by Alexander Thiemann](https://www.youtube.com/watch?v=kNqsOBrCbLo)
* [ZuriHac 2015 - Beginning Web Programming in Haskell](https://www.youtube.com/watch?v=GobPiGL9jJ4)

### Rest
* [Rest for Haskell](http://silkapp.github.io/rest/)
* [Haskell rest フレームワークでREST API設計をサボる](http://qiita.com/arowM/items/ff800ce4136966a6ce8e)

### Snap
* [Snap](http://snapframework.com/)
* [snaplet-postgresql-simple](https://hackage.haskell.org/package/snaplet-postgresql-simple)

### Servant
* [servant](http://haskell-servant.github.io/)
* [parsonsmatt/servant-persistent](https://github.com/parsonsmatt/servant-persistent)
* [haskell-servant の利用例とちょっとだけ仕組みの調査](http://krdlab.hatenablog.com/entry/2014/12/31/170158)
* [Servant, persistent, and DSLs](https://hbtvl.wordpress.com/2015/06/28/servant-persistent-and-dsls/)
* [Pulling a mock server for your APIs out of thin air](https://haskell-servant.github.io/posts/2015-07-24-pulling-mock-servers-out-of-thin-air.html)
* [Julian Arni - Servant: a type level DSL for web APIs - Curry On](https://www.youtube.com/watch?v=snOBI8PcbMQ)
* [Content Type Bliss](http://haskell-servant.github.io/posts/2015-08-05-content-types.html)
* [Type safe web services in Haskell with Servant](http://taylor.fausak.me/2015/08/23/type-safe-web-services-in-haskell-with-servant/)
* [03 Type Level Web APIs](https://www.youtube.com/watch?v=vXRIXkbjLbU)
* [Gabriel439/servant-crud](https://github.com/Gabriel439/servant-crud)
* [Haskell Servant: Type-Level DSLs for Web APIs](https://www.youtube.com/watch?v=gMDiKOuwLXw)
* [The lackey package](https://hackage.haskell.org/package/lackey)
* [The servant-swagger package](https://hackage.haskell.org/package/servant-swagger)
* [Implementing a minimal version of haskell-servant](http://www.well-typed.com/blog/2015/11/implementing-a-minimal-version-of-haskell-servant/)
* [Julian Arni - Servant - Boston Haskell](https://www.youtube.com/watch?v=rsv96JK4Vx4)
* [Servant, Type Families, and Type-level Everything](http://www.arow.info/blog/posts/2015-07-10-servant-intro.html)
* [futurice/haskell-servant-status](https://github.com/futurice/haskell-servant-status)
* [Haskell and Servant on Scaleway ARM servers](http://statusfailed.com/blog/2015/11/29/haskell-and-servant-on-scaleway-arm-servers.html)
* [Dependently typed servers in Servant](http://www.well-typed.com/blog/2015/12/dependently-typed-servers/)
* [【型レベルWeb DSL】 Servantの紹介](http://qiita.com/lotz/items/883b41fa79f060e59efa)
* [tel/serv](https://github.com/tel/serv)
* Typed up CRUD SPA with Haskell and Elm
  * [Part 1: Spike time](http://rundis.github.io/blog/2015/haskell_elm_spa_part1.html)
  * [Part 2: Persistence up and running](http://rundis.github.io/blog/2016/haskel_elm_spa_part2.html)
  * [Part 3: Routing](http://rundis.github.io/blog/2016/haskel_elm_spa_part3.html)
* [algas/haskell-servant-codegen](https://github.com/algas/haskell-servant-codegen)
* [Deriving a servant schema from your data](http://purelyfunctional.org/posts/2016-01-01-servant-from-data.html)
* [«Making web services better with Servant» by Denis Redozubov](https://www.youtube.com/watch?v=kpipbkrJwkg)
* [swagger ドキュメントからコマンド一発でモックサーバを自動生成する (haskell-servant)](http://qiita.com/algas/items/6e066b6c164beb711733)
* [swagger2 and servant-swagger](http://haskell-servant.github.io/posts/2016-02-06-servant-swagger.html)
* [servant 0.5 released](http://haskell-servant.github.io/posts/2016-03-19-servant-0.5-release.html)
* [themoritz/diener](https://github.com/themoritz/diener)
* [Haskell servant 0.4 のドキュメントを和訳した](http://qiita.com/algas/items/7a67417498c5126b6ab6)
* [ElvishJerricco/servant-router](https://github.com/ElvishJerricco/servant-router)
* [Haskell Servant 入門 (Hello world)](http://qiita.com/algas/items/c76df85292e4e3fb83fd)
* [Haskell Servant 入門 (Loggerの導入)](http://qiita.com/algas/items/9f409ec0c43033c1e52c)
* [Haskell Servant 入門 (HTTPS対応)](http://qiita.com/algas/items/a9d1527e4a3f318dc09d)
* [Haskell Servant 入門 (Testing)](http://qiita.com/algas/items/3f7029c92824392a0b11)
* [haskell-servant/example-servant-persistent](https://github.com/haskell-servant/example-servant-persistent)
* [Haskell Servant 入門 (Database)](http://qiita.com/algas/items/5a6e570028d95b5dac1b)
* [Token authentication with Servant](http://jerrington.me/posts/2016-06-18-token-authentication-with-servant.html)
* [Servant, Type Families, and Type-level Everything](http://www.arow.info/blog/posts/2015-07-10-servant-intro.html)
* [Incremental API Takeover with Haskell Servant](http://www.parsonsmatt.org/2016/06/24/take_over_an_api_with_servant.html)
* [k-bx/owlcloud](https://github.com/k-bx/owlcloud)
* [servant-persistent updated](http://www.parsonsmatt.org/2016/07/08/servant-persistent_updated.html)
* [Auto-generate service API endpoints from records](http://www.haskellforall.com/2016/07/auto-generate-service-api-endpoints.html)

### Yesod
* [Yesod Web Framework](http://www.yesodweb.com/)
* [quick start guide](http://www.yesodweb.com/page/quickstart)
* [tutorial](http://yannesposito.com/Scratch/en/blog/Yesod-tutorial-for-newbies/)
* [i18n, authentication, authorization, and database](http://www.yesodweb.com/blog/2012/01/blog-example)
* [book](http://www.yesodweb.com/book)
* [cookbook](https://github.com/yesodweb/yesod/wiki/Cookbook)
* [Getting started with Yesod using Docker](https://ilikewhenit.works/blog/1)
* [yesodweb/yesod-scaffold](https://github.com/yesodweb/yesod-scaffold)
* [yesod-table](http://www.yesodweb.com/blog/2015/07/yesod-table)
* [thoughtbot/yesod-auth-oauth2](https://github.com/thoughtbot/yesod-auth-oauth2)
* [Progress with wai-devel](http://blog.urbanslug.com/programming/haskell/wai/wai-devel/2015/08/13/Progress-with-wai-devel.html)
* [Haskell and Type-Safe Routing](http://andrewthad.blogspot.jp/2015/11/allr-detailsr-buyr-frompiece-str1-buyr.html)
* [Yesod hosting with Docker and Kubernetes](http://www.yesodweb.com/blog/2015/12/yesod-hosting-docker-kubernetes)
* [Servant style handlers for Yesod](http://tech.frontrowed.com/post/135666421041/servant-style-handlers-for-yesod)
* [Haskell stack, Yesod and Docker](http://mdjnewman.me/2016/01/haskell-stack-yesod-docker/)
* [Deploying Yesod to Heroku with Postgres support](http://begriffs.com/posts/2013-08-24-deploying-yesod-to-heroku-with-postgres.html)
* [Some extra safety with Yesod routing](http://begriffs.com/posts/2013-08-26-some-extra-safety-with-yesod-routing.html)
* [The Architecture of Open Source Applications - Yesod](http://www.aosabook.org/en/yesod.html)
* [Adding Redis to Yesod](http://maxgabriel.github.io/redis-yesod/)
* [Yesodでセッション情報をDBに格納するようにする](http://qiita.com/jabaraster/items/758b190457f408075fc4)
* [Monitoring a Yesod App with EKG](http://maxgabriel.github.io/ekg-yesod/)
* [Using UUIDs in Yesod](https://jezenthomas.com/using-uuids-in-yesod/)
* [How to use UUID values with Persistent and Yesod](http://bitemyapp.com//posts/2016-06-15-uuids-with-persistent-yesod.html)

Protocol
--------
* [Representing an RPC API](http://petterbergman.se/api.html)
* [Dropbox Hack Week: GraphQL Server in Haskell](https://chadaustin.me/2016/02/dropbox-hack-week-graphql-server-in-haskell/)
* [msgpack/msgpack-haskell](https://github.com/msgpack/msgpack-haskell)

### MQTT
* [uwitty/mosquitto](https://github.com/uwitty/mosquitto)

### Protocol Buffers
* [google/proto-lens](https://github.com/google/proto-lens)
* [k-bx/protocol-buffers](https://github.com/k-bx/protocol-buffers)

### JSON-RPC
* [The Remote JSON library](http://ku-fpg.github.io/2016/02/09/remote-json/)
* [The remote-json package](http://hackage.haskell.org/package/remote-json)
* [The remote-json-client package](http://hackage.haskell.org/package/remote-json-client)
* [The remote-json-server package](http://hackage.haskell.org/package/remote-json-server)

### Web Socket
* [websockets](http://jaspervdj.be/websockets/)
* [リアルタイム通信で利用されるプロトコルと手法](http://tech.guitarrapc.com/entry/2015/08/17/044937)
* [rnons/shadowsocks-haskell](https://github.com/rnons/shadowsocks-haskell)
* [Run secure WebSocket clients with Wuss](http://taylor.fausak.me/2015/06/04/run-secure-websocket-clients-with-wuss/)
* [The wuss package](https://hackage.haskell.org/package/wuss)
* [A lot of websockets in Haskell](https://blog.wearewizards.io/a-lot-of-websockets-in-haskell)

Database
--------
* [Tutorial] [Building a Redis clone in Haskell](https://honza.ca/2015/09/building-a-redis-clone-in-haskell)
* [Haxl - Haskellを使った暗黙的な並列データアクセス](http://www.infoq.com/jp/news/2014/06/haxl)
* [Fun With Haxl (Part 1)](http://simonmar.github.io/posts/2015-10-20-Fun-With-Haxl-1.html)
* [hasql](http://hackage.haskell.org/package/hasql)
* [Building a Functional Relational Database](http://referaat.cs.utwente.nl/conference/15/paper/7281/building-a-functional-relational-database.pdf)
* [Persistent](http://www.yesodweb.com/book/persistent)
* [Safe concurrent MySQL access in Haskell](https://ro-che.info/articles/2015-04-17-safe-concurrent-mysql-haskell)
* [Working with databases using Groundhog](https://www.fpcomplete.com/user/lykahb/groundhog)
* [agentm/project-m36](https://github.com/agentm/project-m36)
* [Etienne Laurin: A RethinkDB driver for Haskell (Heavybit meetup)](https://www.youtube.com/watch?v=Qvn8EQfgUCA)
* [jtdaugherty/dbmigrations](https://github.com/jtdaugherty/dbmigrations)
* [The groundhog package](http://hackage.haskell.org/package/groundhog)
* [Creating sqlite tables with Groundhog's default settings](http://begriffs.com/posts/2013-08-31-creating-sqlite-tables-with-groundhogs.html)
* [Haskellからmysqlを実行する](http://tsubaki.hatenablog.com/entry/20121020/1350734844)
* [AtnNn/haskell-rethinkdb](https://github.com/AtnNn/haskell-rethinkdb)
* [Introducing postgresql-transactional](https://blog.helium.com/introducing-postgresql-transactional-6f19afdf1b9d#.nf4wl0nxu)
* [Fraxl - Better Concurrency and Caching for Free](https://www.youtube.com/watch?v=Fe3-N9mKuPA)
* [ElvishJerricco/fraxl](https://github.com/ElvishJerricco/fraxl)
* [tweag/sparkle](https://github.com/tweag/sparkle)
* [PostgREST](https://github.com/lotz84/haskell/blob/master/docs/haskell-made-tools.md#postgrest)

Simple Clients
--------------
* [The mysql-simple package](https://hackage.haskell.org/package/mysql-simple)
* [The postgresql-simple package](https://hackage.haskell.org/package/postgresql-simple)
  * [Haskell postgresql-simple examples, part 1](http://begriffs.com/posts/2013-09-10-haskell-postgresql-simple-examples-part.html)
  * [Haskell postgresql-simple examples, part 2](http://begriffs.com/posts/2013-09-14-haskell-postgresql-simple-examples-part_13.html)
  * [ANN: SQL validator for queries embedded in postgresql-simple's quasiquoters](https://www.reddit.com/r/haskell/comments/4o9cuj/ann_sql_validator_for_queries_embedded_in/)
* [The sqlite-simple package](https://hackage.haskell.org/package/sqlite-simple)
* [The hedis package](https://hackage.haskell.org/package/hedis)
* [The couch-simple package](https://hackage.haskell.org/package/couch-simple)
* [mongodb-haskell/mongodb](https://github.com/mongodb-haskell/mongodb)
* [The mongoDB package](http://hackage.haskell.org/package/mongoDB)
* [influxdb](https://hackage.haskell.org/package/influxdb)
* [the-real-blackh/cassandra-cql](https://github.com/the-real-blackh/cassandra-cql)
* [wereHamster/rethinkdb-client-driver](https://github.com/wereHamster/rethinkdb-client-driver)
* [Simple Haskell: using a sqlite3 database](http://blog.markwatson.com/2016/01/simple-haskell-using-sqlite3-database.html)
* [Supporting separate read and write databases in persistent](http://www.yesodweb.com/blog/2016/04/split-db)

HDBC
----
> HDBC provides an abstraction layer between Haskell programs and SQL relational databases.

* [The HDBC package](https://hackage.haskell.org/package/HDBC)
* [The HDBC-mysql package](https://hackage.haskell.org/package/HDBC-mysql)
* [The HDBC-postgresql package](https://hackage.haskell.org/package/HDBC-postgresql)
* [The HDBC-sqlite3 package](https://hackage.haskell.org/package/HDBC-sqlite3)
* [The HDBC-odbc package](https://hackage.haskell.org/package/HDBC-odbc)
* [The hdbc-aeson package](https://hackage.haskell.org/package/hdbc-aeson)
* [The presto-hdbc package](https://hackage.haskell.org/package/presto-hdbc)

SQL DSL
-----------
* [Composable, Typesafe Query Building](https://htmlpreview.github.io/?https://github.com/khibino/haskell-relational-record/blob/master/doc/slide/PostgreSQL-Unconference-201512/Query.html)
* [tomjaguarpaw/haskell-opaleye](https://github.com/tomjaguarpaw/haskell-opaleye)
* [Opaleye’s sugar on top](http://ren.zone/articles/opaleye-sot)
* [Typesafe SQL in Haskell - Ben Kolera - BFPG 2015-09](https://www.youtube.com/watch?v=A0oVn-GXOok)
* [esqueleto](http://hackage.haskell.org/package/esqueleto)
* [Extending Esqueleto for Type-Safe Postgresql Queries](http://blog.jenkster.com/2015/07/extending-esqueleto-for-type-safe-postgresql-queries.html)
* [tathougies/beam](https://github.com/tathougies/beam)
* [Finally, Safely-Extensible and Efficient Language-Integrated Query](http://okmij.org/ftp/meta-programming/quel.pdf)
* [JakeWheat/hssqlppp](https://github.com/JakeWheat/hssqlppp)

### Haskell Relational Record
* [Haskell Relational Record](https://khibino.github.io/haskell-relational-record/)
* [Haskell Relational Record をリリースしました](http://d.hatena.ne.jp/kazu-yamamoto/20141225/1419490692)
* [Haskell Relational Record, 機能と構成](https://htmlpreview.github.io/?https://github.com/khibino/haskell-relational-record/blob/master/doc/slide/code-reading-201601/SourceTreeJ.html)
* [Extending Query, Relational, Typeful, Composable](http://khibino.hatenadiary.jp/entry/20131219/1387423818)
* [haskell-relational-record-の調査.md](https://github.com/worksap-ate/demo/blob/master/haskell-relational-record-%E3%81%AE%E8%AA%BF%E6%9F%BB.md)
* [Haskell-rerational-recordでDB操作するのが楽しすぎる件〜その１〜](http://tune.hateblo.jp/entry/2014/06/21/161745)
* [relational-record を MySQL で使ってみた](http://qiita.com/lotz/items/3aa65852bf75f3538d11)

Heroku
------
* [Deploying Haskell to Heroku using Docker](http://www.reddit.com/r/haskell/comments/35he88/deploying_haskell_to_heroku_using_docker/)
* [Herokuで、Gititを起動する](http://qiita.com/rouge_pawn/items/4a5d5ee68590a002ce8d)
* [Haskell + Yesodで作ったアプリをHerokuにデプロイする](http://qiita.com/etmnk/items/79f022cd6cb5fd2e8794)
* [How to compile Haskell libraries for Heroku](http://begriffs.com/posts/2013-10-14-how-to-compile-haskell-libraries-for.html)
* [Popularizing Haskell through easy web deployment](http://begriffs.com/posts/2013-12-06-popularizing-haskell-through-easy-web.html)
* [Pair programming with Haskell and Digital Ocean](http://begriffs.com/posts/2014-06-09-pair-programming-with-haskell-and.html)
* [Making a Haskell (Scotty) web app and putting it on Heroku](http://qiita.com/kimagure/items/5947e2db40b9ec2226bf)

### Haskell on Heroku
* [Haskell on Heroku](https://haskellonheroku.com/)
* [Halcyon](https://halcyon.sh/)

```bash
$ heroku config:set HALCYON_GHC_VERSION=7.10.1
$ heroku config:set HALCYON_CABAL_VERSION=1.22.6.0
$ heroku config:set HALCYON_NO_BUILD_DEPENDENCIES=0
```

Others
======
* [The resource-pool package](https://hackage.haskell.org/package/resource-pool)
* [nginx module to enable haskell binding to nginx configuration files](http://lin-techdet.blogspot.jp/2015/12/nginx-module-to-enable-haskell-binding.html)
* [ANN: QuickLift](http://www.parsonsmatt.org/2016/01/03/ann_quicklift.html)
* [liqd/thentos](https://github.com/liqd/thentos)
* [Tor in Haskell & Other Unikernel Tricks](http://www.infoq.com/presentations/tor-haskell)
* [jdreaver/stratosphere](https://github.com/jdreaver/stratosphere)
* [kazu-yamamoto/http2](https://github.com/kazu-yamamoto/http2)
* [Haskell compute PaaS with sparkle](http://blog.tweag.io/posts/2016-06-20-haskell-compute-paas-with-sparkle.html)
* [いまどきのHaskellのTCPクライアント](http://qiita.com/tanakh/items/504747fd1e960d07edbf)
* [Haskell でソケット通信をやってみる](http://yasutech.blogspot.jp/2012/01/haskell.html)
* [socket](https://hackage.haskell.org/package/socket)
* [HaNS](https://hackage.haskell.org/package/hans)
* TLS/SSL implementation in haskell - [vincenthz/hs-tls](https://github.com/vincenthz/hs-tls)
* [vincenthz/hs-connection](https://github.com/vincenthz/hs-connection)
