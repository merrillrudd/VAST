
# devtools::install_github("james-thorson/VAST", ref="development")

library(testthat)
library(VAST)
library(TMB)

# Version
Version_VAST = get_latest_version( package="VAST" )
TmbDir = system.file("executables", package="VAST")

# Use "extdata" in "inst" because its loaded with R packages
singlespecies_example_path <- system.file("extdata", package="SpatialDeltaGLMM")
multispecies_example_path <- system.file("extdata", package="VAST")

# Run tests for VAST
#setwd(system.file("tests", package="VAST"))
testthat::test_check("VAST")

################
# Local testing
################

# Use local path
#singlespecies_example_path <- "C:/Users/James.Thorson/Desktop/Git/geostatistical_delta-GLMM/inst/extdata/"
#multispecies_example_path <- "C:/Users/James.Thorson/Desktop/Git/VAST/inst/extdata/"

# Run from local directory
#testthat::test_dir( "C:/Users/James.Thorson/Desktop/Git/VAST/tests/testthat/", reporter="check" )
#testthat::test_dir( "/media/sf_c/Users/jim/Desktop/Project_git/VAST/tests/testthat/", reporter="check" )
