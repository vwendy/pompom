#' @import lavaan
#'
#' @import reshape2
#'
#' @import ggplot2
#'
#' @import qgraph
#'
#' @import utils
#'
#' @importFrom stats rnorm
#'
#'


globalVariables(c("value", "variable", "repnum", "steps", "simts", "true.beta"), "pompom", add = TRUE)
# globalVariables(c("repnum", "steps"), "pompom", add = TRUE)
# globalVariables("simts", "pompom", add = TRUE)
# globalVariables("true.beta", "pompom", add = TRUE)

