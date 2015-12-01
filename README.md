
# Introduction

LiblineaR.ACF is a wrapper around the LIBLINEAR C/C++ library for machine learning.
LIBLINEAR is a simple library for solving large-scale regularized linear
classification and regression.

The main feature of LiblineaR.ACF is the Accelerated Coordinate Frequencies
adaptation..
This is active only for the L2-regularized L2-loss support vector classification.
Nonetheless, the other options of LiblineaR has not been touch, so it can be
used as a direct replacement of LiblineaR.

ACF is most useful for large data sets and large values
of C.

---

For more information on the C/C++ LIBLINEAR library itself, refer to:

R.-E. Fan, K.-W. Chang, C.-J. Hsieh, X.-R. Wang, and C.-J. Lin.
LIBLINEAR: A Library for Large Linear Classification,
Journal of Machine Learning Research 9(2008), 1871-1874.

Software available at http://www.csie.ntu.edu.tw/~cjlin/liblinear .

---

For more information on the ACF extension, refer to:

Tobias Glasmachers and Ürün Dogan.
Accelerated Coordinate Descent with Adaptive Coordinate Frequencies.
Asian Conference on Machine Learning (ACML), 2013, 72-86.

Software available at www.ini.rub.de/PEOPLE/glasmtbl/code/acf-cd .


### Installation

Simply use ```devtools::install_github(repo="aydindemircioglu/LiblineaR.ACF")``` on the R command line,
make sure you have the latest devtools package installed.


### Usage

To see ACF in action, download the news20 dataset from
https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/.
Then, the following code will load the data set and
train a classifier with ACF.

``` R
library(SparseM)
library(e1071)
library(LiblineaR.ACF)

c = 10000

s = read.matrix.csr("./news20.binary")
m = LiblineaR.ACF(data = s$x, target = s$y, type = 1, cost = c, bias = FALSE)
```


### Copyright

All of this software is copyrighted by the list of authors in the DESCRIPTION file of
the package and subject to the GNU GENERAL PUBLIC LICENSE, Version 2, see the file
COPYING for details. The LIBLINEAR C/C++ code is copyright Chih-Chung Chang and
Chih-Jen Lin.


### Mathematical Details

The main insight of Accelerated Coordinate Frequencies is that especially on
larger data sets not every data point is important. Thus, preference should
be given to imporant points. The random selection method of LIBLINEAR is
replaced by a sampling of the distribution that captures the imporatance of
the points.
