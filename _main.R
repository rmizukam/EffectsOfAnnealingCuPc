# comment out after using first time
# https://github.com/thomasgredig/ReproducibleScience

# install.packages('roxygen2')
# install.packages('devtools')
# install.packages("stringi")
library(usethis)
library(devtools)
usethis::use_readme_md()
usethis::use_news_md()
usethis::use_proprietary_license('Ryan Mizukami')
library(roxygen2)
file.remove('NAMESPACE')
roxygen2::roxygenise()

usethis::use_data_raw()

devtools::install_github('thomasgredig/RAWdataR')
library(RAWdataR)
raw.updateID(verbose = TRUE)

file.create('data-raw/make.dataAFM.R')

devtools::document()
devtools::load_all('.')
?dataAFMRM


devtools::install_local('annealingDataAFMRM_0.1.1.tar.gz')
