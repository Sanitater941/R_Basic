z <- matrix(1:20, nrow = 4, ncol=5)
z
z[1,c(1,2,4)]
z[1:2,]

iris
IR.1 <- subset(iris, Species=="setosa")
IR.2 <- subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0)
IR.1
IR.2[, c(2,4)]

a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b

2*a
b-5
2*a + 3*b

a+b
b-a
b/a
a*b

a <-  a*3
b <-  b-5
a
b

st <- data.frame(state.x77)
iris.m <-  as.matrix(iris[,1:4])
head(st)
class(st)
head(iris.m)
class(iris.m)
