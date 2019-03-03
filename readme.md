
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/leslie-huang/zipR.svg?branch=master)](https://travis-ci.org/leslie-huang/zipR) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/leslie-huang/zipR?branch=master&svg=true)](https://ci.appveyor.com/project/leslie-huang/zipR)

zipR version 0.1.0
==================

### An R library for zip()

This library does one thing, and one thing only: implementing Python-style\* zip() for R.

### To install

`install.packages("zipR")`

\* without the functionality of iterators or tuples.

### Quick demo

#### Dummy data

Some sequences of different lengths, in order to test the different options available in `zipr`.

``` r
a <- c(1,2,3)
b <- c(4,5,6)
c <- c(1,2,3,4,5,6)
d <- c(7,8)
z <- c(9)
filler <- c(NA)
```

#### zip two vectors of the same length

``` r
zipR::zipr(a,b)
#>   x y
#> 1 1 4
#> 2 2 5
#> 3 3 6
```

#### zip two vectors of different lengths, repeating the shorter vector

`broadcast = TRUE` repeats elements of the shorter vector so that it is the same length as the longer vector

``` r
zipr(a, z, broadcast = TRUE)
#>   x y
#> 1 1 9
#> 2 2 9
#> 3 3 9

zipr(a, c, broadcast = TRUE)
#>   x y
#> 1 1 1
#> 2 2 2
#> 3 3 3
#> 4 1 4
#> 5 2 5
#> 6 3 6
```

#### zip two vectors of different lengths, using the default fill value

`fill = TRUE` without a `fillvalue` specified fills in the shorter vector with `NA`

``` r
zipr(z, a, fill = TRUE)
#>    x y
#> 1  9 1
#> 2 NA 2
#> 3 NA 3
```

#### zip two vectors of different lengths, using a custom fill value

``` r
zipr(c,a, fill = TRUE, fillvalue = z)
#>   x y
#> 1 1 1
#> 2 2 2
#> 3 3 3
#> 4 4 9
#> 5 5 9
#> 6 6 9

zipr(c,z, fill = TRUE, fillvalue = d)
#>   x y
#> 1 1 9
#> 2 2 7
#> 3 3 8
#> 4 4 7
#> 5 5 8
#> 6 6 7
```

The demo for zipR is also available <a href="https://leslie-huang.github.io/zipr/zipr_demo.html">here</a>.
