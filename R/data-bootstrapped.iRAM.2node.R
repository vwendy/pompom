#' Bootstrapped iRAM (including replications of iRAM and corresponding time profiles)
#'
#'@details Data bootstrapped from the estimated three-node network structure with 200 replications.
#'
#' @docType data
#'
#' @usage bootstrap.iRAM.2node
#'
#'
#' @examples
#' data(bootstrap.iRAM.2node)
#' \dontshow{
#' bootstrap.iRAM.2node$mean # mean of bootstrapped iRAM
#' bootstrap.iRAM.2node$upper # Upper bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM.2node$lower # lower bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM.2node$time.profile.data # time profiles generated from the bootstrapped beta matrices
#' bootstrap.iRAM.2node$recovery.time.reps # iRAMs generated from the bootstrapped beta matrices
#'}
#' \donttest{
#' bootstrap.iRAM.2node$mean # mean of bootstrapped iRAM
#' bootstrap.iRAM.2node$upper # Upper bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM.2node$lower # lower bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM.2node$time.profile.data # time profiles generated from the bootstrapped beta matrices
#' bootstrap.iRAM.2node$recovery.time.reps # iRAMs generated from the bootstrapped beta matrices
#'}

"bootstrap.iRAM.2node"
