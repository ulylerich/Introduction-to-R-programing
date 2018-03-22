list_name <- vector("list", length = 3 )
for (i in 1:3) {
list_name[[i]]<-sample(x= 1:100,size = i)
}
list_name
set.seed(12) # to be reproducible
A = matrix(data = 1:500, nrow = 50, ncol = 10)
colnames(A) = paste("lake", 1:10, sep = "_")
colMeans(A)
A2 = numeric()
for (i in 1:10) {
A2[i]= mean(A[,i])  
}
A2
set.seed(123) # to be reproducible
T1 = matrix(rbinom(n = 100, size = 1, prob = 0.5), nrow = 10, ncol = 10)
T2 = matrix(rbinom(n = 100, size = 1, prob = 0.5), nrow = 10, ncol = 10)
T1_T2<- matrix(,nrow = 10,ncol = 10)
for (i in 1:nrow(T1_T2)) {
 for (j in 1:nrow(T1_T2)) {
 T1_T2[i,j]<-T1[i,j]*T2[i,j]  
 } 
}
T1_T2
T1*T2
fib<- numeric()
fib[1]<- 1
fib[2]<- 1
for (i in 3:30) {
fib[i]<- fib[i-1]+ fib[i-2]  
}
fib
fb_diff<- numeric()
for (i in 1:29) {
fb_diff[i]<- fib[i + 1]- fib[i] 
}
fb_diff
fb_diff1<- diff(fib)
fb_diff1

