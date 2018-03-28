a <- c(98,89,55)
b <- character(length(a))
for (i in 1:length(a)) {
  if(a[i] <= 100 & a[i]>= 90){
    b[i] <- "A"
}else if (a[i]<= 89 & a[i]>= 80){
    b[i] <- "B"
}else if (a[i] <= 79 & a[i]>= 70){
    b[i] <- "C"
}else if (a[i] <= 69 & a[i]>= 60){
    b[i] <- "D"
}else{
    b[i] <- "F"
  }

}
data.frame(a,b)

matr <- matrix(1:9, nrow = 3,ncol = 3)
matr1 <- matrix(,nrow = 3, ncol = 3)
for (i in 1:3) {
 for (j in 1:3) {
  if (i==j) {
    matr1[i,j] <- matr[i,j]*2
  }else if (i<j){
    matr1[i,j] <- matr[i,j]^2
  }else{
    matr1[i,j] <- matr[i,j]/2
  } 
 } 
}
matr1
ts <- matrix(rnorm(n=180, mean=0, sd=1), nrow=20, ncol=9)
delta <- runif(n=180, min=.4, max=6)
upp <- ts + delta
low <- ts - delta
x <- c(1:20)
par(mfrow=c(3,3))
par(mar = c(2,2,3,1))
par(oma = c(2,2,0,0))
for (i in 1:ncol(ts)) {
  plot(ts[,i] ~ x, type = 'n',ylim = c(-5,5),axes=F)
  polygon(x = c(x,rev(x)), y = c(low[,i], rev(upp[,i])), col='green', border = NA)
  lines(ts[,i] ~ x, lwd = 2, col = 'blue')
  
  if (i > 6) {
    axis(side=1, at=seq(0,20,by=4))
  } else {
    axis(side=1, at=seq(0,20,by=4), labels=rep('',6))
  }
  if (i%%3==1) {
    axis(side=2, at=seq(-6,6,by=2), las=2) #las make number horizontal
  } else {
    axis(side=2, at=seq(-6,6,by=2), labels=rep('',7))
  }
  box() #box around graph
}
title(xlab = "Time", ylab = "Values", outer = T,line = 0.5)

