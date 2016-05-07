### antigen-hs
* zsh のプラグインマネージャー
* <https://github.com/Tarrasch/antigen-hs>

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

### hobbes
* ファイルの変更を検知してくれるコマンド。Lunux, OS X, Windows対応
* <https://github.com/jhickner/hobbes>

```bash
# automatic GHC recompile when your source files change
$ hobbes "*.hs" | xargs -n1 ghc --make
```

### howerpoint
* ghciベースのプレゼンテーションツール
* <https://github.com/fokot/howerpoint>

### import-bikeshedder
* Haskellのimport文を並べ替えるコマンド
* <https://github.com/fumieval/import-bikeshedder>

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

### typebot
* 関数の型を答えてくれるSlack bot
* <https://github.com/thoughtbot/typebot>

### xmonad
* X11のウィンドウマネージャ
* <http://xmonad.org/>

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

###オプションパーサー
* [HaskellのSystem.Console.ParseArgs](http://yu-i9.hatenablog.com/entry/2014/08/29/135253)
* [zalora/getopt-generics](https://github.com/zalora/getopt-generics)
* [Auto-generate a command line interface from a data type](http://www.haskellforall.com/2016/02/auto-generate-command-line-interface.html)
* [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative)
* [optparse-declarative: 宣言的な型レベルコマンドラインパーザー](http://qiita.com/tanakh/items/b6ea4c65d8ed511ac98d)
