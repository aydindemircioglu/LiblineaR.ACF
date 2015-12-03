#!/usr/bin/Rscript  --vanilla 

	library(methods)
	library(devtools)
	compileAttributes ()
	load_all (".")
	build_vignettes(".")
	document(".")
	