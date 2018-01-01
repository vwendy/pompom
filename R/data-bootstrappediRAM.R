#' Bootstrapped iRAM (including replications of iRAM and corresponding time profiles)
#'
#'@details Data bootstrapped from the estimated three-node network structure with 200 replications.
#'
#' @docType data
#'
#' @usage bootstrap.iRAM
#'
#'
#' @examples
#' data(bootstrap.iRAM)
#' \dontshow{
#' bootstrap.iRAM$mean # mean of bootstrapped iRAM
#' bootstrap.iRAM$upper # Upper bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM$lower # lower bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM$time.profile.data # time profiles generated from the bootstrapped beta matrices
#' bootstrap.iRAM$recovery.time.reps # iRAMs generated from the bootstrapped beta matrices
#'}
#' \donttest{
#' bootstrap.iRAM$mean # mean of bootstrapped iRAM
#' bootstrap.iRAM$upper # Upper bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM$lower # lower bound of confidence interval of bootstrapped iRAM
#' bootstrap.iRAM$time.profile.data # time profiles generated from the bootstrapped beta matrices
#' bootstrap.iRAM$recovery.time.reps # iRAMs generated from the bootstrapped beta matrices
#'}

"bootstrap.iRAM"
