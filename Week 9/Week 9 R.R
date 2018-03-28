a <- -4
if(a %% 2 == 1 & a > 0){
  b <- "positive odd number"
} else if (a %% 2 == 0 & a > 0){
b <- "positive even number"
} else if (a %% 2 ==1 & a < 0 ){
  b <- "negative odd number"
} else if(a %% 2 == 0 & a < 0){
  b <- "negative even number"
} else{
  b <- "zero"
}
b
a <- 0
if(a %% 2 == 1 & a > 0){
  b <- "positive odd number"
} else if (a %% 2 == 0 & a > 0){
  b <- "positive even number"
} else if (a %% 2 ==1 & a < 0 ){
  b <- "negative odd number"
} else if(a %% 2 == 0 & a < 0){
  b <- "negative even number"
} else{
  b <- "zero"
}
b
a <- 75
if(a >= 90){
  b <- "excelent"
} else if (a >= 80){
  b <- "good"
} else if (a >= 70){
  b <- "OK"
} else{
  b <- "poor"
}
b
name <- "Bruce"
alter<- ifelse(name== "clark","super", ifelse(name == "Bruce","Bat", "other"))
origin <- ifelse(name == "clark", "Krypton", ifelse(name == "Bruce","Earth","dunno"))
alter
origin
a <- rpois(n=20, lambda=2)
b <- rpois(n=15, lambda=1.8)

#ifelse()
compare <- ifelse(median(a)== median(b),"equal",ifelse(median(a)> median(b),"greater",
                                                       "less"))
compare
#ifelse statement
if(median(a)== median(b)){
  compare <- "equal"
}else if (median(a) > median(b)){
  compare <- "greater"
}else{
  compare <- "less"
}
compare

  
