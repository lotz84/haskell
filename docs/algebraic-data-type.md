* [What is the difference between an Algebraic Data Type and an Abstract Data Type?](http://www.reddit.com/r/haskell/comments/38grqx/what_is_the_difference_between_an_algebraic_data/)
* [Either and (,) in Haskell are not arbitrary](http://bitemyapp.com/posts/2015-10-19-either-is-not-arbitrary.html)
* [Why sum and product types?](http://charlieharvey.org.uk/page/sum_and_product_types)

##代数的データ型
代数的データ型とは"足し算"と"掛け算"が出来るような型のこと。"足し算"と"掛け算"はそれぞれ**直和**, **直積**と呼ばれる。

```hs
-- 直和
type a :+: b = Either a b

-- 直積
type a :*: b = (a, b)
```

* [The algebra (and calculus!) of algebraic data types](https://codewords.recurse.com/issues/three/algebra-and-calculus-of-algebraic-data-types)
* [The Algebra of Programming in Haskell](http://www.cs.ox.ac.uk/research/pdt/ap/dgp/workshop2004/oliveira.pdf)
* [The Algebra of Algebraic Data Types, Part 1](http://chris-taylor.github.io/blog/2013/02/10/the-algebra-of-algebraic-data-types/)
* [Why are ADTs necessary?](http://www.reddit.com/r/haskell/comments/2z1n16/why_are_adts_necessary/)

###Codata
* [Codata](http://types2004.lri.fr/SLIDES/altenkirch.pdf)
* [Data and Codata](http://blog.sigfpe.com/2007/07/data-and-codata.html)

###Zipper
* [zipper](https://hackage.haskell.org/package/zipper)
* [Zippers - LYAH](http://learnyouahaskell.com/zippers)
* [データ型の微分](http://ja.wikibooks.org/wiki/Haskell/Zippers#.E3.83.87.E3.83.BC.E3.82.BF.E5.9E.8B.E3.81.AE.E5.BE.AE.E5.88.86)
* [Zippers, Part 2: Zippers as Derivatives](https://pavpanchekha.com/blog/zippers/derivative.html)
* [Scrap Your Zippers](http://michaeldadams.org/papers/scrap_your_zippers/ScrapYourZippers-2010.pdf)
* [syz](https://hackage.haskell.org/package/syz)
