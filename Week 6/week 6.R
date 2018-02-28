a<-256
for (i in 1:3) {
  a<-sqrt(a)
}
a
a<-c(1.1,2.2,3.3,4.4,5.5)
c<-0
for (i in 1:5) {
  C<-  c + a[i]
}
c
sum(a)
a<-c(1.1,2.2,3.3,4.4,5.5)
d<-1
for (i in 1:5) {
  d<-  d * a[i]
}
d
prod(a)
vec<- paste("year",1991:2010, sep="_")
vec
years<- 1991:2010
for (i in 1:20) {
  print(paste("year", years[i],sep="_"))
} 
mat<- matrix(rpois(n=80, lambda=100),nrow=4, ncol=20)
mat
y=colnames(mat)<-(c(1991:2010))
b=rownames(mat)<-paste("Area",1:4, sep = " ")
par(mfrow=c(1,4))
for (i in 1:length(b)) {
 plot(mat[i,]~ y,type="o", xlab="Year",ylab = "N trees",main=b[i]) 
}
mat
for (i in 1:4) {
 m<-rowMeans(mat)
 l<-mean(mat[i,])
 g<-min.row(mat)
 z<-sd.row(mat)
}
m
l


