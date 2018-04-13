#?1
mat <- matrix(rpois(n=100, lambda=5.5), nrow=10, ncol=10)
colMeans(mat)
rowMeans(mat)
colSums(mat)
rowSums(mat)
#?2
apply(mat, MARGIN = 2, FUN = range)
apply(mat, MARGIN = 1, FUN = quantile, probs=c(.25,.75))
#?3
mat[sample(x=1:length(mat), size=6, replace=FALSE)] <- NA
#variance
apply(mat, MARGIN = 2, FUN = var, na.rm = T)
#median
apply(mat, MARGIN = 1, FUN = median, na.rm = T)

#?4
a <- rpois(100, lambda=2.5)
s <- sample(c('woodpecker','chickadee','black bird','sparrow'), size=100, replace=T)
dat <- data.frame(abundance=a, species=s)
variables <- c('species', 'abundance', 'abundance', 'abundance','abundance')
functions <- c('length', 'mean', 'sd', 'min','max')
var.names <- c('count','Mean_Abundance', 'SD_of_Abundance', 'Min_Abundance', 'Max_Abundance')

for(i in 1:length(functions)) {
  tab.temp <- tapply(dat[, variables[i]], INDEX=dat$species, FUN=functions[i])
  sum.temp <- data.frame(species=names(tab.temp), tab.temp)
  names(sum.temp)[2] <- var.names[i]
  if (i==1) {
    sum.table <- sum.temp
  } else {
    sum.table <- merge(sum.table, sum.temp)
  }
}
sum.table
write.csv(sum.table,"Birdsabundance.csv")
