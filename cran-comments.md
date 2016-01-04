
## Submission

This is a new submission. 

 
## Test environments
* local ubuntu 16.04 alpha1 install (64bit), R 3.2.3
* win-builder (devel and release)
* virtual sun os 11 (32bit) R 3.1.1



## R CMD check results

Status: 1 NOTE

Maintainer: ‘Aydin Demircioglu <aydin.demircioglu@ini.rub.de>’
New submission

Possibly mis-spelled words in DESCRIPTION:
  LIBLINEAR (11:5, 14:49, 17:16, 20:14)
  LiblineaR (15:9)
Found the following (possibly) invalid URLs:
  URL: http://www.csie.ntu.edu.tw/~cjlin/liblinear
    From: man/LiblineaR.ACF.Rd
          man/predict.LiblineaR.ACF.Rd
    Status: Error
    Message: libcurl error code 6
        Could not resolve host: www.csie.ntu.edu.tw


* This is indeed a new submission.
* LiblineaR/LIBLINEAR is not misspelled in both cases, as it is the official way to write it.
* The webpage exist, the curl error seems to be a known 'bug'.



## Downstream dependencies
There are currently no downstream dependencies for this package.

