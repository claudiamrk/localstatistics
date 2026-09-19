Localstatistics is a package which calculates the mean, standard deviation, maximum and minimum
of a given numeric vector.

The package can be installed from GitHub using:

devtools::install_github("claudiamrk/localstatistics")

then load the package:

library(localstatistics)

Example of use:

The localstatistics package can be used as follows:
The calculate_local_statistics() function calculates the mean, standard deviation, 
minimum, and maximum of a numeric vector.

calculate_local_statistics(c(1, 2, 3, 4, 5))

Expected output:

$mean
[1] 3

$sd
[1] 1.581139

$min
[1] 1

$max
[1] 5

attr(,"class")
[1] "local_statistics"

Unit Tests:

Unit tests were written using the testthat package and are located in:
tests/testthat/test-local_statistics.R

The tests were done to check that calculate_local_statistics can correctly calculate the 
mean, standard deviation, minimum and maximum of a numeric vector input.
The tests also checked that the returned result has the expected local_statistics S3 class.

A numeric vector containing the values 1, 2, 3, 4, and 5 was used as the test input. 
The calculated results were compared with known values and R's built-in sd() function 
using expect_equal(). The object's class was checked using expect_s3_class(). 
All 5 tests passed with 0 failures, 0 warnings, and 0 skips.



