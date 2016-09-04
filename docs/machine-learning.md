* [DataHaskell](https://datahaskell.github.io/)
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

### Stochastic Lambda Calculus
* [Scott's stochastic lambda calculi](http://cstheory.stackexchange.com/questions/25998/scotts-stochastic-lambda-calculi)
* [Stochastic Lambda Calculus and Monads of Probability Distributions](https://www.cs.tufts.edu/~nr/pubs/pmonad.pdf)

### Categorical Probability Theory
* [Categorical Probability Theory](https://arxiv.org/abs/1406.6030)
* [Giry monad](https://ncatlab.org/nlab/show/Giry+monad)
* [A CATEGORICAL FOUNDATION FOR BAYESIAN PROBABILITY](https://arxiv.org/pdf/1205.1488.pdf)
* [A Type Theory for Probabilistic and Bayesian Reasoning](https://arxiv.org/pdf/1511.09230v1.pdf)
* [A Categorical Basis for Conditional Probability](http://www.cs.ru.nl/B.Jacobs/PAPERS/cat-prob-th.pdf)

## Deep Learning
* [Neural Networks, Types, and Functional Programming](http://colah.github.io/posts/2015-09-NN-Types-FP/)
* [dnngraph](http://ajtulloch.github.io/dnngraph/) - A DSL for deep neural networks, supporting Caffe and Torch
* [DeepLearning(1): まずは順伝播(上)](http://qiita.com/eijian/items/06b1ba1276d1bfd77b93)
* [FRP & RNN](http://imgur.com/a/mWseu)

### Neural Network
* [jbarrow/LambdaNet](https://github.com/jbarrow/LambdaNet)
* [alpmestan/hnn](https://github.com/alpmestan/hnn)
* [Neural networks in Haskell (Lynn)](https://twitter.com/mcarberg/status/664750004742000640)
* [Haskellでニューラルネットワーク](http://imokuri123.com/blog/2015/07/neural-network-in-haskell.html)
* [ニューラルネットワーク、多様体、トポロジー](http://qiita.com/KojiOhki/items/af2241027b00f892d2bd)

----

* [レコメンドアルゴリズム(BPR)の導出から実装まで](http://tech.vasily.jp/entry/2016/07/01/134825)
