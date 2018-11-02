## Release summary

## Test environments
* local OS X install, R 3.5.1
* OS 10.12.6 (on travis-ci), R 3.5.0, R-oldrel, R-devel
* ubuntu 14.04.3 (on travis-ci), R 3.5.0, R-oldrel, R-devel
* windows server 2012 R2 x64 (on appveyor), R 3.5.1

## R CMD check results
There were no ERRORs or WARNINGs. There was 1 NOTE:

* new submission

## Reverse dependencies

None.


## Ignored build failures

I am ignoring a build failure on OSX/R-devel. I believe that the error does not originate in my package yet I have been unable to resolve it with suggestions from similar issues on GitHub. The error is as follows:

 <!--
 The command "Rscript -e 'deps <- devtools::dev_package_deps(dependencies = NA);devtools::install_deps(dependencies = TRUE);if (!all(deps$package %in% installed.packages())) { message("missing: ", paste(setdiff(deps$package, installed.packages()), collapse=", ")); q(status = 1, save = "no")}'" failed and exited with 1 during .
--!>
