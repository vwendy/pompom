
#' The estimated beta matrix (6 by 6).
#'
#' @details estimated.beta <-  matrix(c(0,0,0,0,0,0,
#'                       0,0,0,0,0,0,
#'                       0,0,0,0,0,0,
#'                       0.3066036,0,0.2527896,0,0,0.5761694,
#'                       0,0.4078627,0,-0.2,0,-0.6707407,
#'                       -0.1091465,-0.2513549,0.3145093,0,0,0),
#'                      nrow = 6,
#'                      ncol = 6,
#'                      byrow = TRUE)
#'
#'
#'
#' @docType data
#'
#' @usage estimated.beta
#'
#' @examples
#' data(estimated.beta)
#' \dontshow{
#'estimated.beta$est #estimated regression coefficients
#'estimated.beta$se # standard error of these coefficients
#'  }
#'
#' \donttest{
#'estimated.beta$est #estimated regression coefficients
#'estimated.beta$se # standard error of these coefficients
#'  }
#'

"estimated.beta"
