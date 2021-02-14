* [The Haskell User Experience](http://rickdzekman.com/thoughts/the-haskell-user-experience/)
* [Haskellや周辺ツールについてのリンク集 - Qiita](https://qiita.com/ogata-k/items/23d70250ec42359b6bb5)
* [Artyom's Haskell toolbox](https://tek.brick.do/2f53d74a-1538-421a-b017-0155b1e164c6)

## 環境構築
* [Haskell 環境構築ツールフローチャートを作りました - 趣味はデバッグ……](https://kakkun61.hatenablog.com/entry/2020/06/06/Haskell_%E7%92%B0%E5%A2%83%E6%A7%8B%E7%AF%89%E3%83%84%E3%83%BC%E3%83%AB%E3%83%95%E3%83%AD%E3%83%BC%E3%83%81%E3%83%A3%E3%83%BC%E3%83%88%E3%82%92%E4%BD%9C%E3%82%8A%E3%81%BE%E3%81%97%E3%81%9F)
* [おすすめHaskellプロジェクト作成方法(ほぼ)2021年版](https://zenn.dev/autotaker/articles/haskell-setup-2021)

手っ取り早くHaskellを書いて試すにはWeb上で実装されたREPLを利用するのが便利でしょう。

* [CodeWorld Haskell](https://code.world/haskell)
* [repl.it](https://repl.it/)
* [Wandbox](https://wandbox.org/)

以上のサービスはHaskellに対応しています。

ローカル環境でHaskellを実行するにはstackを導入すると便利です。

* [The Haskell Tool Stack](https://docs.haskellstack.org/en/stable/README/)

インストール方法は上記リンク先に書いてありますが、Mac OSXであれば

```bash
$ brew install haskell-stack
```

のようにbrewを使っていれるのが簡単です。

Windowsの場合は以下の記事が参考になるかもしれません。

* [WindowsでのHaskell開発環境構築(2017年秋版) - モナドとわたしとコモナド](http://fumieval.hatenablog.com/entry/2017/10/11/230117)
* [The easiest way to setup a Haskell environment on Windows](https://hub.zhox.com/posts/introducing-haskell-dev/)
* [Haskell-Guide/DevelopmentEnvironment.md at master · lambdaheart/Haskell-Guide](https://github.com/lambdaheart/Haskell-Guide/blob/master/DevelopmentEnvironment.md)
* [Windows 上で、 Docker を使って Haskell を簡単に始める方法 - Qiita](https://qiita.com/Sohma/items/cc7567fce647442958fd)
* [WSL2にHaskell (Stack経由) を入れたときにハマったこと - Qiita](https://qiita.com/yamamasa1017/items/ba6911c5fe9549aee7f5)

またrustupやpyenvのように複数のGHC, cabalを管理する機能だけを提供してくれるghcupというツールもあります。

* [ghcup - The Haskell (GHC) toolchain installer](https://www.haskell.org/ghcup/)

ghcupは2020/5/9時点ではWindowsに対応していないので注意してください。

* [Queensland FP Lab - Managing GHC versions with ghcup](https://qfpl.io/posts/multiple-ghcs-ghcup/)

## エディタ・IDE
### Haskell IDE Engine
* [haskell/haskell-ide-engine: The engine for haskell ide-integration. Not an IDE](https://github.com/haskell/haskell-ide-engine)
* [Nix で Haskell IDE Engine をシュッと入れる - ryota-ka's blog](https://ryota-ka.hatenablog.com/entry/2019/07/15/120000)
* [Haskell IDE Engineのインストールに苦労した (Windows 10) - Qiita](https://qiita.com/yutasth/items/9df6e2c3937edad24aee)
* [mpickering - An IDE implemented using reflex](https://mpickering.github.io/posts/2020-03-16-ghcide-reflex.html)
* [mpickering - The State of Haskell IDEs](https://mpickering.github.io/ide/posts/2020-05-08-state-of-haskell-ide.html)
* [IDE 2020](https://mpickering.github.io/ide/index.html)
* [IDE 2020: Haskell Language Server, binaries and installation](https://mpickering.github.io/ide/posts/2020-07-10-ghc-libdir.html)
* [Tweag - Making GHCIDE smarter and faster: a fellowship summary](https://www.tweag.io/blog/2020-10-07-ghcide-fellowship-summary/)

#### Legacy
* [DanielG/ghc-mod: Happy Haskell Hacking for editors. CI: https://gitlab.com/dxld/ghc-mod/pipelines](https://github.com/DanielG/ghc-mod)
* [chrisdone/intero](https://github.com/chrisdone/intero)

### Vim
* [begriffs/haskell-vim-now: One-line Haskell Vim install](https://github.com/begriffs/haskell-vim-now?hr=2)
* [Vim用のHaskellインデントプラグインvim-haskell-indentを作りました](http://itchyny.hatenablog.com/entry/2015/10/30/000000)
* [Haskellでimport文をソートするプラグイン vim-haskell-sort-import を作りました](http://itchyny.hatenablog.com/entry/2016/01/23/190000)
* [Connecting Vim with your Haskell repl](http://begriffs.com/posts/2013-08-19-connecting-vim-with-your-haskell-repl.html)
* [Haskell で +channel 使って Vim とおはなしする](http://qiita.com/lesguillemets/items/a1a7c70709660985eead)
* [（失敗）Neovimに移行しつつHaskellの開発環境を整える on Windows](http://qiita.com/igrep/items/a65a10677fe69226c78d)
* [alx741/vim-yesod](https://github.com/alx741/vim-yesod)
* [Vim + Haskell](http://www.sillybytes.net/2016/08/vim-haskell_11.html)
* [Neovim のプラグインを Haskell で書いてみる - Qiita](http://qiita.com/satosystems/items/da37a583facacc8b597e)
* [neovim-ghci: a fast and interactive Haskell editing experience - asciinema](https://asciinema.org/a/q9I5eNblDLCoOiQlZjm1ce0ba?size=20&speed=3&theme=tango)
* [【Haskell (その2) Advent Calendar 2017】Vim から Hoogle の検索が出来るプラグインをつくった【16日目】 - Secret Garden(Instrumental)](http://secret-garden.hatenablog.com/entry/2017/12/16/000000)
* [Neovim for Haskell Development - The Mendo Zone](https://mendo.zone/fun/neovim-setup-haskell/)
* [Haskell, Nix and Vim: Getting started · tblog](http://www.tpflug.me/2019/01/14/haskell-nix-vim/)
* [= ale.vimとQuickRunでstack環境を使う - Qiita](https://qiita.com/Cj-bc/items/481bb0449648047653b3)
* [Vim and Haskell in 2019 \| Repeat Until Keypressed](http://marco-lopes.com/articles/Vim-and-Haskell-in-2019/)
* [Setting up Neovim for Haskell, as of October 2019](https://mbuffett.com/setting-up-neovim-for-haskell-as-of-october-2019/)
* [Vim and Haskell in 2019 \| Repeat Until Keypressed](http://marco-lopes.com/articles/Vim-and-Haskell-in-2019/)

### Emacs
* [haskell/haskell-mode](https://github.com/haskell/haskell-mode)
* [haskellのstackでghc-modを利用時に一部パッケージのimportでエラーとなる](http://qiita.com/katsuyan/items/a132d7bf6817f19af2d6)
* [気がついたら Emacs の Haskell を勉強する環境が整っていた話 - Diary over Finite Fields](http://blog.515hikaru.net/entry/2016/09/12/021206)
* [how-i-use-dante](http://h2.jaguarpaw.co.uk/posts/how-i-use-dante/)

### Visual Studio Code
* [Haskell Language Server - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=alanz.vscode-hie-server)
  * [VS Code と haskell-ide-engine で Haskell 開発環境を構築する - Qiita](https://qiita.com/waddlaw/items/b83cd10311200095fe87)
  * [macOSでVS CodeのHaskellの環境構築で嵌った点 - Qiita](https://qiita.com/dsm/items/861d08844b1fba32f07b)
  * [VSCodeでHaskell Language Serverが動かない（Windows 10） - Qiita](https://qiita.com/yutasth/items/03e2cc6148f2406d0d8a)
  * [VSCodeでCouldn't start client Haskell IDEが出る（Windows 10） - Qiita](https://qiita.com/yutasth/items/28af2eb0371f6457e0bb)
* [Haskero - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Vans.haskero)
  * [[Visual Studio Code][Haskell] VSCodeでHaskellの開発環境を整える - Qiita](http://qiita.com/koara-local/items/06d57fd7fe4adc72f2b6)
* [Introducing Haskelly – Haskell extension for Visual Studio Code – Microsoft Faculty Connection](https://blogs.msdn.microsoft.com/uk_faculty_connection/2017/02/13/introducing-haskelly-extension-for-visual-studio-code/)
* [Setting up a Haskell development environment in minutes in Visual Studio Code \| In Absentia](https://hmemcpy.com/2020/02/setting-up-a-haskell-development-environment-in-minutes-in-vscode/)

### Haskell for Mac
* [Haskell for Mac](http://haskellformac.com/)
* [Haskell for Mac でちょっと Haskell をさわってみる](http://qiita.com/usamik26/items/d99bf694150a549b5078)

### Yi
* [YiでEditorM aの状態を変更したい時はMonadEditor使えば](http://qiita.com/aiya000/items/f6893ec511977be28a9f)
* [Yiと7時間ずっと向き合い続けた僕が出したYiの設定方法](http://qiita.com/aiya000/items/5627f938e215fad156d3)
* [Yiエディタでtagsを読み込む](http://qiita.com/aiya000/items/01f03a203cbc702aff80)

### IntelliJ
* [Docker + IntelliJ で楽に実行環境を構築する - Qiita](https://qiita.com/Mulyu/items/35d1348a009260fd4827)
* [IntelliJでHaskell](http://qiita.com/eielh/items/f121fbd2def8c887405f)
* [IntelliJ (with Stack) as Haskell IDE - YouTube](https://www.youtube.com/watch?v=KXd8mV7Vzhc)
* [IntelliJでHaskellを実行する（haskell stackプロジェクト） - Qiita](http://qiita.com/nwtgck/items/d64647c05a0ba52db63c)
* [HaskellをIntelliJで使えるようになりました！ - Qiita](http://qiita.com/v97ug/items/245faeb80abea19886e8)
* [IntelliJで"Haskell module can not be created"となるときの対処法 - Qiita](https://qiita.com/nwtgck/items/5b08ad3ede058d67b3f9)
* [Another IDEa: Haskell and IntelliJ! — Monday Morning Haskell](https://mmhaskell.com/blog/2019/2/25/another-idea-haskell-and-intellij)
* [intellij-haskell 1.0-beta44 : haskell](https://www.reddit.com/r/haskell/comments/aq8o4f/intellijhaskell_10beta44/)
* [intellij-haskellの設定方法 (2020/03/15時点) - Qiita](https://qiita.com/dyoshikawa/items/c23de702217b37e79154)

### Others
* [Leksah](http://leksah.org/)
* [EclipseFP](http://eclipsefp.github.io/)
* [[Haskell-cafe] [ANN] haskell-ide project](https://mail.haskell.org/pipermail/haskell-cafe/2015-October/121875.html)
* [The new haskell-ide repo](https://www.fpcomplete.com/blog/2015/10/new-haskell-ide-repo)
* [Haskell IDE Engine progress report November 2015](https://github.com/haskell/haskell-ide-engine/blob/master/docs/Report-2015-11.md)
* [Haskell IDE Engine progress report for December 2015.](https://github.com/haskell/haskell-ide-engine/blob/master/docs/Report-2015-12.md)
* [wandernauta/viskell](https://github.com/wandernauta/viskell)
* [ndmitchell/ghcid](https://github.com/ndmitchell/ghcid)
* [Project Proposal](http://stefanj.me/funblocks/2016/05/23/project-proposal/)
* [Hello World](http://stefanj.me/funblocks/2016/05/24/hello-world/)
* [Another Web-based Haskell IDE](http://jpmoresmau.blogspot.jp/2016/07/another-web-based-haskell-ide.html)
* [Tidalでライブコーディング! - セットアップ編](http://qiita.com/yoppa/items/41805cc6af62b1047a34)
* [transient-haskell/transient - Running example(s)](https://github.com/transient-haskell/transient/wiki/Running-example(s))
* [theam/haskell-do: The Haskell code editor focused on interactive development.](https://github.com/theam/haskell-do)
* [私のHaskellコーディングスタイルガイド,改行出来るポイントを紹介 - ncaq](https://www.ncaq.net/2017/12/02/00/00/00/)
* [State of Haskell editor/IDE support](https://github.com/rainbyte/haskell-ide-chart)
* [Which tab width do you prefer for Haskell code?](http://doodle.com/poll/82xf854t9mmuv22h)
* [Explicit vertical alignment in Haskell](http://www.joachim-breitner.de/blog/704-Explicit_vertical_alignment_in_Haskell)
* [tonsky/FiraCode](https://github.com/tonsky/FiraCode) - Monospaced font with programming ligatures
* [[Haskell] [ANN] HyperHaskell -- the strongly hyped Haskell	interpreter](https://mail.haskell.org/pipermail/haskell/2016-October/025010.html)
* [ghcid for the win!](http://www.parsonsmatt.org/2018/05/19/ghcid_for_the_win.html)
* [kazu-yamamoto/hhp: Happy Haskell Programming](https://github.com/kazu-yamamoto/hhp)
* [hieのインストールに苦労した（Windows10) - Qiita](https://qiita.com/oze/items/6313604c37844c1f2dcd)
* [fairy-tale-agi-solutions/haskell-editor-setup: Instructions for setting up Haskell editors/IDEs](https://github.com/fairy-tale-agi-solutions/haskell-editor-setup)
* [Haskell Support in Mainstream IDEs](https://tech.fpcomplete.com/blog/mainstream-ides-haskell)
* [Neil Mitchell's Haskell Blog: One Haskell IDE to rule them all](https://neilmitchell.blogspot.com/2020/01/one-haskell-ide-to-rule-them-all.html)
* [Neil Mitchell's Haskell Blog: Fixing Space Leaks in Ghcide](http://neilmitchell.blogspot.com/2020/05/fixing-space-leaks-in-ghcide.html)
* [pepeiborra/hls-tutorial: A tutorial on writing Haskell Language Server plugins](https://github.com/pepeiborra/hls-tutorial)
* [Handing over ghcide to the Haskell community - DAML](https://daml.com/daml-driven/handing-over-ghcide-to-the-haskell-community/)

## Formatter/Linter
* [Haskellの静的解析ツール HLint を使おう](http://qiita.com/suzuki-hoge/items/6d101e523620178c6f7b)
* [functor.tokyo -- GHC Warnings You Should Use in Addition to -Wall](https://functor.tokyo/blog/2017-07-28-ghc-warnings-you-should-enable)
* [Understanding HLint rules](http://neilmitchell.blogspot.jp/2017/11/understanding-hlint-rules.html)
* [lspitzner/brittany](https://github.com/lspitzner/brittany)
* [tibbe/haskell-style-guide](https://github.com/tibbe/haskell-style-guide/blob/master/haskell-style.md)
* [インデントで悩まないための単純な指針](http://d.hatena.ne.jp/mkotha/20111226/1324909427)
* [memfrob.de - Announcing Floskell](https://memfrob.de/posts/announcing-floskell/)
* [Haskell Style Guide](https://kowainik.github.io/posts/2019-02-06-style-guide)
* [Tweag I/O - Ormolu: Format Haskell code like never before](https://www.tweag.io/posts/2019-05-27-ormolu.html)
* [Ormolu \| Monadfix](https://monadfix.com/ormolu/)
* [Retrie: Haskell refactoring made easy - Facebook Engineering](https://engineering.fb.com/open-source/retrie/)
* [Refactoring Large Haskell Codebases Using Facebook Retrie](https://www.infoq.com/news/2020/07/retrie-haskell-refactoring-tool/?utm_campaign=infoq_content&utm_source=infoq&utm_medium=feed&utm_term=global)
* [Haskell Style Guide :: Kowainik](https://kowainik.github.io/posts/2019-02-06-style-guide)
* [stylish-haskellをBlockArgumentsに対応させる - Qiita](https://qiita.com/sparklingbaby/items/a46f299dd303d0738f58)
* [stylish-haskellをHexFloatLiteralsやNumericUnderscoresに対応させる - Qiita](https://qiita.com/mod_poppo/items/418da906f6621a2898e8)
* [How Stylish Haskell works](https://felixmulder.com/writing/2020/08/20/How-Stylish-Haskell-works.html)

## 情報検索
* [Hoogle](https://www.haskell.org/hoogle/) - [README](https://github.com/ndmitchell/hoogle/blob/master/README.md)
  * [Easy Hoogle usage from bash](http://przybyszd.blogspot.jp/2016/01/easy-hoogle-usage-from-bash.html)
  * [Hoogle検索をラクにするChrome拡張を作りました！](http://yu-i9.hatenablog.com/entry/hoogleswitcher)
* [Hayoo!](http://hayoo.fh-wedel.de/)
* [Base で定義されている演算子の一覧](http://hackage.haskell.org/package/acme-operators/docs/Acme-Operators-Base.html)
* [How do you find a function that…](http://myhaskelljournal.com/how-do-you-find-a-function-that/)
* [Search - haskell \| Unixstickers](http://www.unixstickers.com/index.php?route=product/search&filter_name=haskell)* [Stackage Serverのちょっとした便利な使い方,Hoogleをブラウザのカスタム検索エンジンに追加しましょう,よく使うパッケージをブックマークする時はPackageRのURLにしましょう - ncaq](https://www.ncaq.net/2017/12/04/00/00/00/)
* [Haskellで外部モジュールを使いたいとき（モジュールimportとパッケージinstall） - Qiita](https://qiita.com/TTsurutani/items/b68956a555747fc3cb0e)
* [Hackage Search](https://hackage-search.serokell.io/) Hackage を正規表現で検索できるツール
  * [Hackage Search: Regex-Based Online Code Search](https://serokell.io/blog/hackage-search)

## Haddoc
* [Continuous Haddocks](https://chromabits.com/posts/2016/07/04/haddock-travis/)
* [最近のHaskell製パッケージのドキュメント事情について簡単に](http://qiita.com/igrep/items/e7926ef2d015ca85c18e)
* [Haddock at your fingertips](http://hao.codes/docsets.html)
* [Let's Write Documentation for Haskell](http://lwm.github.io/posts/html/document-haskell.html)
* [haddock に Grid Table 記法が追加されました](https://haskell.e-bigmoon.com/posts/2017-12-27-haddock-grid-table.html)
* [Redesigning Haskell docs - Nuno Alexandre](https://nunoalexandre.com/2018/02/04/redesigning-haskell-docs)
* [Haskell Documentation with Haddock: Wishes'n'Tips :: Kowainik](https://kowainik.github.io/posts/haddock-tips)

## REPL(GHCi)
* [GHCiの基本的な使い方まとめ - Qiita](https://qiita.com/Izawa_/items/6fc0a7583dc71be48c2a)
* [ghciでマルチバイト文字をエスケープせず表示させる](http://qiita.com/aosho235/items/bdfa4a68b77b9fcc4a35)
* [Haskell初心者が直面するghciで起こしがちなエラー4選とその対処法 - Qiita](http://qiita.com/tacke_jp/items/bb714f22eb8762d6e8ee)
* [ghciでの関数定義 - Qiita](http://qiita.com/smellman/items/708be678df00d4f7529c)
* [Rapid](https://hackage.haskell.org/package/rapid-0.1.3/docs/Rapid.html) - This module provides a rapid prototyping suite for GHCi that can be used standalone or integrated into editors.
* [litxio/ptghci: High-powered REPL for Haskell, inspired by IPython](https://github.com/litxio/ptghci)

## Cabal
* [Hackage](http://hackage.haskell.org/)
* [Hackage Dependency Monitor](http://packdeps.haskellers.com/)
* [kowainik/awesome-cabal: 💫 A curated list of awesome resources for the Haskell Cabal build tool.](https://github.com/kowainik/awesome-cabal)
* [Cabalでビルド時にProtocol Buffersファイルをコンパイルする](http://qiita.com/yunomu/items/a8ef65dccc1c085b7c0d)
* [stepcut/hackage-whatsnew](https://github.com/stepcut/hackage-whatsnew)
* [Uploading Package to Hackage - Vaclav Svejcar personal blog](https://svejcar.dev/posts/2020/02/29/uploading-package-to-hackage/)
* [The packunused package](http://hackage.haskell.org/package/packunused)
* [Creating a package on Hackage](http://begriffs.com/posts/2014-10-25-creating-package-hackage.html)
* [cabal-info: get information from cabal files.](https://www.barrucadu.co.uk/posts/2016-02-02-cabal-info.html)
* [Announcing cabal new-build: Nix-style local builds](http://blog.ezyang.com/2016/05/announcing-cabal-new-build-nix-style-local-builds/)
* [The cab package](http://hackage.haskell.org/package/cab)
* [cabalでドキュメントをhackageにアップロードする](http://qiita.com/debug-ito/items/272d798b7787509cc6ae)
* [haskell.org and the Evil Cabal](http://www.snoyman.com/blog/2016/08/haskell-org-evil-cabal)
* [cabal new-build is a package manager](http://blog.ezyang.com/2016/08/cabal-new-build-is-a-package-manager/)
* [haskell.org and the Evil Cabal](http://www.snoyman.com/blog/2016/08/haskell-org-evil-cabal)
* [Follow up: haskell.org and the Evil Cabal](http://www.snoyman.com/blog/2016/08/follow-up-haskell-org-evil-cabal)
* [Updated Hackage mirroring](https://www.fpcomplete.com/blog/2016/09/updated-hackage-mirroring)
* [Try Backpack: Cabal packages : Inside 214-1E](http://blog.ezyang.com/2017/01/try-backpack-cabal-packages/)
* [Minimal Cabal Files - jpvillaisaza](https://jpvillaisaza.github.io/2017/03/14/minimal-cabal-files/)
* [TerrorJack/Cabal-playground: Logs the input & output of Cabal hooks. Useful for debugging Cabal build process.](https://github.com/TerrorJack/Cabal-playground)
* [Better Haskell packages with hpack · taylor.fausak.me](http://taylor.fausak.me/2017/04/12/better-haskell-packages-with-hpack/)
* [Use Hpack - e.xtendo.org](https://e.xtendo.org/haskell/hpack)
* [dhall-to-cabal: Compile Dhall expressions to Cabal files](https://hackage.haskell.org/package/dhall-to-cabal)
* [Introduction to Cabal \| Haskell at Work](https://haskell-at-work.com/episodes/2018-05-13-introduction-to-cabal.html)
* [Haskell: Build Tools](https://kowainik.github.io/posts/2018-06-21-haskell-build-tools.html)
* [Hash Based Package Downloads - part 1 of 2](https://www.fpcomplete.com/blog/2018/01/hash-based-package-downloads-part-1-of-2#)
* [Hash Based Package Downloads - part 2 of 2](https://www.fpcomplete.com/blog/2018/01/hash-based-package-downloads-part-2-of-2)
* [SLURP](https://www.snoyman.com/blog/2018/01/slurp)
* [SLURP: a Single Liberal Unified Registry of Haskell Packages by simonmar · Pull Request #4 · haskell/ecosystem-proposals](https://github.com/haskell/ecosystem-proposals/pull/4)
* [N Haskell Tools & Packages I wish someone had told me about](http://get-finch.com/2016/10/10/haskell-tools.html)
* [Haskell package checklist](http://taylor.fausak.me/2016/12/05/haskell-package-checklist/)
* [Version SAT](https://research.swtch.com/version-sat)
* [Problematic versioning policy](http://taylor.fausak.me/2016/12/28/problematic-versioning-policy/)
* [Conflicting Module Names](http://www.snoyman.com/blog/2017/01/conflicting-module-names)
* [Dear package managers: dependency resolution results should be in version control](https://blog.ometer.com/2017/01/10/dear-package-managers-dependency-resolution-results-should-be-in-version-control/)
* [Steps for Releasing a Haskell Package to Hackage](https://functor.tokyo/blog/2018-07-16-release-haskell-packages-to-hackage)
* [Why Not Both? – fommil – Medium](https://medium.com/@fommil/why-not-both-8adadb71a5ed)
* [Oleg's gists - ANN: cabal-fmt](http://oleg.fi/gists/posts/2019-08-11-cabal-fmt.html)
* [stack で管理されたプロジェクトを cabal でビルドするために](https://haskell.e-bigmoon.com/posts/2020/01-22-get-freeze-from-stackage.html)
* [cabal の build-tool-depends フィールド](https://haskell.e-bigmoon.com/posts/2020/01-18-cabal-build-tool-depends.html)
* [cabal install コマンドについて](https://haskell.e-bigmoon.com/posts/2020/03-25-cabal-install.html)
* [Colin Woodbury](https://www.fosskers.ca/en/blog/wide-haskell)
* [🧰 Making the most of Cabal](https://lukelau.me/haskell/posts/making-the-most-of-cabal/)
* [Whirlwind Tour Of Cabal For Beginners \| School of FP](https://schooloffp.co/2020/08/17/whirlwind-tour-of-cabal-for-beginners.html)
* [Oleg's gists - A design for paths in Cabal](https://oleg.fi/gists/posts/2020-09-13-a-design-for-paths.html)
* [pureblog - Haskell is vulnerable to dependency confusion](https://frasertweedale.github.io/blog-fp/posts/2021-02-12-haskell-dependency-confusion.html)

### Nix integration
* [13. Nix Integration — Cabal 3.5.0.0 User's Guide](https://cabal.readthedocs.io/en/latest/nix-integration.html)
* [Gabriel439/haskell-nix: Nix and Haskell in production](https://github.com/Gabriel439/haskell-nix)
* [Nix ±Cabal](https://begriffs.com/posts/2015-08-07-nix-plus-minus-cabal.html)
* [NixOS/cabal2nix: Generate Nix build instructions from a Cabal file](https://github.com/NixOS/cabal2nix)
* [Maxfield Chen - Functional Fika — Nix and Haskell](https://maxfieldchen.com/posts/2020-05-16-Functional-Fika-Haskell-Nix-Cabal.html)

## Stack
* [The Haskell Tool Stack](http://docs.haskellstack.org/en/stable/README.html)
* [Stackage](https://www.stackage.org/)
   * [Announcing stackage-update](http://www.yesodweb.com/blog/2015/04/announcing-stackage-update)
   * [Stackage Badges](https://www.fpcomplete.com/blog/2015/10/stackage-badges)
* [Haskellのビルドツール"stack"の紹介](http://qiita.com/tanakh/items/6866d0f570d0547df026)
* [Stack cookbook – Haskell – Aelve Guide](https://guide.aelve.com/haskell/stack-cookbook-ai0adh03)
* [Stackでやる最速Haskell Hello world! (GHCのインストール付き！)](http://qiita.com/igrep/items/da1d8df6d40eb001a561)
* [Stackを使って楽しくHaskellスクリプティング](http://qiita.com/tanakh/items/1ca4ba9e1f5006a30106)
* [AceHack-Structuring your first Haskell project with Stack](https://sakshamsharma.com/2018/03/haskell-proj-struct/)
* [The Cabal/Stack Disambiguation Guide](https://gist.github.com/merijn/8152d561fb8b011f9313c48d876ceb07)
* [stack/GUIDE.md](https://github.com/commercialhaskell/stack/blob/guide/GUIDE.md)
* [Stack at Front Row Education](http://tech.frontrowed.com/post/122556313986/stack-at-front-row-education)
* [Migrating a Project to stack](http://duplode.github.io/posts/migrating-a-project-to-stack.html)
* [How stack can use Docker under the hood](https://www.fpcomplete.com/blog/2015/08/stack-docker)
* [PRACTICAL HASKELL - GETTING STARTED WITH STACK](http://seanhess.github.io/2015/08/04/practical-haskell-getting-started.html)
* [New in-depth guide to stack](https://www.fpcomplete.com/blog/2015/08/new-in-depth-guide-stack)
* [stack - from github to hacking haskell project in no time with stack](https://www.youtube.com/watch?v=asptVVijhhM&feature=youtu.be)
* [commercialhaskell/stack-templates](https://github.com/commercialhaskell/stack-templates)
* [Haskell環境構築_20151013_最新版_1_投稿済み.md](http://qiita.com/philopon/items/879c2011ce8744c838de#fn4)
* [Getting started with Haskell, stack and spacemacs](http://www.rnowak.info/2015/10/getting-started-with-haskell-stack-and.html)
* [Haskell Stack Mega-Tutorial](https://www.youtube.com/watch?v=sRonIB8ZStw)
* [Stack entering stabilization phase](https://www.fpcomplete.com/blog/2015/11/stack-stabilization)
* [Haskell tidbits: 24 days of Hackage, 2015: day 1: Introduction and Stack](http://conscientiousprogrammer.com/blog/2015/11/30/haskell-tidbits-24-days-of-hackage-2015-day-1-introduction-and-stack/)
* [What's the point of Stackage LTS?](http://neilmitchell.blogspot.jp/2015/12/whats-point-of-stackage-lts.html)
* [StackでHeskellプロジェクトを作ってみる](http://qiita.com/hiroyuki-nagata/items/735b8de27699d785c434)
* [stack 1.0.0が出たので私が初めて使った時からの更新をピックアップ](http://qiita.com/igrep/items/5562a9d4703c29f8c0f5)
* [reiddraper/ordeal](https://github.com/reiddraper/ordeal)
* [Stack, the Haskell Build Tool](http://begriffs.com/posts/2015-06-22-haskell-stack-build-tool.html)
* [Deploying Haskell for Mac projects on OS X and Linux](http://blog.haskellformac.com/blog/deploying-haskell-for-mac-projects-on-os-x-and-linux)
* [The Stackage data flow](https://www.fpcomplete.com/blog/2016/04/stackage-data-flow)
* [LTS Haskell: Version your Ecosystem](https://github.com/fpco/lts-haskell#readme)
* [stackを使う](http://d.hatena.ne.jp/hiroki_f/20160603)
* [Stackを使ったHaskellのインストール](http://qiita.com/KNaito/items/98debf322e08c706fc90)
* [Stack を使って Haskell をインストールする](http://qiita.com/usamik26/items/fa7c1f14c5ce2a0bd9fc)
* [Why did Stack stop using Shake?](http://neilmitchell.blogspot.jp/2016/07/why-did-stack-stop-using-shake.html)
* [Stack を使って Haskell したい！！](http://qiita.com/waddlaw/items/49874f4cf9b680e4b015)
* [さくっとHaskellの開発環境を整える(Stack)](http://qiita.com/Akira_Kido_N/items/93b9c7d332bbea07c8a2)
* [yamadapc/stack-gh-pages](https://github.com/yamadapc/stack-gh-pages)
* [Stackage LTS 7 is released](http://juhp.blogspot.jp/2016/09/stackage-lts-7-is-released.html?m=1)
* [Static compilation with Stack](https://www.fpcomplete.com/blog/2016/10/static-compilation-with-stack)
* [psibi/stackgo](https://github.com/psibi/stackgo)
* [Scripting in Haskell](https://www.fpcomplete.com/blog/2016/11/scripting-in-haskell)
* [Stack を使って Haskell の Hello World をやってみる](http://ku00.hatenablog.com/entry/2016/09/15/141151)
* [Haskell 初心者が、stack でベンチマークテストにつまった話（RTS option）](http://qiita.com/dxa0010/items/48f625a83d60ebffefe7)
* [stackでのライブラリ(library)と実行(executable)ファイルの違い](http://qiita.com/dxa0010/items/5d37497cddbcd5c823a1)
* [一部パッケージimportでstack buildできない - Qiita](http://qiita.com/katsuyan/items/0a3cf2a86727ffec0913)
* [Stackage design choices: making Haskell curated package sets - Michael Snoyman's blog](http://www.snoyman.com/blog/2017/01/stackage-design-choices)
* [Hackage Security and Stack - Michael Snoyman's blog](http://www.snoyman.com/blog/2017/02/hackage-security-stack)
* [Casual Hacking With stack, Reloaded - The Life Monadic](http://duplode.github.io/posts/casual-hacking-with-stack-reloaded.html)
* [Stack のbenchmarkとtest - Qiita](http://qiita.com/ryamada22/items/b727df8268a4f776197a)
* [Compose :: Melbourne 2017 - Justin Bedő - BioShake: A Haskell EDSL for Bio-Informatics Pipelines - YouTube](https://www.youtube.com/watch?v=lu90p7EWXJE&feature=youtu.be)
* [Tweag I/O - Using Stackage for GHC regression testing](http://www.tweag.io/posts/2017-10-27-stackage-head.html)
* [Haskell Stack とは何をするツールなのか - Qiita](https://qiita.com/usamik26/items/672ed3c4451402bfc275)
* [Haskellのstackによるプロジェクトについて - Qiita](https://qiita.com/ogata-k/items/2b21326b2b7351bfc28c)
* [stack ls コマンドが追加されます](https://haskell.e-bigmoon.com/posts/2017-12-20-stack-ls-command.html)
* [カスタムスナップショットの紹介](https://haskell.e-bigmoon.com/posts/2017-12-23-stack161.html)
* [quchen/stackage-everything: »I want Stackage on an airplane and I have only 3 minutes until takeoff«](https://github.com/quchen/stackage-everything)
* [The Task abstraction \| no time](https://blogs.ncl.ac.uk/andreymokhov/the-task-abstraction/)
* [[VIDEO] Build Systems à la Carte by Simon Peyton Jones at ICFP 2018 : haskell](https://www.reddit.com/r/haskell/comments/9l2shn/video_build_systems_%C3%A0_la_carte_by_simon_peyton/)
* [Haskell Stack のグローバル環境を雑に使う - Qiita](https://qiita.com/keigoi/items/4aaa6090361b53cce24a)
* [Haskell Stackでエラー "openFile: inappropriate type (Is a directory) when using mirror " が出るときの対処法 - Qiita](https://qiita.com/nwtgck/items/36feb22bb194f0c01493)
* [Stack (Haskell): Could not find moduleと言われたときの対処 2018年春版 - Qiita](https://qiita.com/sky_y/items/6712c3609a8e690e0dd3)
* [Dear Haskell it's not you, it's your tooling.](https://avi-d-coder.github.io/post/dear_haskell/)
* [Why Stack is moving its CI to Azure Pipelines](https://www.fpcomplete.com/blog/why-stack-is-moving-its-ci-to-azure-pipelines)
* [stack new叩いたらすぐhspecが使えるようにする - Qiita](https://qiita.com/jnuank/items/9b5cf42161be3954afac)
* [中国でStackを使うには？ - Qiita](https://qiita.com/sio-funmatsu/items/16bc8125d2ce27b8e90f)
* [しょぼいメモリ環境で Haskell stack build用にswap領域を増やす - Qiita](https://qiita.com/jdoiWork/items/ad6a94fafc33b3dd1b16)
* [Tweag I/O - Bazel, Cabal, Stack: Why choose when you can have them all?](https://www.tweag.io/posts/2019-10-09-bazel-cabal-stack.html)
* [Casa: Content-Addressable Storage Archive](https://tech.fpcomplete.com/blog/casa)
* [Casa and Stack](https://tech.fpcomplete.com/blog/casa-and-stack)

### Nix integration
* [Nix integration - The Haskell Tool Stack](https://docs.haskellstack.org/en/stable/nix_integration/)
* [Tweag - Stack + Nix = portable reproducible builds](https://www.tweag.io/blog/2015-12-09-stack-nix/)

### 逆引き
* [Ubuntu 16 で Stack + GHC がライブラリのリンクに失敗する場合の対処法](http://qiita.com/mr_konn/items/13caa82c1118968d3145)
* [stackで~/.stackの場所を移動する](http://qiita.com/sanemat/items/722836dc71e5620d8db3)
* [stackとdockerでHaskellプログラムを静的リンクする](http://www.ishiy.xyz/posts/2016-02-28-haskell-docker.html)
* [stack runghc、ghciでAmbiguous module nameというエラーが出る場合の対処法](https://www.ishiy.xyz/posts/2016-11-06-haskell-stack.html)
* [Stack (Haskell): 自分で書いたmoduleをビルドしたい](http://qiita.com/sky_y/items/9e241747cff4ed80ea35)
* [Haskell(Stack)でGitHubにあるライブラリを使う方法](http://qiita.com/aiya000/items/4e90aead41e3711a1e54)
* [stackのオレオレテンプレートを作って楽をする](http://qiita.com/techno-tanoC/items/72d188cd19d8e3ac890d)
* [stackとghc-modを一緒に使う時の手順](http://qiita.com/siphilia_rn/items/bba4519710bb0513d6f9)
* [Stack (Haskell): `stack new`で自動的に生成されるLICENSEはBSDライセンスである](http://qiita.com/sky_y/items/c382020c690d15efc28f)
* [Stackでextra-depsを自動設定する方法の比較](http://qiita.com/watertight/items/0e09abe3fb9352502ccf)
* [stack new した時に出てくるファイルのテンプレートの設定](http://qiita.com/igrep/items/42130f58fb18da55e8c3)

## Chrome拡張
* [matsumonkie/izuna: Show Haskell type annotations when doing code review on Github](https://github.com/matsumonkie/izuna)
