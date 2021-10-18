favorite.season <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER',
                     'FALL','FALL','SUMMER','SPRING','SPRING')
ds <- table(favorite.season)
ds
barplot(ds, main='favorite season',col=colors)
pie(ds, main='favorite season',col=colors)

mydata <- c(60,62,64,65,68,69,120)
quantile(mydata)
quantile(mydata, (0:20)/20)
summary(mydata)

par(mfrow=c(1,2))
boxplot(Sepal.Length~Species,data=iris,main="품종별 꽃받침의 길이")
boxplot(Sepal.Width~Species,data=iris,main="품종별 꽃받침의 넓이")
par(mfrow=c(1,1))