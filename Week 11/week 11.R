#question 1
data("mtcars")
set.seed(1)
d = mtcars[sample(6),]
d1 = d[order(d$mpg),] #order data by species

#question 2
original_par <- par(no.readonly = TRUE) #setting global graphical parameters via par()
par(bg="black", fg="white",col.lab="white",col.axis="white") # using par()
barplot(d1$mpg, xlab = "Miles per gallon", col = "skyblue",
        horiz = T, names.arg = row.names(d1), cex.names = 0.6)
par(original_par)

#question 3
data("co2")
plot(co2, ylab = expression("Atmospheric concentration of CO"[2]),
     las = 1)
title(main = "co2 data set")
points(aggregate(co2, by=list(year), FUN=mean, na.rm=T),pch=19,col = "red")
lines(aggregate(co2, by=list(year), FUN=mean, na.rm=T), pch = 16, col = "red")       

# question 4
data("iris")
par(mfrow = c(1,3))
cultivar <- levels(iris$Species) #subset column species and store and new dataframe
for (i in cultivar){
  plot(iris$Sepal.Length[iris$Species ==i] ~ iris$Petal.Length[iris$Species ==i],xlab = "Petal.Length",
       ylab = "Sepal.Length",type = "p", col = "blue", pch = 19, main = paste(i))
  abline(lm(iris$Sepal.Length[iris$Species == i] ~ iris$Petal.Length[iris$Species == i]))
} #for loop for graph

#question 5
data("anscombe") 
X <- data.frame(anscombe$x1,anscombe$x2,anscombe$x3,anscombe$x4)
Y <- data.frame(anscombe$y1,anscombe$y2,anscombe$y3,anscombe$y4)
par(mfrow = c(2,2))
for (i in 1:4) {
  plot(Y[,i]~X[,i], col = "blue", pch = 19, main = paste("Anscombe",i),xlab = "X", ylab = "y")
  abline(lm(Y[,i]~X[,i])) #for loop for graph
}
