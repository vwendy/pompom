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


globalVariables(c("value",
                  "variable",
                  "repnum",
                  "steps",
                  "simts",
                  "true.beta",
                  "estimated.beta",
                  "bootstrap.iRAM",
                  "usemmodelfit",
                  "simts2node",
                  "true.beta.2node",
                  "bootstrap.iRAM.2node"),
                "pompom", add = TRUE)

