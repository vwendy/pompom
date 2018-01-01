#' Simulated time-series data
#'
#'@details Data simulated from a given three-node network structure with 200 measurements.
#'         Network structure is shown in the dataset true.beta.
#'         Process noise has mean of 0 and SD .1.
#'
#' @docType data
#'
#' @usage simts
#'
#'
#' @examples
#' data(simts)
#' \dontshow{
#'library(reshape2)
#'library(ggplot2)
#'
#'simts$time <- seq(1,length(simts[,1]),1)

#'simts.long <- melt(simts, id="time")  ## convert to long format

#'ggplot(data=simts.long,
#'       aes(x=time, y=value, colour=variable)) +
#'  geom_line() +
#'  facet_wrap( ~ variable, ncol = 1) +
#'  theme(
#'    strip.background = element_blank(),
#'    strip.text.x = element_blank(),
#'    strip.text.y = element_blank(),
#'    axis.text.y = element_text(),
#'    axis.title.y = element_blank()
#'  )+ylim(-1,1)
#'  simts$time <- NULL
#'  }
#' \donttest{
#'library(reshape2)
#'library(ggplot2)
#'
#'simts$time <- seq(1,length(simts[,1]),1)

#'simts.long <- melt(simts, id="time")  ## convert to long format

#'ggplot(data=simts.long,
#'       aes(x=time, y=value, colour=variable)) +
#'  geom_line() +
#'  facet_wrap( ~ variable, ncol = 1) +
#'  theme(
#'    strip.background = element_blank(),
#'    strip.text.x = element_blank(),
#'    strip.text.y = element_blank(),
#'    axis.text.y = element_text(),
#'    axis.title.y = element_blank()
#'  )+ylim(-1,1)
#'  simts$time <- NULL
#'  }
#' \dontshow{
#'library(reshape2)
#'library(ggplot2)
#'
#'simts$time <- seq(1,length(simts[,1]),1)

#'simts.long <- melt(simts, id="time")  ## convert to long format

#'ggplot(data=simts.long,
#'       aes(x=time, y=value, colour=variable)) +
#'  geom_line() +
#'  facet_wrap( ~ variable, ncol = 1) +
#'  theme(
#'    strip.background = element_blank(),
#'    strip.text.x = element_blank(),
#'    strip.text.y = element_blank(),
#'    axis.text.y = element_text(),
#'    axis.title.y = element_blank()
#'  )+ylim(-1,1)
#'  simts$time <- NULL
#'  }

"simts"
