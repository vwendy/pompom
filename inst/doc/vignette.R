## ---- warning = FALSE, message = FALSE-----------------------------------
library(pompom)
library(reshape2)
library(ggplot2)

## ---- warning = F--------------------------------------------------------

n.obs <- 200
p <- 2
noise.level <- 0.1
# phi <- matrix(c(0.8, -0.3, -0.3, 0.001), nrow = 2, ncol = 2, byrow = TRUE)
psi <- cbind(rnorm(n.obs,0,noise.level),
             rnorm(n.obs,0, noise.level))

true.beta <-  matrix(c(0,0,0,0,0,0,0,0,0.6, 0, 0,0.6,-0.2, 0.6,0,0), nrow = 2 * p, ncol = 2 * p, byrow = TRUE)
true.beta

## ---- warning = F--------------------------------------------------------
phi <- matrix(true.beta[(p+1):(2*p),1:p], nrow = p, ncol = p, byrow = F)
alpha <- matrix(true.beta[(p+1):(2*p),(p+1):(2*p)], nrow = p, ncol = p, byrow = F)
phi
alpha

## ---- warning = F--------------------------------------------------------
time.series <- matrix(rep(0, p * n.obs), nrow = n.obs, ncol = p)
time.series[1,] <- rnorm(2,0,noise.level)
identity.matrix <-  diag(1, p, p)

row <- 2
for (row in 2:n.obs)
{
  time.series[row,] <- solve(identity.matrix - alpha) %*%  phi %*% time.series[row-1,] + 
    solve(identity.matrix - alpha)  %*% psi[row, ]
}
time.series <- data.frame(time.series)

## ---- warning = F--------------------------------------------------------
time.series$time <- seq(1,length(time.series[,1]),1)
time.series.long <- melt(time.series, id="time")  ## convert to long format

ggplot(data=time.series.long,
       aes(x=time, y=value, colour=variable)) +
  geom_line() + 
  facet_wrap( ~ variable , ncol = 1) +
  theme(
    strip.background = element_blank(),
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    axis.text.y = element_text(), 
    axis.title.y = element_blank()
    )+
  ylim(-1,1)

time.series$time <- NULL # get rid of this auxilary variable

## ---- warning = F--------------------------------------------------------
var.number <- 2
lag.order <- 1
replication <- 200
steps <- 100
threshold <- 0.01

# fit model with raw data
# source("C:/Users/Xiao Yang/Downloads/18 uSEMR/03 R Code/5 debug indSEM/pompom/R/uSEM_20171004.R")
model.fit <- uSEM(var.number, time.series, lag.order,verbose = FALSE, trim = TRUE)
model.summary(model.fit, var.number , lag.order)
fit.stat <- fitMeasures(model.fit)

## ---- warning = F--------------------------------------------------------
# parse beta matrix
beta.matrix <- parse.beta(var.number,model.fit, lag.order, matrix = T)
beta.matrix
round(beta.matrix$est,2)
true.beta

## ---- warning = F--------------------------------------------------------
# ponit estimate of iRAM 
iRAM(model.fit, var.number, lag.order, boot = F)

## ---- warning = F--------------------------------------------------------
compute.recovery.time.from.beta(true.beta,var.number, lag.order, threshold , replication, steps)

## ---- width= 20----------------------------------------------------------
# bootstrapped iRAM

iRAM(model.fit, 
     var.number, 
     lag.order,
     # threshold,
     0.05,
     boot = TRUE, 
     # replication,
     200,
     steps ,
     plot.time.profile = TRUE,
     plot.histogram = TRUE)

