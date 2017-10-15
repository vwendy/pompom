

W2E <-function(x)   {
  cbind(which(x!=0,arr.ind=TRUE),x[x!=0])
}



#' Plot the network graph
#'
#' @param beta matrix of temporal relations, cotaining both lag-1 and contemporaneous
#' @param var.number number of variables in the time series
#'
#' @return none
#'
#' @export
#'
plot.network.graph <- function(beta, var.number)
{
  print("new")
  p <- var.number
  contemporaneous.relations <- matrix(beta[(p+1):(2*p),(p+1):(2*p)], nrow = p, ncol = p, byrow = F)
  lag.1.relations <- matrix(beta[(p+1):(2*p),1:p], nrow = p, ncol = p, byrow = F)

  econtemporaneous <- W2E(t(contemporaneous.relations))
  elag1 <- W2E(t(lag.1.relations))
  plot.names <-  c("happy", "sad", "other.communion")

  isLagged               <- c(rep(TRUE, nrow(elag1)), rep(FALSE, nrow(econtemporaneous)))
  curve                  <- rep(1, length(isLagged))

  qgraph(rbind(elag1, econtemporaneous),
         layout              = "circle",
         lty                 = ifelse(isLagged,2, 1),
         edge.labels         = F,
         curve               = curve,
         fade                = FALSE,
         posCol              = "green",
         negCol              = "red",
         labels              = plot.names,
         label.cex           = 1,
         label.norm          = "O",
         label.scale         = FALSE,
         edge.label.cex      = 1.5,
         edge.label.position = .3)
}

plot.iRAM.dist <- function(recovery.time.reps){

  recovery.time.reps.plot <- data.frame(recovery.time.reps)

  column.names <- NULL
  for (from in 1:var.number)
  {
    for (to in 1:var.number)
    {
      column.names <- cbind(column.names,paste("from.", from, ".to.", to, sep = ""))
    }
  }
  # print(column.names)
  names(recovery.time.reps.plot) <- column.names

  recovery.time.reps.plot$index <- 1:replication
  recovery.time.reps.plot <- melt(recovery.time.reps.plot, id = "index")

  return(ggplot(data = recovery.time.reps.plot, aes(x = value))+
          geom_histogram()+
          facet_wrap(~variable))
}

plot.time.profile <- function(simulation.data)
{
  simulation.data.plot <- data.frame(simulation.data)
  simulation.data.plot <- melt(simulation.data.plot, id = c("repnum", "steps"))

  return(ggplot(data = simulation.data.plot,
               aes(x = steps, y = value, group = repnum, color = variable))+
          geom_line(alpha = 0.5)+
          geom_hline(yintercept = threshold, alpha = 0.5) +
          geom_hline(yintercept = -threshold, alpha = 0.5) +
          facet_wrap(~variable) +
          xlim(0,50))
}
