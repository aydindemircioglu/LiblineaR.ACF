#!/usr/bin/Rscript  --vanilla 

# work around
    system2(command="./cleanup", args="")
    
    library(methods)
    library(devtools)
    library(Rcpp)
    compileAttributes ()
    load_all (".")
    build_vignettes(".")
    document(".")
    
# work around
    system2(command="R", args="CMD build .")
    system2(command="R", args="CMD check --as-cran ./LiblineaR.ACF_1.94-2.tar.gz")
