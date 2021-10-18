a <- 10
b <- 20
c <- ifelse(a>b,a,b)
print(c)

sum <- 0
for(i in 1:100){
  sum <- sum+i
}
print(sum)

sum <- 0
i <- 1
while(i <= 100){
  sum <-  sum + i
  i <- i+1 
}
print(sum)

myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul))
}
result <- myfunc(5,8)
s <- result$sum
m <- result$mul
cat('5+8=',s,'\n')
cat('5*8=',m,'\n')

setwd("C:/Users/minsu/Documents/R/win-library/4.1")
source("myfunc.R")
a <- mydiv(20,4)
b <- mydiv(30,4)
a+b
mydiv(mydiv(20,2),5)

idx <- which(iris$Petal.Length>5.0)
idx
iris.big <- iris[idx,]
iris.big