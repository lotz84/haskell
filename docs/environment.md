## 環境構築
* [The Haskell User Experience](http://rickdzekman.com/thoughts/the-haskell-user-experience/)
* [Easy universal Haskell development environment](http://achernyak.me/universal-haskell-dev-enviornment)
* [The Haskell Development Environment](http://lambdaschool.com/lesson2)

```bash
$ # on Mac OSX
$ brew install haskell-stack
$ stack setup
$ alias ghc='stack ghc --'
$ alias ghci='stack ghci --'
```

* [commercialhaskell/jump](https://github.com/commercialhaskell/jump)
* [Haskell Pad](http://www.haskellpad.org/)

## Formatter
* [lspitzner/brittany](https://github.com/lspitzner/brittany)
* [tibbe/haskell-style-guide](https://github.com/tibbe/haskell-style-guide/blob/master/haskell-style.md)
* [インデントで悩まないための単純な指針](http://d.hatena.ne.jp/mkotha/20111226/1324909427)

## Lint
* [Haskellの静的解析ツール HLint を使おう](http://qiita.com/suzuki-hoge/items/6d101e523620178c6f7b)
* [functor.tokyo -- GHC Warnings You Should Use in Addition to -Wall](https://functor.tokyo/blog/2017-07-28-ghc-warnings-you-should-enable)

## IHaskell
* [iHaskellを試してみる](http://qiita.com/eielh/items/a35b3d51056c1031f4d0)
* [Install IHaskell on Ubuntu 14.04 with Stack](http://remusao.github.io/install-ihaskell-on-ubuntu-1404-with-stack.html)
* [IHaskell Online: Help Choose Demo Code Snippets!](http://www.reddit.com/r/haskell/comments/37uqqk/ihaskell_online_help_choose_demo_code_snippets/)
* [Demo of IHaskell Notebook](http://begriffs.com/posts/2016-01-20-ihaskell-notebook.html)

## Editor
* [State of Haskell editor/IDE support](https://github.com/rainbyte/haskell-ide-chart)
* [Which tab width do you prefer for Haskell code?](http://doodle.com/poll/82xf854t9mmuv22h)
* [Explicit vertical alignment in Haskell](http://www.joachim-breitner.de/blog/704-Explicit_vertical_alignment_in_Haskell)
* [tonsky/FiraCode](https://github.com/tonsky/FiraCode) - Monospaced font with programming ligatures
* [[Haskell] [ANN] HyperHaskell -- the strongly hyped Haskell	interpreter](https://mail.haskell.org/pipermail/haskell/2016-October/025010.html)
* [repl.it - Introducing Haskell](https://repl.it/site/blog/haskell)

### Vim
* [begriffs/haskell-vim-now](https://github.com/begriffs/haskell-vim-now?hr=2)
* [VimでHaskellしよう](http://qiita.com/yukiasai/items/92a2b343b6519b38f402)
* [Vim用のHaskellインデントプラグインvim-haskell-indentを作りました](http://itchyny.hatenablog.com/entry/2015/10/30/000000)
* [Haskellでimport文をソートするプラグイン vim-haskell-sort-import を作りました](http://itchyny.hatenablog.com/entry/2016/01/23/190000)
* [Vim and Haskell in 2016](http://www.stephendiehl.com/posts/vim_2016.html)
* [Connecting Vim with your Haskell repl](http://begriffs.com/posts/2013-08-19-connecting-vim-with-your-haskell-repl.html)
* [myfreeweb/intero.nvim](https://github.com/myfreeweb/intero.nvim)
* [Haskell で +channel 使って Vim とおはなしする](http://qiita.com/lesguillemets/items/a1a7c70709660985eead)
* [（失敗）Neovimに移行しつつHaskellの開発環境を整える on Windows](http://qiita.com/igrep/items/a65a10677fe69226c78d)
* [alx741/vim-yesod](https://github.com/alx741/vim-yesod)
* [Vim + Haskell](http://www.sillybytes.net/2016/08/vim-haskell_11.html)
* [Neovim のプラグインを Haskell で書いてみる - Qiita](http://qiita.com/satosystems/items/da37a583facacc8b597e)

### Emacs
* [haskell/haskell-mode](https://github.com/haskell/haskell-mode)
* [Intero for Emacs](http://commercialhaskell.github.io/intero/)
* [Qiita - Intero for Emacs](http://qiita.com/hiratara/items/a963960f7593db4b43ab)
* [Intero for Emacs: Changes June–July](https://haskell-lang.org/announcements)
* [haskellのstackでghc-modを利用時に一部パッケージのimportでエラーとなる](http://qiita.com/katsuyan/items/a132d7bf6817f19af2d6)

### Atom
* [Switching from Vim to Atom (A Haskeller's Perspective)](http://edsko.net/2015/03/07/vim-to-atom/)
* [haskell-pointfree package](https://atom.io/packages/haskell-pointfree)
* [Atom + Stack = no globally installed GHC/packages](http://blog.nikosbaxevanis.com/2016/05/19/atom-and-stack-no-globally-installed-ghc-and-packages/)
* [Atom EditorでHaskell](http://qiita.com/eielh/items/b2e85f8ea4c6cdb8012d)
* [Windows上のAtomで Haskell開発環境を整える。](http://qiita.com/new_spaghet/items/10e387161298a276d9d7)
* [ATOMのide-haskell導入手順（MacOS X）](http://qiita.com/nakamurau1@github/items/7feaeb643cb48842b613)

### Sublime Text
* [SublimeText3 で Haskell (Stack) を書くための環境構築 (Mac OS X)](http://qiita.com/algas/items/77c7f6455f8106c1a9e8)
* [SublimeText 3 & Haskell in 9 steps](https://atcol.wordpress.com/2016/06/03/sublimetext-3-haskell-in-9-steps/)
* [Sublime Text 3 にHaskellの開発環境を構築する](http://qiita.com/t-yng/items/a5c79e7f497674cabc51)
* [SublimeText3でHaskellを書く環境を構築する際に躓いたところ - Qiita](http://qiita.com/skht777/items/63deb2193c3918df4d97)

### Haskell for Mac
* [Haskell for Mac](http://haskellformac.com/)
* [Haskell for Mac でちょっと Haskell をさわってみる](http://qiita.com/usamik26/items/d99bf694150a549b5078)
* [Inspecting HTML documents in Haskell playgrounds](http://blog.haskellformac.com/blog/inspecting-html-documents-in-haskell-playgrounds)

### Visual Studio Code
* [VS CodeでHaskellの簡単な環境を作る](http://azaika.hateblo.jp/entry/2015/12/19/151554)
* [VisualStduioCodeでHaskell開発環境を整える](http://qiita.com/DUxCA/items/8e7a68ffee522bdd8918)
* [Haskero - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Vans.haskero)
* [Introducing Haskelly – Haskell extension for Visual Studio Code – Microsoft Faculty Connection](https://blogs.msdn.microsoft.com/uk_faculty_connection/2017/02/13/introducing-haskelly-extension-for-visual-studio-code/)
* [[Visual Studio Code][Haskell] VSCodeでHaskellの開発環境を整える - Qiita](http://qiita.com/koara-local/items/06d57fd7fe4adc72f2b6)
* [VS Code と haskell-ide-engine で Haskell 開発環境を構築する - Qiita](https://qiita.com/waddlaw/items/b83cd10311200095fe87)

### Yi
* [YiエディタでVimスタイルをベースに拡張設定する(1)](http://qiita.com/aiya000/items/376a2bed4ddd12433b31)
* [YiでEditorM aの状態を変更したい時はMonadEditor使えば](http://qiita.com/aiya000/items/f6893ec511977be28a9f)
* [Yiと7時間ずっと向き合い続けた僕が出したYiの設定方法](http://qiita.com/aiya000/items/5627f938e215fad156d3)
* [Yiエディタでtagsを読み込む](http://qiita.com/aiya000/items/01f03a203cbc702aff80)

### IntelliJ
* [IntelliJでHaskell](http://qiita.com/eielh/items/f121fbd2def8c887405f)
* [IntelliJ (with Stack) as Haskell IDE - YouTube](https://www.youtube.com/watch?v=KXd8mV7Vzhc)
* [IntelliJでHaskellを実行する（haskell stackプロジェクト） - Qiita](http://qiita.com/nwtgck/items/d64647c05a0ba52db63c)
* [HaskellをIntelliJで使えるようになりました！ - Qiita](http://qiita.com/v97ug/items/245faeb80abea19886e8)

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
* [Haskell-tools](http://haskelltools.org/)
* [Another Web-based Haskell IDE](http://jpmoresmau.blogspot.jp/2016/07/another-web-based-haskell-ide.html)
* [Tidalでライブコーディング! - セットアップ編](http://qiita.com/yoppa/items/41805cc6af62b1047a34)
* [transient-haskell/transient - Running example(s)](https://github.com/transient-haskell/transient/wiki/Running-example(s))
* [theam/haskell-do: The Haskell code editor focused on interactive development.](https://github.com/theam/haskell-do)
