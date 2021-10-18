d1 <- 1:50 #d1에 1~50까지 저장
d2 <- 51:100 #d2에 51~100까지 저장
print(d1) #d1값 출력

print(d2) #d2값 출력

print(length(d2)) #d2의 길이(원소의 개수)

print(d1+d2)
print(d2-d1)
print(d1*d2)
print(d2/d1)

print(sum(d1)) #d1의 값들의 합
print(sum(d2)) #d2의 값들의 합

print(sum(d1,d2)) #d1,d2에 있는 모든 값들의 합

print(max(d2)) #d2의 최대값
print(min(d2)) #d2의 최소값

print(mean(d2)) #d2의 평균값
print(mean(d1)) #d1의 평균값
print(mean(d2)-mean(d1)) #d2평균값과 d1평균값의 차

sort(d1, decreasing = TRUE) #d1 내림차순 정렬

d3 <- 1:20
d3[1:10] <- sort(d1)[1:10] #d3에 d1 1부터 10번째 숫자 저장
d3[11:20] <- sort(d2)[1:10] #d3에 d2 1부터 10번째 숫자 저장
print(d3) #d3출력

print(d2[d2%%7==3]) #d2에서 7로 나누었을 때 나머지가 3인 수

d2[d2%%7 ==0] <- 0 #d2에서 7의 배수들 0으로 변경
print(d2)

print(sum(d2[d2%%2==0])) #d2에서 짝수를 모두 합한 값

print(d2[d2%%2 !=0 | d2>80]) #d2에서 홀수이거나 80보다 큰 수 출력

print(d2[(d2%%3 ==0) & (d2%%5==0)]) #d2에서 3과 5의 공배수 출력

print(d2[d2%%2==0]*2) #d2에 짝수에만 2를 곱하여 저장