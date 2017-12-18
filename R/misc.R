#' @import lavaan
#'
#' @import reshape2
#'
#' @import ggplot2
#'
#'
#' @import qgraph
#'
#' @importFrom stats rnorm
#'
#'
#'
Sys.which(Sys.getenv("qpdf"))
Sys.getenv("PATH")

globalVariables(c("value", "variable"), "pompom", add = TRUE)
globalVariables(c("repnum", "steps"), "pompom", add = TRUE)
