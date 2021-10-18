vars <- c("mpg","disp","drat","wt")
target <- mtcars[,vars]
head(target)
pairs(target, main="Multi Plots")

month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month, late1, main="Late Students", type="o", lty=3, col="red",
     xlab="Month", ylab="Late cnt", ylim=c(1,15)
) #가독성을 위해 type="o"(점과 선을 종합한 그래프), lty=3(도트선) 적용
lines(month, late2, type="b",col="blue")

library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]

grp <- c()
for(i in 1:nrow(myds)){
  if (myds$tax[i]>=500){
    grp[i] <- "H"
  } else if (myds$tax[i]<=300){
    grp[i] <- "L"
  }else{
    grp[i] <- "M"}
}
grp <- factor(grp)
grp <- factor(grp,levels=c("H","M","L"))
myds <- data.frame(myds,grp)

str(myds)
head(myds)
table(myds$grp)

par(mfrow=c(2,3))
for (i in 1:5){
  hist(myds[,i], main=colnames(myds)[i],col="yellow")
}
par(mfrow=c(1,1))

par(mfrow=c(2,3))
for (i in 1:5){
 boxplot(myds[,i], main=colnames(myds)[i])
}
par(mfrow=c(1,1))

boxplot(myds$crim~myds$grp, main="1인당 범죄율")
boxplot(myds$rm~myds$grp, main="방의수")
boxplot(myds$dis~myds$grp, main="직업센터까지의 거리")
boxplot(myds$tax~myds$grp, main="제산세")

pairs(myds[,-6])

point <- as.integer(myds$grp)
color <- c("red","green","blue")
pairs(myds[,-6],pch=point,col=color[point])

cor(myds[,-6])