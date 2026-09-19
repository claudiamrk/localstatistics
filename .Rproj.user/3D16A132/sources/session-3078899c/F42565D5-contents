#' Create a local statistics object
#'
#' Creates an object containing the mean, standard deviation,
#' minimum and maximum values.
#'
#' @param mean The mean value.
#' @param sd The standard deviation.
#' @param min The minimum value.
#' @param max The maximum value.
#' @return An object of class "local_statistics".
#' @export
local_statistics <- function(mean, sd, min, max) {
  structure(
    list(
      mean = mean,
      sd = sd,
      min = min,
      max = max
    ),
    class = "local_statistics"
  )
}

#' Calculate local statistics
#'
#' Calculates the mean, standard deviation, minimum and maximum
#' values of a numeric vector using the Rcpp implementation.
#'
#' @param x A numeric vector.
#' @return An object of class "local_statistics".
#' @export
calculate_local_statistics <- function(x) {

  result <- local_statistics_cpp(x)

  local_statistics(
    mean = result$mean,
    sd = result$sd,
    min = result$min,
    max = result$max
  )
}


