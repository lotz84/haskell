* [Complete interactive development program for Haskell - chrisdone/intero](https://github.com/chrisdone/intero)

----

### antigen-hs
* zsh のプラグインマネージャー
* <https://github.com/Tarrasch/antigen-hs>

### Basilica
* [Basilica - Haskell製のモダンなフォーラム](http://www.moongift.jp/2016/01/basilica-haskell%E8%A3%BD%E3%81%AE%E3%83%A2%E3%83%80%E3%83%B3%E3%81%AA%E3%83%95%E3%82%A9%E3%83%BC%E3%83%A9%E3%83%A0/)
* <https://github.com/ianthehenry/basilica>

### bench
* ベンチマークをとれるコマンド。繰り返し実行や結果のHTMLへの出力などができる。
* <https://github.com/Gabriel439/bench>

```bash
$ bench 'sleep 1'  # Don't forget to quote the command line
benchmarking sleep 1
time                 1.003 s    (1.002 s .. 1.003 s)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 1.003 s    (1.003 s .. 1.003 s)
std dev              92.92 μs   (0.0 s .. 101.8 μs)
variance introduced by outliers: 19% (moderately inflated)

$ bench true
benchmarking true
time                 410.3 μs   (382.3 μs .. 443.3 μs)
                     0.974 R²   (0.961 R² .. 0.987 R²)
mean                 420.7 μs   (406.8 μs .. 435.7 μs)
std dev              47.69 μs   (40.09 μs .. 57.91 μs)
variance introduced by outliers: 81% (severely inflated)
```

### cgrep
* プログラムの構造を意識したgrepが出来るコマンド
* <https://github.com/awgn/cgrep>

### chips
* fish shell のプラグインマネージャー
* <https://github.com/kinoru/chips>

### Ec2-unikernel
* Tool for uploading unikernels into EC2
* [Ec2-unikernel: One step unikernel -> Amazon EC2 AMI](https://devel.unikernel.org/t/ec2-unikernel-one-step-unikernel-amazon-ec2-ami/167)

### Elm
* [elm](http://elm-lang.org/)
* [elm+electronで気楽に始めるFRP](http://qiita.com/yasuyuky/items/e28106e3dd7fed17d50f)
* [Building elm with stack](http://therning.org/magnus/posts/2015-10-13-000-building-elm-with-stack.html)

### git-annex
* gitでバイナリファイル等を効率的に扱うツール
* <https://git-annex.branchable.com/>

### gifcurry
* 動画からテキスト入りのgifを生成するGUIツール。CLIもある
* <https://github.com/lettier/gifcurry>

```bash
$ gifcurry_cli ./in.mp4 ./out.gif start_second duration quality 'Optional top text.' 'Optional bottom text.'
```

### gipeda
* Git Performance Dashboard
* <https://github.com/nomeata/gipeda>

### github-backup
* Githubのレポジトリのバックアップを取ってくれるコマンド
* `including branches, tags, other forks, issues, comments, wikis, milestones, pull requests, watchers, and stars.`
* [joeyh/github-backup](https://github.com/joeyh/github-backup)

### givegif
* コマンドライン上でgifを探して表示できるコマンド
* <https://github.com/passy/givegif>

### Hakyll
* 静的サイトジェネレータ
* <https://jaspervdj.be/hakyll/>
* [Static Generation with Haskell](http://two-wrongs.com/static-generation-with-haskell)
* [Hakyll](http://jaspervdj.be/hakyll/)
* [Hakyllを使ってGitHub Pagesを作成して、そのソースも管理して、Travis CIで自動デプロイする。](http://imokuri123.com/blog/2015/04/create-github-pages-with-hakyll.html)
* [Hakyllでページング](http://qiita.com/hiratara/items/714d890e1b363f06c2d3)
* [Hakyllでブログを作る(実践編)](https://imokuri123.com/blog/2015/12/how-to-create-blog-with-hakyll-part1.html)
* [Create a static site with Hakyll, Github and Travis CI](http://begriffs.com/posts/2014-08-12-create-static-site-with-hakyll-github.html)
* [Jekyll Style URLs with Hakyll](http://aherrmann.github.io/programming/2016/01/31/jekyll-style-urls-with-hakyll/)
* [Serving a Hakyll site with Warp/Wai](https://chromabits.com/posts/2016/02/15/serving-hakyll-site-with-warp/)
* [Hakyll で日本語文中の余分な空白を削除する](http://qiita.com/pecorarista/items/2abad96e21857d43a04c)
* [Blog Rewrite with Hakyll and Purescript](https://blog.jle.im/entry/blog-rewrite-with-hakyll-and-purescript.html)
* [Compiling SCSS and JavaScript in Hakyll](https://codetalk.io/posts/2016-05-10-compiling-scss-and-js-in-hakyll.html)

### haskell-player
* A terminal music player based on afplay
* <https://github.com/potomak/haskell-player>

### hawk
* Haskellの文法が使えるawkのようなコマンド
* <https://github.com/gelisam/hawk>
* [手軽にHaskell できる hawk が楽しい](http://blog.eiel.info/blog/2014/02/14/hawk/)
* Related tools
  * [lukasmartinelli/hwk](https://github.com/lukasmartinelli/hwk)
  * [tanakh/hoe](https://github.com/tanakh/hoe)

```bash
$ cat /etc/passwd | hawk -d: -m 'head'
root
```

### hell
* Haskellの式を直接評価することができるShell
* <https://github.com/chrisdone/hell>

```bash
Welcome to Hell!
chris:~/$ ls
Backups  Desktop    Downloads  Emacs  Mail  Pictures  Renoise  Samples
Books    Documents  Dropbox    Flash  Org   Projects  Repos    Scripts
chris:~/$ 2 * 3
forall a. GHC.Num.Num a => a
6
```

### hidenticon
* Githubのようなidenticonを作成するコマンド
* <https://github.com/sgillis/hidenticon>

```bash
$ hidenticon --hash 3238947aafb9293801decf1230329 --size 128 -o 3238947aafb9293801decf1230329.png
```

![](https://i.gyazo.com/2d6a9761a6697609bc4c26e348b54ae9.png)

### hledger
* 会計管理ツール
* <http://hledger.org/>
* [ledger/ledger4](https://github.com/ledger/ledger4) - A rewrite of Ledger's core mathematical concepts in Haskell

### hobbes
* ファイルの変更を検知してくれるコマンド。Lunux, OS X, Windows対応
* <https://github.com/jhickner/hobbes>

```bash
# automatic GHC recompile when your source files change
$ hobbes "*.hs" | xargs -n1 ghc --make
```

### hoodle
* Hoodle is a pen notetaking program developed in Haskell using gtk2hs
* [hoodle - free pen note taking program](http://ianwookim.org/hoodle/)

### howerpoint
* ghciベースのプレゼンテーションツール
* <https://github.com/fokot/howerpoint>

### identicon
* Flexible generation of identicons in Haskell
* <https://github.com/mrkkrp/identicon>
* [The Identicon package](https://mrkkrp.github.io/posts/the-identicon-package.html)

### LambdaCms
* Haskell製のCMS
* [LambdaCms](http://lambdacms.org/)

### lamdu
* lamdu - towards the next generation IDE
* <https://github.com/lamdu/lamdu>

### link
* A simple multithreded chat server in haskell
* <https://github.com/abhin4v/link>

### markov-bot
* 過去のツイートを学習してボットを作ってくれるツール
* <https://github.com/ryota-ka/markov-bot>

### Pandoc
* ドキュメントを別の形式のドキュメントに変換できるコマンド
* とにかくサポートしている形式が多い
* <http://pandoc.org/>

### par
* Linuxのコマンドを簡単に並列実行させられるコマンド
* [k-bx/par](https://github.com/k-bx/par)

```bash
$ par "echo foo; sleep 1; echo foo; sleep 1; echo foo" "echo bar; sleep 1; echo bar; sleep 1; echo bar" && echo "success"
foo
bar
bar
foo
bar
foo
success
```

### PostgREST
* PostgreSQLの機能をREST APIに変換してくれるツール
* [PostgREST Workshop](http://begriffs.com/posts/2015-10-02-postgrest-workshop.html)
* [Declaring RESTful APIs with PostgREST](http://begriffs.com/posts/2014-12-30-intro-to-postgrest.html)
* [A Tour of PostgREST](http://begriffs.com/posts/2016-03-20-postgrest-tour.html)

### PureScript
* <http://www.purescript.org/>
* [andyarvanitis/pure11](https://github.com/andyarvanitis/pure11)
* [Stack Safety for Free](http://functorial.com/stack-safety-for-free/index.pdf)
* [slamdata/purescript-halogen](https://github.com/slamdata/purescript-halogen)
* [実例によるPureScript](http://hiruberuto.bitbucket.org/purescript/)
* [purescript/purescript-free](https://github.com/purescript/purescript-free)
* [Flare](http://david-peter.de/articles/flare/)
* [Pursuit](http://pursuit.purescript.org/)
* [PureScript for the Haskeller](http://www.arow.info/blog/posts/2015-12-17-purescript-intro.html)
* [kRITZCREEK/psc-ide](https://github.com/kRITZCREEK/psc-ide)
* [Type-safe client-server communication with PureScript](http://frigoeu.github.io/phantomtypes.html)

### vimus
* Music Player Daemon のクライアント
* <https://github.com/vimus/vimus>

![](https://i.gyazo.com/de527076bbfd5bcfd3424f0028e58316.png)

### ShellCheck
* シェルスクリプトのバグなどをチェックしてくれるツール
* [ShellCheck](http://www.shellcheck.net/)

```bash
$ shellcheck myscript
 
Line 3:
for f in $(ls *.m3u)
         ^-- SC2045: Iterating over ls output is fragile. Use globs.
              ^-- SC2035: Use ./*glob* or -- *glob* so names with dashes won't become options.
 
Line 5:
  grep -qi hq.*mp3 $f \
           ^-- SC2062: Quote the grep pattern so the shell won't interpret it.
                   ^-- SC2086: Double quote to prevent globbing and word splitting.
 
Line 6:
    && echo -e 'Playlist $f contains a HQ file in mp3 format' 
            ^-- SC2039: In POSIX sh, echo flags are undefined.
               ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.
```

### Super User Spark
* [NorfairKing/super-user-spark](https://github.com/NorfairKing/super-user-spark)

### tamarin-prover
* Main repository of the Tamarin prover for security protocol verification.
* <https://github.com/tamarin-prover/tamarin-prover>

### ThreadScope
* A graphical tool for profiling parallel Haskell programs
* <https://github.com/haskell/ThreadScope>

### ttask
* スクラムに則ったCLIのタスク管理ツール
* <https://github.com/tokiwoousaka/ttask>

### unused
* A command line tool to identify unused code.
* <https://github.com/joshuaclayton/unused>

### webify
* webfont generator - converts ttf to woff, eot and svg
* <https://github.com/ananthakumaran/webify>

### xmonad
* X11のウィンドウマネージャ
* <http://xmonad.org/>

### Yi
- Haskellでカスタマイズできるエディタ
- <https://github.com/yi-editor/yi>

## Tools for Haskell
### argon
* Monitor cyclomatic complexity in Haskell programs
* <https://github.com/rubik/argon>

### ekg
* Remote monitoring of running processes over HTTP
* <https://github.com/tibbe/ekg>

### grammar-inference
* Learning rigid grammars in Haskell.
* <https://github.com/ayberkt/grammar-inference>

### haddocset
* Generate docset of Dash by Haddock haskell documentation tool
* <https://github.com/philopon/haddocset>

### haskell-tools
* Developer tools for Haskell
* <https://github.com/nboldi/haskell-tools>

### hdevtools
* Persistent GHC-powered background server for FAST haskell development tools
* <https://github.com/hdevtools/hdevtools>

### hpack
* hpack: An alternative format for Haskell packages
* <https://github.com/sol/hpack>

### hsdev
* Haskell development tool
* <https://github.com/mvoidex/hsdev>

### import-bikeshedder
* Haskellのimport文を並べ替えるコマンド
* <https://github.com/fumieval/import-bikeshedder>

### typebot
* 関数の型を答えてくれるSlack bot
* <https://github.com/thoughtbot/typebot>

### reserve
* Universal and robust reloading for Haskell web applications
* <https://github.com/sol/reserve>

## ライブラリなど
* [turtle](http://hackage.haskell.org/package/turtle)
* [The haskeline package](https://hackage.haskell.org/package/haskeline)
* [The vty package](https://hackage.haskell.org/package/vty)
* [jtdaugherty/brick](https://github.com/jtdaugherty/brick)
* Git operations in haskell - [hit](https://hackage.haskell.org/package/hit)
* [Handling Control-C in Haskell](http://neilmitchell.blogspot.jp/2015/05/handling-control-c-in-haskell.html)
* [Haskell でシグナルで中断された時にクリーンナップ処理をしてから終了する](http://qiita.com/shuhei/items/d0113e5c2ae592f1181e)
* Terminal-based graphing via ANSI and Unicode - [BlackBrane/ansigraph](https://github.com/BlackBrane/ansigraph)
* A reliable at-least-once job queue built on top of redis. - [The hworker package](http://hackage.haskell.org/package/hworker)
* EKG: Remote monitoring of running processes over HTTP - [tibbe/ekg](https://github.com/tibbe/ekg)
* [Record X11 window using ffmpeg](http://lpaste.net/145533)
* [fuse でオレオレファイルシステムを作ってみた (Haskell で)](http://www.techscore.com/blog/2015/12/08/fuse-%E3%81%A7%E3%82%AA%E3%83%AC%E3%82%AA%E3%83%AC%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E3%82%92%E4%BD%9C%E3%81%A3%E3%81%A6%E3%81%BF%E3%81%9F-haskell-%E3%81%A7/)
* [24 days of Hackage, 2015: day 17: ansi-wl-pprint: avoiding string hacking](http://conscientiousprogrammer.com/blog/2015/12/17/24-days-of-hackage-2015-day-17-ansi-wl-pprint-avoiding-string-hacking/)
* [haskellで周波数スペクトルを描画したはなし](http://cocu.hatenablog.com/entry/2016/02/11/190538)
* Create ctags compatible tags files for Haskell programs - [bitc/lushtags](https://github.com/bitc/lushtags)
* [SamuelSchlesinger/Quickterm](https://github.com/SamuelSchlesinger/Quickterm)
* [Haskellでインタプリタみたいなのを実装する時のBufferModeの事](http://yunomu.hatenablog.jp/entry/2012/02/13/215657)
* [A command-line benchmark tool](http://www.haskellforall.com/2016/05/a-command-line-benchmark-tool.html)
* [Haskeline](http://trac.haskell.org/haskeline)
* [A configuration loading scheme for tools in Haskell](http://cs-syd.eu/posts/2016-06-26-a-configuration-loading-scheme-for-tools-in-haskell.html)

###オプションパーサー
* [HaskellのSystem.Console.ParseArgs](http://yu-i9.hatenablog.com/entry/2014/08/29/135253)
* [zalora/getopt-generics](https://github.com/zalora/getopt-generics)
* [Auto-generate a command line interface from a data type](http://www.haskellforall.com/2016/02/auto-generate-command-line-interface.html)
* [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative)
* [optparse-declarative: 宣言的な型レベルコマンドラインパーザー](http://qiita.com/tanakh/items/b6ea4c65d8ed511ac98d)
