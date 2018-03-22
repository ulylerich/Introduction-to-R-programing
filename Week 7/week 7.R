x <- rep(c(1,3,5), times=3)
y <- rep(c(1,3,5), each=3)
loc<- matrix(,nrow = 9,ncol = 9)
for (i in 1:length(x)) {
  for(j in 1:length(y))
    loc[i,j]<- sqrt((x[i]-x[j])^2 +(y[i]-y[j])^2)
}
loc
set.seed(1)
dat <- data.frame(matrix(rpois(20*5, lambda=3), nrow=20, ncol=5))
corel<- matrix(,nrow = 5,ncol = 5)
for (i in 1:5) {
  for (j in 1:5)
    corel[i,j]<- cor(dat[,i],dat[,j])
  }
corel
cor(dat[,2],dat[,3])
mat1<- matrix(1:16, nrow = 4, ncol = 4)
mat1
mat2<-(1:4)
for (i in 1:4) {
  mat2[i]<- ifelse(mat1[i]%%2==0,max(mat1[,i]),min(mat1[,i]))
}
mat2

a <- matrix(rnorm(n=25, mean=0, sd=1), 5, 5)
a[upper.tri(a, diag = FALSE)] <- 0
a
for (i in 1:nrow(a)) {
  for (j in 1:ncol(a)) {
   a[i,j]<- a[j,i]
  }
}
a     
b <- data.frame(matrix(rpois(n=100, lambda=1000), nrow=25, ncol=4, byrow=T))     
years<- c(1991:2015)
plot(1,type="l", xlim= c( 1991,2015),ylim=c(900,max(b)),ylab="Population", xlab ="Years",main ="Lizard species")
Cols<-c("orange","red","blue","violet")
for (i in 1:4) {
  lines(b[,i]~ years,type="l",col= Cols[i],legend("bottom", legend=c("species 1", "species 2", "species 3","species 4"),
                                                  col=c("orange","red","blue","violet"), lty=1:1,cex=0.8))
}                             

