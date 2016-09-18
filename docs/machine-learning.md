* [DataHaskell](https://datahaskell.github.io/)
* [DataHaskell's knowledge base](http://wiki.datahaskell.org/index.php/Main_Page)
* [mikeizbicki/HLearn](https://github.com/mikeizbicki/HLearn/)
  * [Haskellの機械学習ライブラリHLearn](http://qiita.com/nebutalab/items/680203ff3d84cde7c8db)
* [random-fu](https://hackage.haskell.org/package/random-fu)
* [bmsherman/haskell-matlab](https://github.com/bmsherman/haskell-matlab)
* [HaskellR](http://tweag.github.io/HaskellR/)
  * [Programming R at native speed using Haskell](http://www.tweag.io/blog/programming-r-at-native-speed-using-haskell)
  * [How to include R plots and diagrams in blog posts](http://www.corentindupont.info/blog/posts/Programming/2015-09-14-diagrams.html)
* [QLearn: A Haskell library for iterative Q-learning.](http://poincare.github.io/QLearn/)
* [Automatic Propagation of Uncertainty with AD](https://blog.jle.im/entry/automatic-propagation-of-uncertainty-with-ad.html)
* [Kalman filters and functional programming](http://www.johndcook.com/blog/2016/07/14/kalman-filters-and-functional-programming/)
* [aneksteind/hext](https://github.com/aneksteind/hext)
* [Demo of IHaskell Notebook](http://begriffs.com/posts/2016-01-20-ihaskell-notebook.html)
* [bitemyapp/bloodhound](https://github.com/bitemyapp/bloodhound) - Haskell Elasticsearch client and query DSL
* [IHaskell Online: Help Choose Demo Code Snippets!](http://www.reddit.com/r/haskell/comments/37uqqk/ihaskell_online_help_choose_demo_code_snippets/)
* [関数型言語Haskellを用いた役割指向エージェントベースシミュレーションシステムのプロトタイプ開発](http://repo.lib.hosei.ac.jp/handle/10114/11016)
* [Install IHaskell on Ubuntu 14.04 with Stack](http://remusao.github.io/install-ihaskell-on-ubuntu-1404-with-stack.html)
* [プログラミングのための確率統計 in Haskell](http://note.golden-lucky.net/2010/12/1-2-3-4-5-6-16-16-16-16-16-16-246-135.html)
* [HuwCampbell/grenade](https://github.com/HuwCampbell/grenade)
* [Get a Brain](http://www-cs-students.stanford.edu/~blynn//haskell/brain.html)
* [Kernel Bayes’ Rule](http://www.cc.gatech.edu/~lsong/papers/FukSonGre11.pdf)
* ["Haskell's stochastic gradient descent implementations comparison.](https://github.com/argent0/haskell-ml-benchmark/blob/master/result/main.md)
* [Example: The K-Means Problem](http://chimera.labs.oreilly.com/books/1230000000929/ch03.html#sec_using-parlist)

## 確率論的プログラミング
```hs
type Probability = Double
newtype Dist a = D {unD :: [(a,Probability)]}

instance Monad Dist where
  return x = D [(x,1)]
  (D d) >>= f = D [(y,q*p) | (x,p) <- d, (y,q) <- unD (f x)]
```
[FUNCTIONAL PEARLS: Probabilistic Functional Programming in Haskell](https://web.engr.oregonstate.edu/~erwig/papers/PFP_JFP06.pdf)
* [adscib/monad-bayes](https://github.com/adscib/monad-bayes)
  * [Practical Probabilistic Programming with Monads](https://www.youtube.com/watch?v=hI0ajVy2xEk)
  * [Practical probabilistic programming with Monads](http://mlg.eng.cam.ac.uk/pub/pdf/SciGhaGor15.pdf)
* Oleg Kiselyov and Chung-chieh Shan - [Embedded Probabilistic Programming](http://okmij.org/ftp/kakuritu/dsl-paper.pdf)
* [Learning Probabilistic Programs](http://arxiv.org/abs/1407.2646)
* [A Probabilistic Functional Programming Library for Haskell](https://web.engr.oregonstate.edu/~erwig/pfp/)
* Ken Friis Larsen - [Memory Efficient Implementation of Probability Monads](http://www.diku.dk/hjemmesider/ansatte/kflarsen/t/ProbMonad-unpublished.pdf)
* Frank Wood, Jan Willem van de Meent and Vikash Mansinghka - [A New Approach to Probabilistic Programming Inference](http://www.robots.ox.ac.uk/~fwood/assets/pdf/Wood-AISTATS-2014.pdf)
* [FMFMFMF: Free Monads For Making Fast Models, Functionally.](http://statusfailed.com/blog/2015/09/04/free-monads-for-making-fast-models.html)
* [Probabilistic Programming & Bayesian Methods for Hackers](http://camdavidsonpilon.github.io/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers/)
* [Simplifying Probabilistic Programs Using Computer Algebra](http://www.cs.indiana.edu/ftp/techreports/TR719.pdf)
* [Abstract Binding Trees in Hakaru](http://winterkoninkje.dreamwidth.org/103978.html)
* [Encoding Statistical Independence, Statically](http://jtobin.ca/encoding-independence-statically)
* Tom Rainforth, Jan-Willem van de Meent, Michael A. Osborne and Frank Wood - [Bayesian Optimization for Probabilistic Programs](http://www.blackboxworkshop.org/pdf/rainforth2015BOPP.pdf)
  * Michael A. Osborne, Roman Garnett, and Stephen J. Roberts - [Gaussian Processes for Global Optimization](http://www.robots.ox.ac.uk/~parg/pubs/OsborneGarnettRobertsGPGO.pdf)
* [Deriving a Probability Density Calculator (Functional Pearl)](http://homes.soic.indiana.edu/ccshan/rational/pearl.pdf)

### Probabilistic Programming Language
* Church
  * [Church: a language for generative models](https://cocolab.stanford.edu/papers/GoodmanEtAl2008-UncertaintyInArtificialIntelligence.pdf)
  * [Probabilistic Models of Cognition](https://probmods.org/)
* [Anglican](http://www.robots.ox.ac.uk/~fwood/anglican/)
* WebPPL - [The Design and Implementation of Probabilistic Programming Languages](http://dippl.org/)
* [Stanで統計モデリングを学ぶ(1): まずはStanの使い方のおさらいから](http://tjo.hatenablog.com/entry/2014/01/27/235048)
* [BAli-Phy](http://www.bali-phy.org/)

#### Hakaru
* [hakaru-dev/hakaru](https://github.com/hakaru-dev/hakaru)
* [hakaru: A probabilistic programming embedded DSL](https://hackage.haskell.org/package/hakaru)
* [Hakaru: An embedded probabilistic programming language for Haskell.](http://indiana.edu/~ppaml/)
* [Probabilistic inference by program transformation in Hakaru (system description)](http://homes.soic.indiana.edu/ccshan/rational/system.pdf)

```hs
heads = Just (toDyn (Discrete True))

prog :: Measure Double
prog = do
   bias <- unconditioned (beta 1 1)
   replicateM 10 $ conditioned (bern bias)
   return bias

sample prog (replicate 10 heads)
```

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

## Deep Learning
* [Neural Networks, Types, and Functional Programming](http://colah.github.io/posts/2015-09-NN-Types-FP/)
* [dnngraph](http://ajtulloch.github.io/dnngraph/) - A DSL for deep neural networks, supporting Caffe and Torch
* [DeepLearning(1): まずは順伝播(上)](http://qiita.com/eijian/items/06b1ba1276d1bfd77b93)
* [DeepLearning(2): まずは順伝播(下)](http://qiita.com/eijian/items/24d7e6aee332d59509ec)
* [FRP & RNN](http://imgur.com/a/mWseu)
* [autumnai/leaf](https://github.com/autumnai/leaf)

### Neural Network
* [jbarrow/LambdaNet](https://github.com/jbarrow/LambdaNet)
* [alpmestan/hnn](https://github.com/alpmestan/hnn)
* [Neural networks in Haskell (Lynn)](https://twitter.com/mcarberg/status/664750004742000640)
* [Haskellでニューラルネットワーク](http://imokuri123.com/blog/2015/07/neural-network-in-haskell.html)
* [ニューラルネットワーク、多様体、トポロジー](http://qiita.com/KojiOhki/items/af2241027b00f892d2bd)

----

* [レコメンドアルゴリズム(BPR)の導出から実装まで](http://tech.vasily.jp/entry/2016/07/01/134825)
