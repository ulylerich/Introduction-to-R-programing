vec<-paste('Nov',15:24,sep = '_')
vec
vec1<-substr(vec,start=1, stop =3)
vec1
vec.1<-strsplit(vec,split = '_')
vec.1
vec[c(2,4)]
vec[c(6:10)]<-paste('Dec',1:5,sep = '/')
vec
vec2<-substr(vec,start = 1,stop =3 )
which(vec2=="Nov")
vec[1:5]
uly<-matrix(c(1:12),nrow = 3,ncol = 4)
uly
uly[2,1]<-100
uly
uly[,4]<-c(-1,0,1)
uly2<-uly[,c(1,4)]
uly2
x<-1:100
y<-x*2+rnorm(100,0,10)
z<-c(rep('a',40),rep('b',60))
plot(x-y,xlab = "x",ylab = "y",col="red")
boxplot(y~z,xlab="x",ylab="y")
plot(x[which(z=="a")]-y[which(z=="a")],xlab ="x",ylab = "y",col="red" )
plot(x[which(z=="b")]-y[which(z=="b")],xlab="x",ylab = "y",col="red")
boxplot(y[which(x>20)]~z[which(x>20)],xlab="x",ylab="y")

