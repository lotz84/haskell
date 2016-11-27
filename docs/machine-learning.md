* [DataHaskell](https://datahaskell.github.io/)
* [DataHaskell's knowledge base](http://wiki.datahaskell.org/index.php/Main_Page)
* [mikeizbicki/HLearn](https://github.com/mikeizbicki/HLearn/)
  * [Haskellの機械学習ライブラリHLearn](http://qiita.com/nebutalab/items/680203ff3d84cde7c8db)
* [sarthakbagaria/has-sci](https://github.com/sarthakbagaria/has-sci)
* [Working with data in Haskell](https://www.fpcomplete.com/blog/2016/09/data-haskell)
* [bmsherman/haskell-matlab](https://github.com/bmsherman/haskell-matlab)
* [QLearn: A Haskell library for iterative Q-learning.](http://poincare.github.io/QLearn/)
* [Kalman filters and functional programming](http://www.johndcook.com/blog/2016/07/14/kalman-filters-and-functional-programming/)
* [bitemyapp/bloodhound](https://github.com/bitemyapp/bloodhound) - Haskell Elasticsearch client and query DSL
* [関数型言語Haskellを用いた役割指向エージェントベースシミュレーションシステムのプロトタイプ開発](http://repo.lib.hosei.ac.jp/handle/10114/11016)
* [HuwCampbell/grenade](https://github.com/HuwCampbell/grenade)
* [Get a Brain](http://www-cs-students.stanford.edu/~blynn//haskell/brain.html)
* [Frames: Data frames For working with tabular data files](http://hackage.haskell.org/package/Frames)
* [Fast Nearest Neighbor Queries in Haskell](https://izbicki.me/blog/fast-nearest-neighbor-queries-in-haskell.html)
* [Example: The K-Means Problem](http://chimera.labs.oreilly.com/books/1230000000929/ch03.html#sec_using-parlist)
* [Exploratory Haskell](http://www.parsonsmatt.org/2015/12/09/exploratory_haskell.html)
* [The Intersection of Machine Learning, Types and Testing](https://www.youtube.com/watch?v=czZ18YtZlaw)
* [Composing inference algorithms as program transformations](https://arxiv.org/abs/1603.01882)
* [Saulzar/Tensor.hs](https://gist.github.com/Saulzar/568665c16506cbe2068123350cee9904) - Attempts at static tensor dimensioning
* [repa](https://hackage.haskell.org/package/repa)
* [Scientific Computation and Functional Programming](https://karczmarczuk.users.greyc.fr/arpap/quantfun.pdf)
* [Markov Chains à la Carte](http://jtobin.ca/markov-chains-a-la-carte)
* [haskell-EM/Main.hs](https://github.com/akawashiro/haskell-EM/blob/master/Main.hs)
* [haskell-kalman-filter/Main.hs](https://github.com/akawashiro/haskell-kalman-filter/blob/master/Main.hs)
* [Tweag.io](http://www.tweag.io/)
* [Decision Trees Are Free Monads Over the Reader Functor](http://clathomasprime.github.io/hask/freeDecision)

## HaskellR
* [HaskellR](http://tweag.github.io/HaskellR/)
* [Programming R at native speed using Haskell](http://www.tweag.io/blog/programming-r-at-native-speed-using-haskell)
* [How to include R plots and diagrams in blog posts](http://www.corentindupont.info/blog/posts/Programming/2015-09-14-diagrams.html)

## IHaskell
* [iHaskellを試してみる](http://qiita.com/eielh/items/a35b3d51056c1031f4d0)
* [Install IHaskell on Ubuntu 14.04 with Stack](http://remusao.github.io/install-ihaskell-on-ubuntu-1404-with-stack.html)
* [IHaskell Online: Help Choose Demo Code Snippets!](http://www.reddit.com/r/haskell/comments/37uqqk/ihaskell_online_help_choose_demo_code_snippets/)
* [Demo of IHaskell Notebook](http://begriffs.com/posts/2016-01-20-ihaskell-notebook.html)

## 自然言語処理
* [Natural Language Processing for the Working Programmer](http://freecomputerbooks.com/books/nlpwp.pdf)
* [edit-distance: Levenshtein and restricted Damerau-Levenshtein edit distances](http://hackage.haskell.org/package/edit-distance)
* [colada: Colada implements incremental word class class induction using online LDA](https://hackage.haskell.org/package/colada)
* [chatter: A library of simple NLP algorithms.](https://hackage.haskell.org/package/chatter)
* [The Functional Morphology Library](http://www.cse.chalmers.se/alumni/markus/FM_Tech_Report.pdf)
* [aneksteind/hext](https://github.com/aneksteind/hext)

## FFT
* [Simple FFT in Haskell](https://ro-che.info/articles/2015-12-04-fft)
* [Testing FFT with R](https://ro-che.info/articles/2015-12-05-testing-fft)
* [conal/talk-2016-generic-fft](https://github.com/conal/talk-2016-generic-fft)

## 線形代数
* [linear](http://hackage.haskell.org/package/linear)
* [hmatrix](https://hackage.haskell.org/package/hmatrix)
  * [introduction to hmatrix](http://dis.um.es/~alberto/material/hmatrix.pdf)
* [Efficient Linear Algebra with Plover](http://begriffs.com/posts/2016-01-03-plover-linear-algebra.html)

## 確率
* [プログラミングのための確率統計 in Haskell](http://note.golden-lucky.net/2010/12/1-2-3-4-5-6-16-16-16-16-16-16-246-135.html)
* [random-fu](https://hackage.haskell.org/package/random-fu)
* [The generic-random library, part 1: simple generic Arbitrary instances](https://byorgey.wordpress.com/2016/09/20/the-generic-random-library-part-1-simple-generic-arbitrary-instances/)
* [Boltzmann sampling for generic Arbitrary instances](https://byorgey.wordpress.com/2016/03/23/boltzmann-sampling-for-generic-arbitrary-instances/)
* [Randomness in Haskell](http://jtobin.ca/randomness-in-haskell)
* [A Probabilistic Functional Programming Library for Haskell](https://web.engr.oregonstate.edu/~erwig/pfp/)

```hs
type Probability = Double
newtype Dist a = D {unD :: [(a,Probability)]}

instance Monad Dist where
  return x = D [(x,1)]
  (D d) >>= f = D [(y,q*p) | (x,p) <- d, (y,q) <- unD (f x)]
```
[FUNCTIONAL PEARLS: Probabilistic Functional Programming in Haskell](https://web.engr.oregonstate.edu/~erwig/papers/PFP_JFP06.pdf)

## 確率論的プログラミング
* [Probabilistic Programming](https://media.nips.cc/Conferences/2015/tutorialslides/wood-nips-probabilistic-programming-tutorial-2015.pdf)
* [adscib/monad-bayes](https://github.com/adscib/monad-bayes)
  * [Practical Probabilistic Programming with Monads](https://www.youtube.com/watch?v=hI0ajVy2xEk)
  * [Practical probabilistic programming with Monads](http://mlg.eng.cam.ac.uk/pub/pdf/SciGhaGor15.pdf)
* [A Simple Embedded Probabilistic Programming Language](https://medium.com/@jaredtobin/a-simple-embedded-probabilistic-programming-language-17bdaa08ed99#.tt9iikeo6)  
* Oleg Kiselyov and Chung-chieh Shan - [Embedded Probabilistic Programming](http://okmij.org/ftp/kakuritu/dsl-paper.pdf)
* [Learning Probabilistic Programs](http://arxiv.org/abs/1407.2646)
* Ken Friis Larsen - [Memory Efficient Implementation of Probability Monads](http://www.diku.dk/hjemmesider/ansatte/kflarsen/t/ProbMonad-unpublished.pdf)
* Frank Wood, Jan Willem van de Meent and Vikash Mansinghka - [A New Approach to Probabilistic Programming Inference](http://www.robots.ox.ac.uk/~fwood/assets/pdf/Wood-AISTATS-2014.pdf)
* [FMFMFMF: Free Monads For Making Fast Models, Functionally.](http://statusfailed.com/blog/2015/09/04/free-monads-for-making-fast-models.html)
* [Simplifying Probabilistic Programs Using Computer Algebra](http://www.cs.indiana.edu/ftp/techreports/TR719.pdf)
* [Encoding Statistical Independence, Statically](http://jtobin.ca/encoding-independence-statically)
* Tom Rainforth, Jan-Willem van de Meent, Michael A. Osborne and Frank Wood - [Bayesian Optimization for Probabilistic Programs](http://www.blackboxworkshop.org/pdf/rainforth2015BOPP.pdf)
  * Michael A. Osborne, Roman Garnett, and Stephen J. Roberts - [Gaussian Processes for Global Optimization](http://www.robots.ox.ac.uk/~parg/pubs/OsborneGarnettRobertsGPGO.pdf)
* [Deriving a Probability Density Calculator (Functional Pearl)](http://homes.soic.indiana.edu/ccshan/rational/pearl.pdf)
* [BAli-Phy](http://www.bali-phy.org/)

### Hakaru
* [Hakaru](http://hakaru-dev.github.io/)
  * old - [Hakaru: An embedded probabilistic programming language for Haskell.](http://indiana.edu/~ppaml/)
* [Probabilistic inference by program transformation in Hakaru (system description)](http://homes.soic.indiana.edu/ccshan/rational/system.pdf)
* [Abstract Binding Trees in Hakaru](http://winterkoninkje.dreamwidth.org/103978.html)

### 量子論理
* [quantum logic](https://ncatlab.org/nlab/show/quantum+logic)
* [量子集合論と量子力学の解釈問題](http://www.kurims.kyoto-u.ac.jp/~kyodo/kokyuroku/contents/pdf/1525-6.pdf)
* [量子論理は論理か](https://www.jstage.jst.go.jp/article/jpssj1968/14/0/14_0_21/_pdf)
* [古典論理・量子論理・実在 Ⅰ](http://repository.ris.ac.jp/dspace/bitstream/11266/4838/1/KJ00005613226.pdf)
* [論理の中の量子](http://pssj.info/program/program_data/40/ws/watanabe.pdf)
* [量子論理に基づくHilbert空間形式の量子力学の再構成とその応用](http://bayes.sigmath.es.osaka-u.ac.jp/ftanaka/workshop/r14s/koga.pdf)
* [論理・集合・実数・物理・測定 : 量子集合論と量子力学の観測問題 (非可換解析とミクロ・マクロ双対性)](http://repository.kulib.kyoto-u.ac.jp/dspace/bitstream/2433/140895/1/1658-22.pdf)

### Effectus Theory
* [An Introduction to Effectus Theory](https://arxiv.org/abs/1512.05813)
* [Effectus Theory, and Beyond](http://www.cs.ru.nl/B.Jacobs/TALKS/effectus.pdf)
* [Total and Partial Computation in Categorical Quantum Foundations](https://arxiv.org/pdf/1511.01569.pdf)
* [Quotient–Comprehension Chains](http://arxiv.org/pdf/1511.01570.pdf)
* [NEW DIRECTIONS IN CATEGORICAL LOGIC, FOR CLASSICAL, PROBABILISTIC AND QUANTUM LOGIC](https://arxiv.org/pdf/1205.3940.pdf)
* [States of Convex Sets](http://www.cs.ru.nl/B.Jacobs/PAPERS/convex-states.pdf)

### Linear type theory
* [linear type theory](https://ncatlab.org/nlab/show/linear+type+theory)

> 線形型システムとは、プログラム実行中に作られた値が何度使われうるかによって型を区別するような型システムです

出典: [課題４](http://web.yl.is.s.u-tokyo.ac.jp/kobalab/kadai99/kadai4.html)

* [線形論理って何？](http://web.yl.is.s.u-tokyo.ac.jp/kobalab/kadai99/linear-logic.html)
* [線形論理入門 ∼ What’s the USE? ∼](http://www.kurims.kyoto-u.ac.jp/~terui/summer1.pdf)
* [線形論理の誕生](http://www.kurims.kyoto-u.ac.jp/~terui/birth.pdf)
* [15-816 Linear Logic](http://www.cs.cmu.edu/~./fp/courses/15816-f01/index.html)
* [Linear resources in Haskell](http://axman6.com/posts/2016-07-10-Linear-resources-in-haskell.html)

### Stochastic Lambda Calculus
* [Scott's stochastic lambda calculi](http://cstheory.stackexchange.com/questions/25998/scotts-stochastic-lambda-calculi)
* [Stochastic Lambda Calculus and Monads of Probability Distributions](https://www.cs.tufts.edu/~nr/pubs/pmonad.pdf)

### Categorical Probability Theory
* [Categorical Probability Theory](https://arxiv.org/abs/1406.6030)
* [Giry monad](https://ncatlab.org/nlab/show/Giry+monad)
* [A CATEGORICAL FOUNDATION FOR BAYESIAN PROBABILITY](https://arxiv.org/pdf/1205.1488.pdf)
* [A Type Theory for Probabilistic and Bayesian Reasoning](https://arxiv.org/abs/1511.09230)
* [A Categorical Basis for Conditional Probability](http://www.cs.ru.nl/B.Jacobs/PAPERS/cat-prob-th.pdf)

## 自動微分
* [ad](https://hackage.haskell.org/package/ad)
  * <https://twitter.com/GabrielG439/status/647601518871359489>
  * [Beautiful differentiation](http://conal.net/blog/posts/beautiful-differentiation)
* [Computing symbolic gradient vectors with plain Haskell](http://blog.aloni.org/posts/symbolic-gradients-with-plain-haskell/)
* [Reverse mode Automatic Differentiation](http://h2.jaguarpaw.co.uk/posts/reverse-mode-automatic-differentiation/)
* [Resources/dx.hs](https://github.com/SamuelSchlesinger/Resources/blob/master/dx.hs)
* [Backpropogation is Just Steepest Descent with Automatic Differentiation](https://idontgetoutmuch.wordpress.com/2013/10/13/backpropogation-is-just-steepest-descent-with-automatic-differentiation-2/)
* [Automatic Propagation of Uncertainty with AD](https://blog.jle.im/entry/automatic-propagation-of-uncertainty-with-ad.html)
* [Symbolic Calculus in Haskell](http://5outh.blogspot.in/2013/05/symbolic-calculus-in-haskell.html)
* [Automasymbolic Differentiation](http://jtobin.ca/automasymbolic-differentiation)
* [Yo Dawg We Heard You Like Derivatives](http://jtobin.ca/ad-via-recursion-schemes)
* [確率的勾配降下法をadで実装してみた](http://qiita.com/lotz/items/9e2ae06925906e3c67b0)

## Deep Learning
* [Neural Networks, Types, and Functional Programming](http://colah.github.io/posts/2015-09-NN-Types-FP/)
* [dnngraph](http://ajtulloch.github.io/dnngraph/) - A DSL for deep neural networks, supporting Caffe and Torch
* [DeepLearning(1): まずは順伝播(上)](http://qiita.com/eijian/items/06b1ba1276d1bfd77b93)
* [DeepLearning(2): まずは順伝播(下)](http://qiita.com/eijian/items/24d7e6aee332d59509ec)
* [DeepLearning(3): そして逆伝播（でも全結合層まで）](http://qiita.com/eijian/items/bfbdd3f7862ec84ce8c9)
* [FRP & RNN](http://imgur.com/a/mWseu)
* [autumnai/leaf](https://github.com/autumnai/leaf)
* ["Haskell's stochastic gradient descent implementations comparison.](https://github.com/argent0/haskell-ml-benchmark/blob/master/result/main.md)
* [tensorflow/haskell](https://github.com/tensorflow/haskell)

### Neural Network
* [jbarrow/LambdaNet](https://github.com/jbarrow/LambdaNet)
* [alpmestan/hnn](https://github.com/alpmestan/hnn)
* [Neural networks in Haskell (Lynn)](https://twitter.com/mcarberg/status/664750004742000640)
* [Haskellでニューラルネットワーク](http://imokuri123.com/blog/2015/07/neural-network-in-haskell.html)
* [ニューラルネットワーク、多様体、トポロジー](http://qiita.com/KojiOhki/items/af2241027b00f892d2bd)

## クラウド
* [Google Cloud Platform - CLOUD MACHINE LEARNING サービス](https://cloud.google.com/products/machine-learning/)
* [Microsoft Azure - Machine Learning](https://azure.microsoft.com/ja-jp/services/machine-learning/)
* [Amazon Machine Learning](https://www.sakura.ad.jp/koukaryoku/)
* [さくらの高火力](https://www.sakura.ad.jp/koukaryoku/)

----

* [レコメンドアルゴリズム(BPR)の導出から実装まで](http://tech.vasily.jp/entry/2016/07/01/134825)
