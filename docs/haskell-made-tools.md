## Selected tools made by Haskell for general purpose

### Basilica
* [Basilica - Haskell製のモダンなフォーラム](http://www.moongift.jp/2016/01/basilica-haskell%E8%A3%BD%E3%81%AE%E3%83%A2%E3%83%80%E3%83%B3%E3%81%AA%E3%83%95%E3%82%A9%E3%83%BC%E3%83%A9%E3%83%A0/)
- [ianthehenry/basilica: It's kinda like a forum.](https://github.com/ianthehenry/basilica)

### bench
* ベンチマークをとれるコマンド。繰り返し実行や結果のHTMLへの出力などができる。
- [Gabriel439/bench: Command-line benchmark tool](https://github.com/Gabriel439/bench)

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

### broch
- [tekul/broch: OAuth2 and OpenID Connect in Haskell](https://github.com/tekul/broch)

### brok
* [smallhadroncollider/brok: Find broken links in text documents](https://github.com/smallhadroncollider/brok)

### cabasa
* [bradrn/cabasa: A generic 2D cellular automaton simulator](https://github.com/bradrn/cabasa#readme)

### cgrep
* プログラムの構造を意識したgrepが出来るコマンド
- [awgn/cgrep: Cgrep: a context-aware grep for source codes](https://github.com/awgn/cgrep)

### cherchord
* [Aearnus/cherchord: 🎸 Find chords for any string instrument quicky & easily 🎸](https://github.com/Aearnus/cherchord)

### cmt
* [smallhadroncollider/cmt: Write consistent git commit messages](https://github.com/smallhadroncollider/cmt)

### command-line-tweeter
* [vmchale/command-line-tweeter: Tweets in from a pipe](https://github.com/vmchale/command-line-tweeter)

### curl-runnings
* [aviaviavi/curl-runnings: A framework for writing declarative, curl based tests for your APIs](https://github.com/aviaviavi/curl-runnings)

### Elm
- [elm](http://elm-lang.org/)
- [elm+electronで気楽に始めるFRP](http://qiita.com/yasuyuky/items/e28106e3dd7fed17d50f)
- [Building elm with stack](http://therning.org/magnus/posts/2015-10-13-000-building-elm-with-stack.html)
- [Elm開発環境について - Qiita](https://qiita.com/sand/items/9afaef65c6f1ebf453da)
- [elm/compiler: Compiler for Elm, a functional language for reliable webapps.](https://github.com/elm/compiler/)

### erd
- テキストからER図に変換するツール
- [BurntSushi/erd: Translates a plain text description of a relational database schema to a graphical entity-relationship diagram.](https://github.com/BurntSushi/erd)

### gitit
- [jgm/gitit: A wiki using HAppS, pandoc, and git](https://github.com/jgm/gitit)
- [Haskell製のWikiエンジン·Gitit MOONGIFT](https://www.moongift.jp/2010/01/gitit/)

### git-annex
* gitでバイナリファイル等を効率的に扱うツール
* <https://git-annex.branchable.com/>
- [peti/git-annex](https://github.com/peti/git-annex)

### gifcurry
- 動画からテキスト入りのgifを生成するGUIツール。CLIもある
- [lettier/gifcurry: 😎 The open-source, Haskell-built video editor for GIF makers.](https://github.com/lettier/gifcurry)

```bash
$ gifcurry_cli ./in.mp4 ./out.gif start_second duration quality 'Optional top text.' 'Optional bottom text.'
```

### gipeda
- [nomeata/gipeda: Git Performance Dashboard](https://github.com/nomeata/gipeda)

### github-backup
- Githubのレポジトリのバックアップを取ってくれるコマンド
- > including branches, tags, other forks, issues, comments, wikis, milestones, pull requests, watchers, and stars.
- [github-backup: backs up everything github knows about a repository, to the repository](https://hackage.haskell.org/package/github-backup)

### givegif
- コマンドライン上でgifを探して表示できるコマンド
- [passy/givegif: GIFs on the command line](https://github.com/passy/givegif)

### franz
- [単純で頑強なメッセージングシステム、franz - モナドとわたしとコモナド](http://fumieval.hatenablog.com/entry/2019/09/07/115437)
- [tsurucapital/franz: Append-only list persist & query system](https://github.com/tsurucapital/franz)

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
* [Hakyllで前後の記事へのリンクを設置する - Qiita](https://qiita.com/mod_poppo/items/e0f981f3a2cb04dc6e3f)
* [How to Hakyll CircleCI 2.0 @ Nazarii Bardiuk's blog](https://nazarii.bardiuk.com/posts/hakyll-circle.html)
* [Taeer Bar-Yam - Hakyll + TikZ](https://taeer.bar-yam.me/blog/posts/hakyll-tikz/)
* [Hakyll Pt. 3 – Generating RSS and Atom XML Feeds](https://robertwpearce.com/hakyll-pt-3-generating-rss-and-atom-xml-feeds.html)
* [Hakyll Pt. 4 – Copying Static Files For Your Build](https://robertwpearce.com/hakyll-pt-4-copying-static-files-for-your-build.html)
* [tejasbubane/hakyll-css: Drop-in CSS themes for syntax highlighting in Hakyll](https://github.com/tejasbubane/hakyll-css)
* [Dependent Types Blog - Creating Blog with Hakyll, Nix and Deploying on Amazon EC2](http://deptype.com/posts/2019-02-21-create-blog-nix-hakyll-aws.html)
* [spam - Haskell, Hakyll and Github Actions](https://vllmrt.net/spam/hakyll-github-actions-pages.html)

### hawk
* Haskellの文法が使えるawkのようなコマンド
- [gelisam/hawk: Haskell text processor for the command-line](https://github.com/gelisam/hawk)
* [手軽にHaskell できる hawk が楽しい](http://blog.eiel.info/blog/2014/02/14/hawk/)
* Related tools
  - [mitchellwrosen/h](https://github.com/mitchellwrosen/h)
  - [tanakh/hoe: Haskell One-liner Evaluator](https://github.com/tanakh/hoe)
  - [lukasmartinelli/hwk: A Haskell based awk and sed alternative](https://github.com/lukasmartinelli/hwk)

```bash
$ cat /etc/passwd | hawk -d: -m 'head'
root
```

### hoodle
- [wavewave/hoodle: hoodle : A pen notetaking program written in haskell](https://github.com/wavewave/hoodle)

### hsp
- [bawolk/hsp: Haskell command line text stream processor](https://github.com/bawolk/hsp#readme)

### identicon
* Flexible generation of identicons in Haskell
- [mrkkrp/identicon: Flexible generation of identicons in Haskell](https://github.com/mrkkrp/identicon)
* [The Identicon package](https://mrkkrp.github.io/posts/the-identicon-package.html)

### KOMPOSITION
- [owickstrom/komposition: The video editor built for screencasters](https://github.com/owickstrom/komposition)
* [Komposition](https://owickstrom.github.io/komposition/)
* [Writing a Screencast Video Editor in Haskell \| Func Da World](https://wickstrom.tech/programming/2018/10/26/writing-a-screencast-video-editor-in-haskell.html)

### lamdu
- [Lamdu - 次世代のライブコーディング環境 MOONGIFT](https://www.moongift.jp/2019/07/lamdu-%E6%AC%A1%E4%B8%96%E4%BB%A3%E3%81%AE%E3%83%A9%E3%82%A4%E3%83%96%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E7%92%B0%E5%A2%83/)
- [lamdu/lamdu: lamdu - towards the next generation IDE](https://github.com/lamdu/lamdu)

### life-sync
- [kowainik/life-sync: 🔄 Synchronize personal configs across multiple machines](https://github.com/kowainik/life-sync)

### link
- [abhin4v/link: A simple multithreaded chat server in haskell](https://github.com/abhin4v/link)

### markov-bot
* 過去のツイートを学習してボットを作ってくれるツール
- [ryota-ka/markov-bot: Generates random sentences from your tweet history using the Markov chain, and post them into Twitter.](https://github.com/ryota-ka/markov-bot)

### Movie Monad
- [lettier/movie-monad: A free and simple to use video player made with Haskell.](https://github.com/lettier/movie-monad)
- [Let's make a GTK Video Player with Haskell](https://lettier.github.io/posts/2017-08-30-haskell-gtk-video-player.html)

### ngless
- [luispedro/ngless: NGLess: NGS with less work](https://github.com/luispedro/ngless)

### Pandoc
* ドキュメントを別の形式のドキュメントに変換できるコマンド
* とにかくサポートしている形式が多い
* <http://pandoc.org/>
* [Convert documents (doc, odt, html, epub, etc.) in Shell with pandoc](https://www.youtube.com/watch?v=BkTYHChkDoE)

### PaperBoy
- [2mol/pboy: a small .pdf management tool with a command-line UI](https://github.com/2mol/pboy)

> This tool helps renaming those files without too much fuss. It will rename/move documents to a specified folder, and it even gives some filename suggestions by looking at the file content and the pdf metadata.

### par
* Linuxのコマンドを簡単に並列実行させられるコマンド
- [k-bx/par: Small utility that runs multiple computations in parallel](https://github.com/k-bx/par)

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

### patat
- [jaspervdj/patat: Terminal-based presentations using Pandoc](https://github.com/jaspervdj/patat)

### Pomohoro
- [kqr/Pomohoro: [DONE] A small pomodoro timer based on CLI usage and FreeDesktop.org notifications.](https://github.com/kqr/Pomohoro)

### PostgREST
* PostgreSQLの機能をREST APIに変換してくれるツール
* [PostgREST Workshop](http://begriffs.com/posts/2015-10-02-postgrest-workshop.html)
* [Declaring RESTful APIs with PostgREST](http://begriffs.com/posts/2014-12-30-intro-to-postgrest.html)
* [A Tour of PostgREST](http://begriffs.com/posts/2016-03-20-postgrest-tour.html)

### PureScript
- <http://www.purescript.org/>
- [purescript/purescript: A strongly-typed language that compiles to JavaScript](https://github.com/purescript/purescript)
- [potomak/haskell-player: A terminal music player based on afplay](https://github.com/potomak/haskell-player)
- [goldenlynx/jsn: An absolutely simple & terse CLI app to manipulate JSON data](https://github.com/goldenlynx/jsn)
- [andyarvanitis/pure11](https://github.com/andyarvanitis/pure11)
- [Stack Safety for Free](http://functorial.com/stack-safety-for-free/index.pdf)
- [slamdata/purescript-halogen](https://github.com/slamdata/purescript-halogen)
- [実例によるPureScript](http://hiruberuto.bitbucket.org/purescript/)
- [purescript/purescript-free](https://github.com/purescript/purescript-free)
- [Flare](http://david-peter.de/articles/flare/)
- [Pursuit](http://pursuit.purescript.org/)
- [PureScript for the Haskeller](http://www.arow.info/blog/posts/2015-12-17-purescript-intro.html)
- [kRITZCREEK/psc-ide](https://github.com/kRITZCREEK/psc-ide)
- [Type-safe client-server communication with PureScript](http://frigoeu.github.io/phantomtypes.html)
- [【翻訳】PureScriptとHaskellの違い　＋α - Qiita](https://qiita.com/hiruberuto/items/3eb21ef81b3d9ac5a930)
- [PureScript got field names right, Haskell got them wrong](https://tek.brick.do/ff3d4f73-3748-4953-b9dc-4ba8b5237315)

### qhs
* [CSVファイルをSQLのクエリで集計できるqコマンドをHaskellで実装してみました！](http://itchyny.hatenablog.com/entry/2016/08/08/100000)
- [itchyny/qhs: SQL queries on CSV and TSV files](https://github.com/itchyny/qhs)

### vado
* [chrisdone/vado: A web browser engine written in Haskell](https://github.com/chrisdone/vado)

### vgrep
- [fmthoma/vgrep: A pager for grep](https://github.com/fmthoma/vgrep)

### vimus
- Music Player Daemon のクライアント
- [vimus/vimus: An MPD client with vim-like key bindings, written in Haskell](https://github.com/vimus/vimus)

![](https://i.gyazo.com/de527076bbfd5bcfd3424f0028e58316.png)

### Scarf
- [Scarf](https://scarf.sh/)
- [aviaviavi/scarf: Helping open-source developers distribute and monetize their software](https://github.com/aviaviavi/scarf)

### ShellCheck
- シェルスクリプトのバグなどをチェックしてくれるツール
- [ShellCheck](http://www.shellcheck.net/)
- [Lessons learned from writing ShellCheck, GitHub’s now most starred Haskell project – Vidar's Blog](https://www.vidarholen.net/contents/blog/?p=859)
- [koalaman/shellcheck: ShellCheck, a static analysis tool for shell scripts](https://github.com/koalaman/shellcheck)

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

### Simula
- [SimulaVR/Simula: Linux VR Desktop](https://github.com/SimulaVR/Simula)

### SitePipe
- [ChrisPenner/SitePipe: Yet another static site generator - non-opinionated, value-level. Less magic == easier to understand](https://github.com/chrispenner/sitepipe)

### Slick
* [ChrisPenner/Slick: Static site generator build on Shake configured in Haskell](https://github.com/ChrisPenner/slick)

### Smopeck
- [autotaker/smopeck: Mocking and Specification Tool for API prototyping](https://github.com/autotaker/smopeck)
* [REST APIを簡単にMockできるツールSmopeckの紹介 - Qiita](https://qiita.com/autotaker1984/items/23b8ee186145b0489897)

### sprinkles
- [tdammers/sprinkles: Web Development without programming](https://github.com/tdammers/sprinkles)

### Stutter
- [nmattia/stutter: CLI string generator based on regex-like operations](https://github.com/nmattia/stutter)
- [Stutter: the anti-grep](http://www.nmattia.com/posts/2017-05-01-release-stutter.html)

### Super User Spark
- [NorfairKing/super-user-spark: A safe way to never worry about your beautifully configured system again. (NO LONGER MAINTAINED. Use Nixos instead.)](https://github.com/NorfairKing/super-user-spark)

### tamarin-prover
- [Tamarin Prover](https://tamarin-prover.github.io/)
- [tamarin-prover/tamarin-prover: Main source code repository of the Tamarin prover for security protocol verification.](https://github.com/tamarin-prover/tamarin-prover)

### Tart
* [Tart - なんと！ターミナル上で動作するドローアプリ MOONGIFT](https://www.moongift.jp/2019/03/tart-%e3%81%aa%e3%82%93%e3%81%a8%ef%bc%81%e3%82%bf%e3%83%bc%e3%83%9f%e3%83%8a%e3%83%ab%e4%b8%8a%e3%81%a7%e5%8b%95%e4%bd%9c%e3%81%99%e3%82%8b%e3%83%89%e3%83%ad%e3%83%bc%e3%82%a2%e3%83%97%e3%83%aa/)
- [jtdaugherty/tart: Tart - draw ASCII art in the terminal with your mouse!](https://github.com/jtdaugherty/tart)

### Taskell
- [smallhadroncollider/taskell: Command-line Kanban board/task manager with support for Trello boards and GitHub projects](https://github.com/smallhadroncollider/taskell)

### TaskLite
* [Introduction - TaskLite Documentation](http://tasklite.ad-si.com/)
- [ad-si/TaskLite: The CLI task manager for power users](https://github.com/ad-si/TaskLite)

### tomlcheck
* [vmchale/tomlcheck](https://github.com/vmchale/tomlcheck) - A syntax checker for TOML files

### unused
- [joshuaclayton/unused: A command line tool to identify unused code.](https://github.com/joshuaclayton/unused)

### waymonad
* [waymonad/waymonad: A wayland compositor based on ideas from and inspired by xmonad](https://github.com/waymonad/waymonad)

### wire
* [Wire · The most secure collaboration platform](https://wire.com/en/)
* [wireapp/wire-server: 🇪🇺 Wire back-end services](https://github.com/wireapp/wire-server)

### wstunnel
- [erebe/wstunnel: Tunneling over websocket protocol - Static binary available](https://github.com/erebe/wstunnel)

### xmonad
- X11のウィンドウマネージャ
- [xmonad \| the tiling window manager that rocks](https://xmonad.org/)
- [xmonad.hsでモジュール分割をする](http://qiita.com/aiya000/items/be55d899e9c92dd57c35)

### Yi
- Haskellでカスタマイズできるエディタ
- [yi-editor/yi: The Haskell-Scriptable Editor](https://github.com/yi-editor/yi)

### Other tools for general purpose
Most of the stuff here is already unmaintained, but as a tool implementation it would be helpful.

- [jxv/animate-frames: 🎞️ Sprite frames to spritesheet & metadata](https://github.com/jxv/animate-frames)
- [Tarrasch/antigen-hs: A fast zsh plugin manager](https://github.com/Tarrasch/antigen-hs)
- [Blogdown - Simple Markup for Blogging](https://blogdown.io/)
- [ollef/braces-be-gone: Get those pesky braces out of your face](https://github.com/ollef/braces-be-gone)
- [master-q/carettah: Carettah := Make your presentation more fun!](https://github.com/master-q/carettah)
- [xtendo-org/chips: A fast, lightweight, and concurrent plugin manager for the fish shell, written in Haskell](https://github.com/xtendo-org/chips)
- [pasqu4le/clifm: Command Line Interface File Manager](https://github.com/pasqu4le/clifm)
- [silky/clone-all: clone all the github repositories of a particular user.](https://github.com/silky/clone-all)
- [GaloisInc/ec2-unikernel: Tool for uploading unikernels into EC2](https://github.com/GaloisInc/ec2-unikernel)
- [RKlompUU/FPSheet: FPSheet: A Spreadsheet program with Haskell as the scripting language](https://github.com/RKlompUU/fpsheet)
- [arow-oss/goat-guardian: Reverse proxy that handles authentication](https://github.com/arow-oss/goat-guardian)
- [nandor/hcraft: Haskell clone of a certain game](https://github.com/nandor/hcraft)
- [chrisdone/hell](https://github.com/chrisdone/hell)
- [sgillis/hidenticon: CLI tool to generate GitHub-like identicons](https://github.com/sgillis/hidenticon)
- [mbid/hmemo: Spaced repetition of flash cards on the command line](https://github.com/mbid/hmemo)
- [jhickner/hobbes: A cross-platform file activity monitor](https://github.com/jhickner/hobbes)
- [fokot/howerpoint](https://github.com/fokot/howerpoint) - forget about Powerpoint!!
- [lambdacms/lambdacms: A CMS in Haskell using Yesod: performant, developer friendly & type safe.](https://github.com/lambdacms/lambdacms)
- [ledger/ledger4: A rewrite of Ledger's core mathematical concepts in Haskell](https://github.com/ledger/ledger4)
- [agustinmista/mdviewer: Minimalistic Markdown viewer/converter with built-in Css stylesheets support.](https://github.com/agustinmista/mdviewer)
- [shnarazk/mios: A SAT solver written in Haskell.](https://github.com/shnarazk/mios)
- [rdnetto/powerline-hs: A lightning fast reimplementation of the Powerline prompt generator in Haskell.](https://github.com/rdnetto/powerline-hs)
- [Hector A. Escobedo / ptcpd · GitLab](https://gitgud.io/hae/ptcpd) - Plain Text Chat Protocol daemon
- [ChrisPenner/rasa: Extremely modular text editor built in Haskell](https://github.com/ChrisPenner/rasa)
- [tokiwoousaka/ttask: This is task management tool for yourself, that inspired by scrum.](https://github.com/tokiwoousaka/ttask)
- [ananthakumaran/webify: webfont generator - converts ttf to woff, eot and svg](https://github.com/ananthakumaran/webify)
- [skedgeme/wrecker: An HTTP Benchmarking Library](https://github.com/skedgeme/wrecker)

## Tools for Haskell
### argon
* Monitor cyclomatic complexity in Haskell programs
* <https://github.com/rubik/argon>

### describe
* [commercialhaskell/describe: Describe Haskell code in GHCi](https://github.com/commercialhaskell/describe)

### ekg
* Remote monitoring of running processes over HTTP
* <https://github.com/tibbe/ekg>

### grammar-inference
* Learning rigid grammars in Haskell.
* <https://github.com/ayberkt/grammar-inference>

### haddocset
* Generate docset of Dash by Haddock haskell documentation tool
* <https://github.com/philopon/haddocset>

### Hadui
* [complyue/hadui: Web front UI for interactive Haskell stack projects](https://github.com/complyue/hadui)

### haskell-tools
* Developer tools for Haskell
* <https://github.com/nboldi/haskell-tools>

### hdevtools
* Persistent GHC-powered background server for FAST haskell development tools
* <https://github.com/hdevtools/hdevtools>

### hgrep
* [Announcing hgrep](http://teh.id.au/posts/2017/10/03/announcing-hgrep/index.html)

### hpack
* hpack: An alternative format for Haskell packages
* <https://github.com/sol/hpack>
* <https://github.com/yamadapc/hpack-convert>

### hsdev
* Haskell development tool
* <https://github.com/mvoidex/hsdev>

### hs-snowtify
* [aiya000/hs-snowtify: snowtify send your result of `stack build` (`stack test`) to notify-daemon :dog2:](https://github.com/aiya000/hs-snowtify)
* [Haskellのstack-build（test）の結果をGUI通知するsnowtify作ったよ - Qiita](http://qiita.com/aiya000/items/3ea64089d58956bde3e9)

### hyper-haskell
* [HeinrichApfelmus/hyper-haskell: The strongly hyped Haskell interpreter.](https://github.com/HeinrichApfelmus/hyper-haskell)

### import-bikeshedder
* Haskellのimport文を並べ替えるコマンド
* <https://github.com/fumieval/import-bikeshedder>

### mega-sdist
* [mega-sdist: the mega repo helper](https://www.yesodweb.com/blog/2017/11/mega-sdist)

### require
* [require - Scrap your qualified import clutter](https://theam.github.io/require/index.html)
- [theam/require: 🔌 Scrap your qualified import clutter](https://github.com/theam/require)

### self-extract
* [brandonchinn178/self-extract: A Haskell library to make self-extracting executables](https://github.com/brandonchinn178/self-extract)

### staversion
* [staversion: What version is the package X in stackage lts-Y.ZZ?](https://hackage.haskell.org/package/staversion)
* [stackageの特定のresolverに上がっているパッケージバージョンを調べるツール](http://d.hatena.ne.jp/debug-ito/20161016/1476603444)

### summoner
* [kowainik/summoner: 🔮 🔧 Tool for scaffolding batteries-included production-level Haskell projects](https://github.com/kowainik/summoner)

### tintin
> A softer alternative to Haddock

* [tintin - Home](https://theam.github.io/tintin/)


### thank-you-stars
* [y-taka-23/thank-you-stars](https://github.com/y-taka-23/thank-you-stars) - Give your dependencies stars on GitHub!
* [Haskell ライブラリにスターを送るツール thank-you-stars を作ってみました](http://ccvanishing.hateblo.jp/entry/2017/09/14/150435)

### ThreadScope
- [haskell/ThreadScope: A graphical tool for profiling parallel Haskell programs](https://github.com/haskell/ThreadScope)

### trackit
* ファイルやディレクトリの変更を検知してコマンドを実行してくれるツール
* [trackit: A command-line tool for live monitoring](https://hackage.haskell.org/package/trackit)

```shell
$ trackit --watch-dir=. --command="ls --color"
```

### typebot
* 関数の型を答えてくれるSlack bot
* <https://github.com/thoughtbot/typebot>

### reserve
* Universal and robust reloading for Haskell web applications
* <https://github.com/sol/reserve>

### vabal
* [vabal/vabal: cabal in Valle](https://github.com/vabal/vabal)

### webshow
* [chrisdone/webshow: Show programming language printed values in a web UI](https://github.com/chrisdone/webshow)

### Weeder
* [ndmitchell/weeder: Detect dead exports or package imports](https://github.com/ndmitchell/weeder)

## ライブラリなど
* [turtle](http://hackage.haskell.org/package/turtle)
* [The haskeline package](https://hackage.haskell.org/package/haskeline)
* [The vty package](https://hackage.haskell.org/package/vty)
* [jtdaugherty/brick](https://github.com/jtdaugherty/brick)
  * [Brick TUI Library(@brick_haskell)さん \| Twitter](https://twitter.com/brick_haskell/)
* Git operations in haskell - [hit](https://hackage.haskell.org/package/hit)
* [Handling Control-C in Haskell](http://neilmitchell.blogspot.jp/2015/05/handling-control-c-in-haskell.html)
* [Haskell でシグナルで中断された時にクリーンナップ処理をしてから終了する](http://qiita.com/shuhei/items/d0113e5c2ae592f1181e)
* Terminal-based graphing via ANSI and Unicode - [BlackBrane/ansigraph](https://github.com/BlackBrane/ansigraph)
* A reliable at-least-once job queue built on top of redis. - [The hworker package](http://hackage.haskell.org/package/hworker)
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
* [WRITING A SIMPLE CLI-TOOL IN HASKELL](http://maex.me/tech/2016/06/25/writing-a-simple-cli-tool-in-haskell.html)
* [Teleport - How to write a small, useful command line application in Haskell](http://bollu.github.io/teleport/)
* [Haskus](http://www.haskus.org/system/) - The long-term aim is to provide a full Haskell user-space environment on top of the Linux kernel.
* [SamuelSchlesinger/gross: Easy terminal interfaces, emulating gloss](https://github.com/SamuelSchlesinger/gross)
* [HaskellでShellみたいなことをやるのに便利なライブラリの紹介 - Qiita](http://qiita.com/t10471/items/70af33487ece780b6c10)
* [Combining Brick and Haskeline](https://rootmos.github.io/main/2017/08/31/combining-brick-and-haskeline.html)
* [Introduction to Brick](https://samtay.github.io/articles/brick.html)
* [Faster command line tools with Haskell](https://codygman.github.io/posts/2017-07-30-faster-command-line-tools-with-haskell.html)
* [Project: Making Google Tasks Better](https://haskell.fun/2017/09/14/project-making-google-tasks-better/)
* [Compose :: Melbourne 2017 - Andrew McCluskey - Your first Haskell app - YouTube](https://www.youtube.com/watch?v=lUibiSzIgG4&feature=youtu.be)
* [Haskellでコマンドライン引数を受け取る - Qiita](https://qiita.com/taashi/items/d48e6cb875930538a302)
* [functor.tokyo -- Termonad: A Terminal Emulator Configurable in Haskell](https://functor.tokyo/blog/2018-11-15-termonad)
* [Haskell で Ctrl-C を制御する（Windows） - 趣味はデバッグ……](http://kakkun61.hatenablog.com/entry/2019/01/25/Haskell_%E3%81%A7_Ctrl-C_%E3%82%92%E5%88%B6%E5%BE%A1%E3%81%99%E3%82%8B%EF%BC%88Windows%EF%BC%89)
* [Haskellで作るCLI - ログミーTech](https://logmi.jp/tech/articles/320831)
* [Anardil — Haskell coreutils - cat](https://anardil.net/2019/haskell-coreutils-cat.html)
* [termbox-banana: reactive-banana + termbox](https://hackage.haskell.org/package/termbox-banana)
* [Patterns of Functional Programming: Functional Core - Imperative Shell](http://www.javiercasas.com/articles/functional-programming-patterns-functional-core-imperative-shell)
* [blog/Haskell static code analysis software.md at master · razvan-flavius-panda/blog](https://github.com/razvan-flavius-panda/blog/blob/master/Haskell%20static%20code%20analysis%20software.md#haskell-static-code-analysis-software)
* [Haskell で簡単な CLI ツールを作ってみる - Qiita](https://qiita.com/Hexirp/items/3b46fe38bed365124e8d)
* [System.FSNotifyでファイルイベントが一切検出されない時 - Qiita](https://qiita.com/Cj-bc/items/3afecf148f3fa37cbb72)
* [yesodweb/Shelly.hs](https://github.com/yesodweb/Shelly.hs)

### オプションパーサー
* [HaskellのSystem.Console.ParseArgs](http://yu-i9.hatenablog.com/entry/2014/08/29/135253)
* [zalora/getopt-generics](https://github.com/zalora/getopt-generics)
* [Auto-generate a command line interface from a data type](http://www.haskellforall.com/2016/02/auto-generate-command-line-interface.html)
* [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative)
* [optparse-declarative: 宣言的な型レベルコマンドラインパーザー](http://qiita.com/tanakh/items/b6ea4c65d8ed511ac98d)
* [optparse-applicativeとoptparse-simple入門](http://qiita.com/Mizunashi_Mana/items/1ed25496d8e36a1c7f02)
* [optparse-applicative quick start](https://ro-che.info/articles/2016-12-30-optparse-applicative-quick-start)
* [GetOpt and extensible records](https://www.schoolofhaskell.com/user/fumieval/extensible/getopt-and-extensible-records)
* [Higher Kinded Option Parsing](https://chrispenner.ca/posts/hkd-options)
* [Writing Custom Optimization Passes :: Reasonably Polymorphic](https://reasonablypolymorphic.com/blog/writing-custom-optimizations/)

