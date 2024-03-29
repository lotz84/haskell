[Haskell 2010 言語報告書](http://www.sampou.org/haskell/haskell2010-report-htja/)
[Why Haskell - why GitHub use Haskell for their newly released Semantic package](https://github.com/github/semantic/blob/master/docs/why-haskell.md)

* [STANDARDIZED LADDER OF FUNCTIONAL PROGRAMMING](https://pbs.twimg.com/media/CydL5EYUsAAI-61.jpg:large)
* [Anatomy of a Haskell-based Application](http://abailly.github.io/posts/cm-arch-design.html)
* [Tracking Changes to Base](https://www.fosskers.ca/en/blog/base)
* [How to contribute to the Haskell ecosystem](http://www.haskellforall.com/2015/12/how-to-contribute-to-haskell-ecosystem.html)
* [Worst practices should be hard](http://www.haskellforall.com/2016/04/worst-practices-should-be-hard.html)
* [Simple Unique IP System Script](http://www.latermuse.com/static/ron-simpleuniqueipsystemscript.html)
* [Measuring Software Fragility](http://softwaresimply.blogspot.jp/2016/08/measuring-software-fragility.html)
* [The Four Flaws of Haskell](http://neilmitchell.blogspot.jp/2016/08/the-four-flaws-of-haskell.html)
* [Practical Haskell: Simple File Mirror (Part 1)](https://www.fpcomplete.com/blog/2016/09/practical-haskell-simple-file-mirror-1)
* [Practical Haskell: Simple File Mirror (Part 2)](https://www.fpcomplete.com/blog/2016/09/practical-haskell-simple-file-mirror-2)
* [Monitoring the popularity and the development of GitHub projects](http://gittrends.io/#/explore?page=1&language=Haskell&domain=All&growth=All) - GitHub上の活発なHaskellのプロジェクトを表示
* [Actually Using Haskell!](http://www.oredev.org/2017/sessions/actually-using-haskell)
* [What Makes Haskell Unique](https://www.snoyman.com/blog/2017/12/what-makes-haskell-unique)
* [Infinite Negative Utility: Some Notes About How I Write Haskell](https://blog.infinitenegativeutility.com/2017/12/some-notes-about-how-i-write-haskell)
* [An opinionated guide to Haskell in 2018](https://lexi-lambda.github.io/blog/2018/02/10/an-opinionated-guide-to-haskell-in-2018/)
* [Haskell package checklist \| Write better Haskell packages](http://taylor.fausak.me/haskell-package-checklist/)
* [Haskell Bazaar](https://www.haskellbazaar.com/#/)
* [Great moments in Haskell history](https://typeclasses.com/timeline)
* [Real World Haskell — Monday Morning Haskell](https://mmhaskell.com/real-world)

## Preludeを置き換える
### Preludeの問題点
* `base`は最小限に作られているためよく使う`directory`や`transformers`といったライブラリが入っていない
* そのため、初学者には目的に対してどのライブラリが標準的に使われているのかが判断しにくい
* さらによく使うライブラリは毎回依存関係を記述する必要があるため冗長だし、面倒さにより自分で再実装してしまう危険もある

### RIO
Stack開発の知見が集められたライブラリ

* よく設計され信頼できるライブラリを集めている
* 使い勝手の良い`Prelude`の置き換えである
* プロダウション品質のHaskellコードを書くためのベストプラクティスを集めたもの

という特徴がある。

* [The RIO Monad](https://www.fpcomplete.com/blog/2017/07/the-rio-monad)
* [commercialhaskell/rio: A standard library for Haskell](https://github.com/commercialhaskell/rio)
* [rio ライブラリを試す その１](https://matsubara0507.github.io/posts/2018-04-13-try-rio-1.html)
* [Evaluating RIO \| Freckle Education](https://tech.freckle.com/2019/04/16/evaluating-rio/)
* [Porting to Rio](https://www.fosskers.ca/blog/rio-en.html)

### その他のライブラリ
* [The rebase package](http://hackage.haskell.org/package/rebase)
* [nikita-volkov/rerebase](https://github.com/nikita-volkov/rerebase)
* [The base-prelude package](https://hackage.haskell.org/package/base-prelude)
* [haskell-foundation/foundation](https://github.com/haskell-foundation/foundation)
* [serokell/universum: Prelude used in @Serokell](https://github.com/serokell/universum#universum)
* [safe-prelude: a thought experiment - Michael Snoyman's blog](http://www.snoyman.com/blog/2017/01/safe-prelude-a-thought-experiment)

## Docker
* [haskell - Docker Hub](https://hub.docker.com/_/haskell)
* [fpco/stack-build - Docker Hub](https://hub.docker.com/r/fpco/stack-build)
* [fpco/stack-build-small - Docker Hub](https://hub.docker.com/r/fpco/stack-build-small)
* [Docker + Haskell の Hello Worldビルド - Qiita](https://qiita.com/dd0125/items/a141000ead36b3823fde)
* [How I deploy Haskell Code](http://www.alfredodinapoli.com/posts/2015-11-03-how-i-deploy-haskell-code.html)
* [Kubernetes for Haskell Services](https://www.fpcomplete.com/blog/2015/11/kubernetes)
* [Dev and Deploy Haskell on Docker](http://begriffs.com/posts/2015-08-11-dev-deploy-haskell-docker.html)
* [The split-image approach to building minimal runtime Docker images](https://www.fpcomplete.com/blog/2015/12/docker-split-images)
* [STATIC BINARIES FOR HASKELL: A CONVOLUTED APPROACH](https://vadosware.io/post/static-binaries-for-haskell-a-convoluted-approach/)
* [Building Haskell Apps with Docker](https://www.fpcomplete.com/blog/2017/12/building-haskell-apps-with-docker)
* [Static compilation with Stack](https://www.fpcomplete.com/blog/2016/10/static-compilation-with-stack)
* [HaskellでもGoみたいにシングルバイナリでアプリケーションをデプロイしたい - Qiita](https://qiita.com/t10471/items/4afa598e1be5d6c7cc1f)
* [Haskellで超簡単にシングルバイナリを作る - Qiita](https://qiita.com/lambda_funtaro/items/5ac47f83616f8c07d4db)
* [fugue/fregot: Fugue Rego Toolkit](https://github.com/fugue/fregot)
* [NoRedInk – Tuning Haskell RTS for Kubernetes, Part 1](https://blog.noredink.com/post/666020751977168896/tuning-haskell-rts-for-kubernetes-part-1)

### multi-stage builds
* [Haskell on Docker で Portable CLI を作ろう - Qiita](https://qiita.com/algas/items/fde155abbc9d8ae3f8c9)
* [Shrinking Haskell Docker images using multi-stage builds \| Codurance \| Craft at Heart \| London \| Barcelona](https://codurance.com/2017/12/21/docker-multistage-haskell/)
* [Oleg's gists - Multi-stage docker build of Haskell webapp](http://oleg.fi/gists/posts/2019-07-04-docker-haskell-example.html)

### Hadolint
* [hadolint/hadolint: Dockerfile linter, validate inline bash, written in Haskell](https://github.com/hadolint/hadolint)
* [DockerfileをLintするにはhadolintが良さそう](http://blog.stormcat.io/entry/docker-hadolint)
* [「hadolint」にシバかれながら美しいDockerfileを書き上げる - 憂鬱な世界にネコパンチ！](https://nekopunch.hatenablog.com/entry/2018/10/08/213513)
* [beijaflor-io/haskell-language-dockerfile: Haskell Dockerfile linter, parser, pretty-printer and EDSL, forked from https://github.com/lukasmartinelli/hadolint.](https://github.com/beijaflor-io/haskell-language-dockerfile)
* [GitHub Actions と hadolint を組み合わせて Dockerfile の静的解析を自動化しよう！ - kakakakakku blog](https://kakakakakku.hatenablog.com/entry/2020/07/08/004407)

### Docker Engine API
* [denibertovic/docker-hs: A Haskell library for the Docker Engine API](https://github.com/denibertovic/docker-hs)
* [Deni Bertovic :: Haskell and Docker: Down the rabbit hole and back](https://denibertovic.com/posts/haskell-and-docker-down-the-rabbit-hole-and-back/)

## ビルドツール
### Shake
* [Shake](http://shakebuild.com/)
  * [Applicative vs Monadic build systems](http://neilmitchell.blogspot.co.uk/2014/07/applicative-vs-monadic-build-systems.html)
  * [Defining your own build system With Shake](http://ndmitchell.com/downloads/slides-defining_your_own_build_system_with_shake-09_oct_2015.pdf)
* [Shaking up the IDE](https://4ta.uk/p/shaking-up-the-ide)
* [New Shake with better wildcard patterns](http://neilmitchell.blogspot.jp/2016/04/new-shake-with-better-wildcard-patterns.html)
* [24 days of Hackage, 2015: day 22: Shake: the dynamic build system](http://conscientiousprogrammer.com/blog/2015/12/22/24-days-of-hackage-2015-day-22-shake-the-dynamic-build-system/)
* [Upgrading Shake :: Capital Match Tech Blog](https://tech-blog.capital-match.com/posts/5-upgrading-shake.html)
* [Neil Mitchell's Haskell Blog: GHC Rebuild Times - Shake profiling](https://neilmitchell.blogspot.com/2019/03/ghc-rebuild-times-shake-profiling.html)
* [ghc-shake: Reimplementing ghc -​-make](http://blog.ezyang.com/2016/01/ghc-shake-reimplementing-ghc-make/)
* [Non-recursive Make Considered Harmful](http://research.microsoft.com/en-us/um/people/simonpj/papers/ghc-shake/ghc-shake.pdf)
* [CS Syd - Research as a build system with Shake](https://cs-syd.eu/posts/2018-05-28-research-as-a-build-system)
* [Build Systems à la Carte](https://www.microsoft.com/en-us/research/uploads/prod/2018/03/build-systems.pdf)
* [shake-plus: Re-export of Shake using well-typed paths and ReaderT.](https://hackage.haskell.org/package/shake-plus)
* [shake + lucid + hint で静的ウェブサイト生成 - 趣味はデバッグ……](https://kakkun61.hatenablog.com/entry/2020/09/26/shake_%2B_lucid_%2B_hint_%E3%81%A7%E9%9D%99%E7%9A%84%E3%82%A6%E3%82%A7%E3%83%96%E3%82%B5%E3%82%A4%E3%83%88%E7%94%9F%E6%88%90)

### Hadrian
* [snowleopard/hadrian: Hadrian: a new build system for the Glasgow Haskell Compiler. Now merged into the GHC tree!](https://github.com/snowleopard/hadrian)
* [HSoC — Hadrian Optimisation: First GHC Contribution (Update 4)](https://medium.com/@ratherforky/hsoc-hadrian-optimisation-update-4-47ab2b62b15a)
* [Well-Typed - The Haskell Consultants: Exploring Cloud Builds in Hadrian](https://well-typed.com/blog/2019/08/exploring-cloud-builds-in-hadrian/)
* [HSoC — Hadrian Optimisation: Profiling and getting ahead of Shake changes (Update 5)](https://medium.com/@ratherforky/hsoc-hadrian-optimisation-profiling-and-getting-ahead-of-shake-changes-update-5-6b4038ed18aa)
* [HSoC — Hadrian Optimisation: Final Report - James Foster - Medium](https://medium.com/@ratherforky/hsoc-hadrian-optimisation-final-report-7c6aa1132dcd)
* [You should try Hadrian \| no time](https://blogs.ncl.ac.uk/andreymokhov/you-should-try-hadrian/)

## CI/CD
* [ZERO TO CONTINUOUS INTEGRATED TESTING A HASKELL PROJECT WITH GITLAB](https://vadosware.io/post/zero-to-continuous-integrated-testing-a-haskell-project-with-gitlab/)
* [CONTINUOUS INTEGRATION TO CONTINOUS DELIVERY HASKELL PROJECT WITH GITLAB](https://vadosware.io/post/continuous-integration-to-continous-delivery-haskell-project-with-gitlab/)
* [harendra-kumar/packcheck: Universal build and CI testing for Haskell packages](https://github.com/harendra-kumar/packcheck)
* [The hapistrano package](https://hackage.haskell.org/package/hapistrano)
* [Hapistrano's new features](https://stackbuilders.com/news/hapistrano-s-new-features)
* [HaskellとHspecでBuddy CI - Qiita](https://qiita.com/jdoiWork/items/1cc09a1d375a038ac400)
* [Dead simple cross-platform GitHub Actions for Haskell](https://kodimensional.dev/github-actions)

### Travis CI
* [hvr/multi-ghc-travis](https://github.com/hvr/multi-ghc-travis)
* [phadej/travis-meta-yaml](https://github.com/phadej/travis-meta-yaml)
* [Haskell on Travis CI](http://justus.science/blog/2015/09/04/travis.html)
* [Using Stack on Travis CI](https://www.fpcomplete.com/blog/2015/12/stack-travis)
* [Updated Haskell Travis config](https://www.fpcomplete.com/blog/2016/02/updated-haskell-travis-config)
* [guillaume-nargeot/hpc-coveralls](https://github.com/guillaume-nargeot/hpc-coveralls)
* [Deploying Haskell: Painless CI/CD with Travis, Docker and Digitalocean (or any linux VM)](https://www.dev-log.me/Deploying_Haskell:_Painless_CICD_with_Travis,_Docker_and_Digital_Ocean_(or_any_linux_VM)/)
* [Dead simple Haskell Travis settings for cabal and stack](https://chshersh.github.io/posts/2019-02-25-haskell-travis)
* [CI で Haskell Stack の Docker Integration するために](https://matsubara0507.github.io/posts/2019-09-21-stack-build-image.html)

### Circle CI
* [言語ガイド：Haskell - CircleCI](https://circleci.com/docs/ja/2.0/language-haskell/)
* [Stackで管理しているHaskellのプロジェクトをCircleCIでビルドする](http://qiita.com/fujimura/items/b619e0a4ca2028b0eb03)
* [Circle CI configuration with yesod (haskell) backend and javascript frontend - Rafał Łasocha](https://rafal.lasocha.net/blog/Circle-ci-configuration-with-yesod-haskell-and-javascript-frontend)
* [CircleCI2.0でHaskellのテストを実行する – PSYENCE:MEDIA](https://tech.recruit-mp.co.jp/dev-tools/post-13981/)
* [Circle CI 2.0 の設定](https://haskell.e-bigmoon.com/posts/2018/07-21-circleci-2.html)
* [Building a Blog Part 5: Continuous integration with CircleCI](https://gaumala.com/posts/2019-01-22-continuous-integration-with-circle-ci.html)

### Bazel
* [Tweag I/O - Build large polyglot projects with Bazel... now with Haskell support](https://www.tweag.io/posts/2018-02-28-bazel-haskell.html)
* [Tweag I/O - Nix + Bazel = fully reproducible, incremental builds](https://www.tweag.io/posts/2018-03-15-bazel-nix.html)
* [adventures in uncertainty: Bazel, Haskell, and Build-System Joy](https://blog.sumtypeofway.com/posts/bazel-haskell-build-system-joy.html)
* [Haskell Stack プロジェクトを Bazel でビルドしてみる](https://matsubara0507.github.io/posts/2020-12-02-build-haskell-stack-project-using-bazel.html)

## Workflow
* [tweag/funflow: Functional workflows](https://github.com/tweag/funflow)
* [Tweag I/O - Funflow: typed resumable workflows](https://www.tweag.io/posts/2018-04-25-funflow.html)
* [FUNFLOW EXAMPLE: EMULATING MAKE](https://www.tweag.io/posts/2018-07-10-funflow-make.html)
* [mpickering - Using funflow to cache a nix based workflow](http://mpickering.github.io//posts/2018-09-12-funflow-nix.html)

## Music
* [spell-music/csound-expression: Haskell Framework for Electronic Music](https://github.com/spell-music/csound-expression)
* [Algorithmic, hyperreal, broken techno.](http://www.pledgemusic.com/projects/spicule/)
* [The Music Suite](http://music-suite.github.io/docs/ref/)
* [Paul Chiusano on csound-expression](https://www.youtube.com/watch?v=O0oBXcwGZQY&feature=youtu.be)
* [MUSIC FROM NOISE](http://blog.prakashvenkat.com/)
* [Composing (Music) in Haskell - Stuart Popejoy](https://www.youtube.com/watch?v=Jmw6LLNQQfs)
* [Euterpea - A Haskell library for music creation](http://www.euterpea.com/)
* [The haskore package](https://hackage.haskell.org/package/haskore)
* [Adding PortAudio Support to HfM (Haskell for Mac)](https://medium.com/@BusFactor1/adding-portaudio-support-to-hfm-haskell-for-mac-cd2f398492f8#.9iuzw3rl5)
* [COMBINATORIAL MUSIC THEORY](http://andrewduncan.net/cmt/)
* [Analysis of musical structures: an approach utilising monadic parser combinators](http://theses.gla.ac.uk/2353/)
* [Algorithmic Compositional Techniques Developed for "Pleonid"](http://slpopejoy.github.io/posts/Pleonid.html)
* [mrkkrp/flac](https://github.com/mrkkrp/flac) - Complete high-level Haskell binding to libFLAC
* [Haskellでの 音楽表現 - Qiita](http://qiita.com/nobkz/items/ca095ea3ae9e2be9f8ce)
* [Modeling Music](http://reasonablypolymorphic.com/blog/modeling-music)
* [Functional Works - Music, Haskell... and Westeros](https://functional.works-hub.com/blog/Music-Haskell...-and-Westeros)
* [karya - overview.md –](http://ofb.net/~elaforge/karya/doc/overview.md.html)
* [Tidal (Haskell DSL) in action at GitHub Universe 2018 : haskell](https://www.reddit.com/r/haskell/comments/aiekrg/tidal_haskell_dsl_in_action_at_github_universe/)
* [Interesting Music in Four Lines of Code – Donya Quick's Website](http://donyaquick.com/interesting-music-in-four-lines-of-code/)
* [TydalCycles TIPS パート1「乱数を用いる」 - Qiita](https://qiita.com/ibuibu69/items/80f5732b1803d6c7dc1c)
* [TydalCycles TIPS パート2「乱数で自動作曲する」 - Qiita](https://qiita.com/ibuibu69/items/add531f26880b874ee00)
* [Haskellでスクラッチから作曲してみた - Qiita](https://qiita.com/sparklingbaby/items/02b88ade2fb83104826e)
* [【TidalCycles】ライブコーディングによる作曲のすすめ - Qiita](https://qiita.com/s2hap/items/620082b82a4bbe475823)

----

* [dcfl is a parallelized constraint solving library for Haskell.](http://poincare.github.io/DCFL/)
* [Lazy Functional State Threads](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.144.2237&rep=rep1&type=pdf)
* [How to make your Haskell code more readable to non-Haskell programmers](http://www.haskellforall.com/2015/09/how-to-make-your-haskell-code-more.html)
* [2D Contouring](http://www.mattkeeter.com/projects/contours/)
* [mrkkrp/htaglib](https://github.com/mrkkrp/htaglib)
* [DDCSF/ddc](https://github.com/DDCSF/ddc)
* [Ling - High level system programming [32c3]](https://www.youtube.com/watch?v=dagxIy4ZNSQ)
* [np/ling](https://github.com/np/ling)
* [Haskell Meets the Central Dogma](http://savinaroja.github.io/2016/01/11/haskell-meets-the-central-dogma/)
* [typed-wire/typed-wire](https://github.com/typed-wire/typed-wire)
* [justinethier/husk-scheme](https://github.com/justinethier/husk-scheme)
* [wireapp/cryptobox-haskell](https://github.com/wireapp/cryptobox-haskell)
* [Controlling Fusion In Haskell](http://jyp.github.io/posts/controlled-fusion.html)
* [Composing Network Operating Systems](https://www.youtube.com/watch?v=uXt4a_46qZ0)
* [hopper-lang/hopper](https://github.com/hopper-lang/hopper)
* [Haskell: mistakes I made](https://jaspervdj.be/posts/2016-04-11-haskell-mistakes-i-made.html)
* [SAW - The Software Analysis Workbench](http://saw.galois.com/index.html)
* [HIPERFIT/futhark](HIPERFIT/futhark)
* [J for Haskell Programmers](http://crypto.stanford.edu/~blynn/haskell/jfh.html)
* [The Disciplined Disciple Compiler (DDC)](http://disciple.ouroborus.net/)
* [FOMObot Will Help With Your Slack FOMO](https://robots.thoughtbot.com/fomobot-will-help-with-your-slack-fomo)
* [egison/egison](https://github.com/egison/egison)
* video data sharing library - [databrary/databrary](https://github.com/databrary/databrary)
* [v3: The Vision, The Plan](http://uhsure.com/halvm3.html)
* [GaloisInc/HaLVM](https://github.com/GaloisInc/HaLVM)
* [The HaLVM Status Report, Issue 1](http://uhsure.com/halvm-status1.html)
* [Hierarchy of documentation dysfunction](http://blog.fightingtanukis.com/posts/2016-05-23-documentation-hierarchy.html)
* [kaizhang/SciFlow](https://github.com/kaizhang/SciFlow)
* [When Haskell is faster than C](http://paulspontifications.blogspot.jp/2013/01/when-haskell-is-faster-than-c.html)
* [phadej/existential-constraint.hs](https://gist.github.com/phadej/29335981507d81b4b2f219961772de25)
* [sdiehl/protolude](https://github.com/sdiehl/protolude)
* [The Haskell School of Music](http://haskell.cs.yale.edu/wp-content/uploads/2015/03/HSoM.pdf)
* [Destroy All Ifs — A Perspective from Functional Programming](http://degoes.net/articles/destroy-all-ifs)
* [Pointless Haskell](http://pointless-haskell.tumblr.com/)
* [Overture: A Haskell Prelude](https://medium.com/@pthomson/overture-a-haskell-prelude-bc94a948febf#.q48h1mzes)
* [シェル芸とHaskellの対応を考える](https://blog.ueda.asia/?p=2644)
* [willdonnelly/dyre](https://github.com/willdonnelly/dyre) - A Dynamic Reconfiguration Library for Haskell Programs
* [Thoughts on Haskell](http://get-finch.com/2016/09/26/thoughts_on_haskell.html)
* [Getting audio from Youtube channels in the easiest way possible using Haskell](http://qiita.com/kimagure/items/0a2f3d60789c646e4426)
* [A toy Mathematica interpreter in Haskell](http://community.wolfram.com/groups/-/m/t/943405)
* [λ抽象(無名関数) を SKI コンビネータに展開するトランスレータを書いた](http://qiita.com/todays-mitsui/items/39ca5ee274213471796c)
* [Using Haskell to Find Unused Spring MVC Code](https://tech.small-improvements.com/2016/11/01/using-haskell-to-find-unused-spring-mvc-code/)
* [Designing APIs for Extensibility](http://www.snoyman.com/blog/2016/11/designing-apis-for-extensibility)
* [Functional Programmers Paris - Building a language, in Haskell, with an LLVM backend](https://www.youtube.com/watch?v=I51TRpl1qic)
* [Git Internals With Haskell](https://www.youtube.com/watch?v=wsNnP3we_R4)
* [Parse and generate Rocket League replays with Haskell](http://taylor.fausak.me/2016/11/15/parse-and-generate-rocket-league-replays-with-haskell/)
* [silky/literate-readme](https://github.com/silky/literate-readme) - README files used to be able to lie. Now they can't! Woo!
* [Haskell Documentation, 2016 Update](http://www.snoyman.com/blog/2016/11/haskell-documentation-2016-update)
* [Slack BOTから始めるHaskell](http://qiita.com/xorphitus/items/e952b27a37d8aae7d9a8)
* [Automatically export Haskell modules](http://taylor.fausak.me/2016/12/30/automatically-export-haskell-modules/)
* [rgleichman/glance - A visual Haskell](https://github.com/rgleichman/glance)
* [erebe/greenclip](https://github.com/erebe/greenclip)
* [Haskell on Bash/WSL – Windows Command Line Tools For Developers](https://blogs.msdn.microsoft.com/commandline/2017/02/09/haskell-on-bashwsl/)
* [Type driven configuration management with Propellor - YouTube](https://www.youtube.com/watch?v=kzXXcr8TyJY)
* [The typed-process library](https://www.fpcomplete.com/blog/2017/02/typed-process)
* [HaskellにおけるConfigurations Problemを解決する - m2ymの雑記帳](http://cx4a.org/posts/2014-06-03-solve-the-configurations-problem-for-haskell.html)
* [Automating static analysis for Haskell projects.](http://lwm.github.io/haskell-static/)
* [BOB 2017 - Andres Löh: Write one program, get two (or three, or many) - YouTube](https://www.youtube.com/watch?v=w43kve1zeoI)
* [Trouble with Tribbles \| Maths, Stats & Functional Programming](https://idontgetoutmuch.wordpress.com/2017/04/18/trouble-with-tribbles/)
* [Lost in Technopolis](http://newartisans.com/2017/04/haskell-and-z3/)
* [TerrorJack/nodejs-interop](https://github.com/TerrorJack/nodejs-interop) - Execute Node.js scripts in Haskell.
* [Using Servant to orchestrate LXD containers](https://deliquus.com/posts/2017-10-02-using-servant-to-orchestrate-lxd-containers.html)
* [Hotswapping Haskell · Simon Marlow](http://simonmar.github.io/posts/2017-10-17-hotswapping-haskell.html)
* [Marwes/haskell-compiler: A mostly functional haskell compiler written in rust](https://github.com/Marwes/haskell-compiler)
* [Compose :: Melbourne 2017 - Jurriaan Hage - Domain-Specific Type Error Diagnosis in GHC - YouTube](https://www.youtube.com/watch?v=GbCfmnTmQDc&feature=youtu.be)
* [Simon Peyton Jones Getting from A to B fast route finding on slow computers](https://www.youtube.com/watch?v=L1XDdy-hOH8)
* [Anatomy of a Haskell-based Application, Revisited](https://tech-blog.capital-match.com/posts/3-anatomy-of-haskell-web-app.html)
* [ゲーム販売webアプリケーションSYAKERAKEを支える技術,HaskellとYesodで作られています - ncaq](https://www.ncaq.net/2017/12/03/00/00/00/)
* [Transient: Full Algebraic and monadic composability by Alberto Gómez Corona](https://www.youtube.com/watch?v=wqfEX1big4o)
  * [transient-haskell/transient](https://github.com/transient-haskell/transient)
* [Growing a software architecture with types](http://ocramz.github.io/haskell/2017/11/30/growing-software-architecture.html)
* [Simon Peyton Jones Getting from A to B fast route finding on slow computers - YouTube](https://www.youtube.com/watch?v=L1XDdy-hOH8)
* [FunctionalWorks](https://functional.works-hub.com/learn/Functional-Programming-Jargon)
* [やる気の出ない計算機科学シリーズ その1 初めてのFormura - Qiita](https://qiita.com/hrontan/items/ae8b3d5f8e999525f4b9)
* [パス名がShift_JISで格納されたzipファイルの展開ツールをHaskellで書いた話 - Qiita](https://qiita.com/cobodo/items/a41fa118ec878c8aa606)
* [Anatomy of a Haskell-based Application, Revisited :: Capital Match Tech Blog](https://tech-blog.capital-match.com/posts/3-anatomy-of-haskell-web-app.html)
* [A Tour of Go in Haskellを作ったのと、GoとHaskellの比較 - syocy’s diary](http://syocy.hatenablog.com/entry/a-tour-of-go-in-haskell)
* [HaskellのABC(Haskell Advent Calendar 6th) - モナドとわたしとコモナド](http://fumieval.hatenablog.com/entry/2017/12/19/203500)
* [Weakly Typed Haskell](https://www.fpcomplete.com/blog/2018/01/weakly-typed-haskell?utm_campaign=Service%20-%20Haskell&utm_content=65146654&utm_medium=social&utm_source=twitter)
* [Professional Haskellers: What are your major pain points? : haskell](https://www.reddit.com/r/haskell/comments/7rwuxb/professional_haskellers_what_are_your_major_pain/)
* [GHC Infrastructure update - YouTube](https://www.youtube.com/watch?v=J-0W4nbBVjk&list=PLnqUlCo055hUyEP_fcuY0SQMzZp-kyWiD)
* [Benjamin Kovach - Generating artwork with Haskell](http://www.kovach.me/posts/2018-03-07-generating-art.html)
* [拡張可能タングルでDo記法レスプログラミング♪ (Haskell)](https://matsubara0507.github.io/posts/2018-02-22-fun-of-extensible-3.html)
* [[1803.06960] Ready, Set, Verify! Applying hs-to-coq to real-world Haskell code](https://arxiv.org/abs/1803.06960)
* [Haskellでコンパイル時に「(ファイル名):L(現在の行）」を埋め込む - Qiita](https://qiita.com/aiya000/items/7efdfd1102ffd5712422)
* [Nothing Unusual - Cloning FluxBB](https://siskam.link/2018-04-14-cloning-fluxbb.html)
* [New ICFP functional pearl on subtracting bijections | blog :: Brent -> [String]](https://byorgey.wordpress.com/2018/06/23/new-icfp-functional-pearl-on-subtracting-bijections/)
* [Redis Data Modeling with Rank 2 Types](https://identicalsnowflake.github.io/Rank2Modeling.html)
* [Coercions and Roles for Dummies :: Reasonably Polymorphic](http://reasonablypolymorphic.com/blog/roles/)
* [Some History of Functional Programming Languages](https://www.cs.kent.ac.uk/people/staff/dat/tfp12/tfp12.pdf)
* [Haskellでオンラインジャッジに取り組むときの入出力（前編：標準入力の受け方）](https://qiita.com/TTsurutani/items/26220ac2c184de774658)
* [Haskellでオンラインジャッジに取り組むときの入出力（後編：標準出力への出し方）](https://qiita.com/TTsurutani/items/42c5a1e00ef8036e8fcc)
* [Duckling (•ө•) を使って時間、日付抽出をしてみた！ - Qiita](https://qiita.com/reotasosan/items/f131f0e5eba5fbddc256)
* [「アンダースタンディング コンピュテーション」を Haskell でやってみた - Qiita](https://qiita.com/spinylobster/items/6323f2ad37cdd96da7be)
* [「サイゼリヤで1000円あれば最大何kcal摂れるのか」をSMTソルバー(Z3)で解いてみた。 - Qiita](https://qiita.com/tanakh/items/a1fb13f78e0576415de3)
* [Global Implicit Parameters – ( )](https://kcsongor.github.io/global-implicit-parameters/)
* [Tweag I/O - CPP considered harmful](https://www.tweag.io/posts/2019-06-27-cpp-considered-harmful.html)
* [Lessons learned while writing a Haskell application • gvolpe's blog](https://gvolpe.github.io/blog/lessons-learned-while-writing-a-haskell-app/)
* [Tweag I/O - Revelations from repetition: Source code headers in Haskell and Python](https://www.tweag.io/posts/2019-07-17-codestatistics.html)
* [Haskellで学ぶフローネットワーク入門 - Qiita](https://qiita.com/ogata-k/items/2d16d67e4a11eacddc49)
* [Simple Haskell](https://www.simplehaskell.org/)
* [Haskell vs OCaml](https://markkarpov.com/post/haskell-vs-ocaml.html)
* [Haskell〇〇多すぎ問題 - LugendrePublic](https://scrapbox.io/LugendrePublic/Haskell%E3%80%87%E3%80%87%E5%A4%9A%E3%81%99%E3%81%8E%E5%95%8F%E9%A1%8C)
* [Haskell For a New Decade](http://www.stephendiehl.com/posts/decade.html)
* [Haskell with UTF-8](https://serokell.io/blog/haskell-with-utf8)
* [A Telegram bot in Haskell on Amazon Lambda – Blog – Joachim Breitner's Homepage](https://www.joachim-breitner.de/blog/770-A_Telegram_bot_in_Haskell_on_Amazon_Lambda)
* [CS Syd - How to deal with money in software](https://cs-syd.eu/posts/2020-07-28-how-to-deal-with-money-in-software)
* [Haskeller competency matrix](https://gist.github.com/graninas/833a9ff306338aefec7e543100c16ea1)
* [Solving text adventure games via symbolic execution (1 August 2020)](https://gergo.erdi.hu/blog/2020-08-01-solving_text_adventure_games_via_symbolic_execution/)
* [adventures in uncertainty: Existential Haskell](https://blog.sumtypeofway.com/posts/existential-haskell.html)
* [obsidiansystems/haveibeenpwned: Haskell library that uses HIBP to evaluate passwords](https://github.com/obsidiansystems/haveibeenpwned)
* [Separate Your Views; Reify Your Reasoning :: Reasonably Polymorphic](https://reasonablypolymorphic.com/blog/separate-your-views-reify-your-reasoning/)
* [Haskell for all: Module organization guidelines for Haskell projects](https://www.haskellforall.com/2021/05/module-organization-guidelines-for.html)
* [Blockly for Haskell](http://ymir.eng.kagawa-u.ac.jp/~sano/haskell.html)
* [Static analysis using Haskell and Datalog](https://luctielen.com/posts/static_analysis_using_haskell_and_datalog/)
* [CS SYD - The undefined trick](https://cs-syd.eu/posts/2021-09-10-undefined-trick?source=reddit)
* [Announcing Evoke, a GHC plugin for deriving type class instances quickly · taylor.fausak.me](https://taylor.fausak.me/2021/09/10/evoke/)