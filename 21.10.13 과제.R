#1번
z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)

#z1[is.na(z1)] <- 0 z1의 NA를 0으로 대체
#z2[is.na(z2)] <- 0 z2의 NA를 0으로 대체 or
z3 <- as.vector(na.omit(z1)) #z1의 NA를 제외하고 새로운 벡터 생성
z4 <- as.vector(na.omit(z2)) #z2의 NA를 제외하고 새로운 벡터 생성
z3
z4
mean(z3) #z1에서 결측값을 제외한 평균
sum(z4)/length(z4) #z2에서 결측값을 제외한 평균

#2번
x <- iris #NA를 포함하여 만든 test iris 데이터셋 생성 
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; x[3,4] <- NA  

for(i in 1:ncol(x)){ #for문을 활용한 데이터프레임의 열별 결측값 확인 
  this.na <- is.na(x[,i])
  cat(colnames(x)[i], "\t", sum(this.na),"\n")
}

rowSums(is.na(x)) #행별 NA의 개수
sum(rowSums(is.na(x))>0) #NA가 포함된 행의 개수
sum(is.na(x)) #데이터셋 전체에서 NA의 개수 

head(x) #NA를 포함하여 만든 test iris 데이터셋 보여주기
x[!complete.cases(x),] #NA가 포함된 행들 출력
y <- x[complete.cases(x),] #NA가 포함된 행들 제거
head(y) #새로운 데이터셋 y의 내용 보여주기 

#3번
st <- data.frame(state.x77)
boxplot(st$Income)
boxplot.stats(st$Income)$out

out.val <- boxplot.stats(st$Income)$out #특이값 추출
st$Income[st$Income %in% out.val] <- NA #추출한 특이값을 NA로 대체 
newdata <- st[complete.cases(st),] #NA가 포함된 행 제거 
head(newdata) #특이값을 포함한 행이 제거된 새로운 데이터 보여주기

#4번
v1 <- c(1,7,6,8,4,2,3)
order(v1)
v1 <- sort(v1) #v1 오름차순 정렬 
v2 <- sort(v1,decreasing = T) #v1 내림차순 정렬 
v1
v2

#5번
sp <- split(iris,iris$Species) #품종별로 데이터 분리
sp$virginica #품종이 virginica인 리스트 출력 
subset(iris,Species =="virginica" & Sepal.Length>7.0)

#6번
x <- 1:100
y <- sample(x,size=10,replace=FALSE)
x
y

#7번 
x <- c("red","green","blue","black","white")
com <- combn(x,2)
com

for(i in 1:ncol(com)){
  cat(com[,i],"\n")
}

#8번
agg <- aggregate(iris[,-5],by=list(iris$Species), FUN = mean)
agg #iris 데이터셋에서 각 변수의 품종별 평균(mean) 출력
agg <- aggregate(iris[,-5],by=list(표준편차=iris$Species), FUN = sd)
agg #iris 데이터셋에서 각 변수의 품종별 표준편차(sd) 출력

#9번
x <- data.frame(name=c("a","b","c"),math=c(90,80,40))
y <- data.frame(name=c("a","b","d"),korean=c(75,60,90))
merge(x,y,all=T) #x,y 두개의 데이터 셋 병합 후 모든 행 표시 
merge(x,y,by=c("name")) #x,y 두개의 데이터 셋 "name"을 기준으로 병합후 표시

x <- data.frame(name=c("a","b","c"),math=c(90,80,40))
y <- data.frame(sname=c("a","b","d"),korean=c(75,60,90))
x
y
merge(x,y,by.x = c("name"), by.y = c("sname"))