
# Introduction

LiblineaR.ACF is package that allows fast linear SVM classification by using
coordinate descent and Accelerated Coordinate Frequencies adaptation.
It is a wrapper around a modified version of the LIBLINEAR C/C++ library,
which allows large-scale regularized linear classification.
ACF is most useful for large data sets and large values of C.

The ACF feature is active only for the L2-regularized L1-loss and L2-loss
support vector classification. Other types of the original LIBLINEAR package
are not supported.

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
COPYING for details. The LIBLINEAR C/C++ code is copyright by the LIBLINEAR Project
(Chih-Chung Chang, Chih-Jen Lin et al.)


### Mathematical Details

The main insight of Accelerated Coordinate Frequencies is that especially on
larger data sets not every data point is equally important. Thus, preference should
be given to important points. The random selection method of LIBLINEAR is
replaced by a sampling of the distribution that captures the imporatance of
the points. For more information refer to the paper 
'Accelerated Coordinate Descent with Adaptive Coordinate Frequencies'
by Tobias Glasmachers and Ürün Dogan.

