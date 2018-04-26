#?1
myfunction <- function(x,y) {
  x^2 - y^2
}
myfunction(x =-10, y=6)

#?2
math <- function(x) {
  y = 0
  for (i in 1:length(x)) {
   y = y + x[i]
  }
  return(y)
}
math(x =c(1.1,2.2,3.3))
math(x= matrix(1:4,nrow = 2,ncol = 2))

#?3
myfunction2 <- function(x) {
  y = 0
  for (i in 1:length(x)) {
    y = y + x[i]
  }
  return(y)
}
myfunction2(x = as.numeric(c("1","10","100","1000")))

#?4
set.seed(123)
ts <- rnorm(n=100, mean=10, sd=2)
myfunction3 <-  function(x){
  output <- numeric(length(ts))
  for (i in 1: length(ts)-x+1){
    output[i] <- mean(ts[i:i+x-1],na.rm = T)
  }
    return(output)
  }
tsm3 <- myfunction3(x = c(3))
tsm9 <- myfunction3(x = c(9))
plot(ts, type = "l", col = "red", ylab = "Time Series")
lines(tsm3, type = "l", col = "black", lwd = 2)
lines(tsm9,type = "l", col = "blue", lwd = 2)
legend("bottomleft", legend =  c("temp","every cons 3", "every cons 9"), 
       col = c("red","black","blue"),lty = 1, cex = 0.8)


  

