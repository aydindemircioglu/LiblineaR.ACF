
## Resubmission

This is a resubmission to fix the problems i had. In this version I have:

* Replaced all "long long" with just "long", as long long is not strictly necessary.

* Fixed quotes for software packages in DESCRIPTION

* Fixed a bug in cross validation (linear.cpp), and reduced the number of cross validations to 3. This should make the running time of the example nearly 5s as requested by CRAN.

 
## Test environments

* local ubuntu 16.04 alpha1 install (64bit), R 3.2.3
* win-builder (devel and release)
* virtual sun os 11 (32bit) R 3.1.1



## R CMD check results

Status: 1 NOTE

Maintainer: ‘Aydin Demircioglu <aydin.demircioglu@ini.rub.de>’
New submission

* This is indeed a new submission.



## Downstream dependencies
There are currently no downstream dependencies for this package.

