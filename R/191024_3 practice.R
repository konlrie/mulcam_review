# 연습문제
# 사용할 데이터 : 2 3 5 6 7 10

# 1. 주어진 데이터로 vector x를 생성하세요
x <- c(2,3,5,6,7,10); x

# 2. 주어진 데이터 각각을 제곱해서 vector x를 생성하세요
# 방법1
var1 = c(2,3,5,6,7,10)
var2 = c(2,3,5,6,7,10)
var1 * var2
# 방법2
x = c(2,3,5,6,7,10)^2; x

# 3. 주어진 데이터 각각을 제곱해서 합을 구하세요
sum(c(2,3,5,6,7,10)^2)

# 4. 주어진 데이터에서 5보다 큰 값들로 구성된 vector x를 구하세요
var1 <- c(2,3,5,6,7,10)

while( var1 > 5 )
if(var1 > 5){
  print(var1)
}

# 4. 정답
x = c(2,3,5,6,7,10)
var1= c(2,3,5,6,7,10) > 5 # mask
x[var1]                   # fancy indexing
x[c(2,3,5,6,7,10) > 5]

# 5. vector x의 길이를 구하세요
length(x)

# 6.  R의 package중에 usingR이 있어요
install.packages("UsingR")
# 설치된 package를불러들여요
require(UsingR)
# 데이터를 불러들일 수 있어요
# 1부터 2003까지 숫자 중 prime number를 가지고 있어요
data("primes")
primes
# 데이터 확인
head(primes) # 앞에서 6개만 출력
tail(primes) # 뒤에서 6개만 출력

# 7. 1부터 2003까지 숫자 중 prime number는 몇 개인가요?
length(primes) # 총 304개

# 8. 1부터 200까지 숫자 중 prime number는 몇 개인가요?
var1 = data("primes")
if(var1 <= 200){
} else{
  F
}
Number = 

# 8. 정답
sum(primes <= 200)

# 9. 평균을 구해보아요
mean(primes)

# 10. 500이상 1000 이하의 prime number만으로 구성된 vector p를 구하세요
x = data(primes)
var1 = data(primes) >= 500 & data(primes) < 1000
x[var1]

# 10. 정답
p = primes[primes >= 500 & primes <= 1000]
p

# 다음과 같은 형태의 데이터를 이용하여 아래의 문제를 풀어보아요
# 1 5 9
# 2 6 10
# 3 7 11
# 4 8 12

# 11. 위의 데이터를 이용해서 matrix x를 생성하세요
x = matrix(seq(1,12),
           ncol = 3, 
           nrow = 4)
x

# 12. 전치행렬을 만들어 보아요
t(x)


?if (condition) {
  
}
  
# 13. matrix x에 대해 첫번째 행만 추출하세요
x[1,]

# 14. matrix x에 대해 6,7,10,11을 matrix형태로 추출하세요
x
x[c(2:3),c(-1)]

# 14. 정답
x[2:3,-1]

# 15. matrix x에 대해 x의 두번째 열의 원소가 홀수인 행들만 뽑아서 matrix p를 생성하세요
var1 = x[,2]
p = ifelse(var1 %% 2 == 1, print(var1), NULL) #(문제를 잘못 읽음. false에서 값을 입력하고 싶지 않을 때는?)
p

?ifelse()

# 15. 정답
p = x[x[,2] %% 2 == 1, ]
p

## 프로그래밍
## 홀수 개의 숫자로 구성된 숫자문자열이 입력으로 제공됩니다. 문자열의 개수는 7개 이상 11개 이하로 제한됩니다.
## 입력 문자열의 길이는 7개, 9개, 11개

## 중앙 숫자를 기준으로 앞과 뒤의 숫자를 분리한 후 분리된 두 수를 거꾸로 뒤집어서 두 수의 차를 구해요

## ex) 7648623
##     764 623    가운데를 기준으로 나눠요
##     467 326    각 숫자를 거꾸로 뒤집어요
##     141        (467-326) 두 수의 차

## ex) 7648620
##     764 620    가운데를 기준으로 나눠요
##     467 026    각 숫자를 거꾸로 뒤집어요
##     441        (467-26) 두 수의 차

input = "7648623"
library(stringr)
str_length(input)
str_split(input,1)
str_sub(input, )




?str_split()

## 정답
input = "7648623"
mid_input = (str_length(input) %/% 2) + 1
var1 = str_sub(input, 1, mid_input-1)
var1
var2 = str_sub(input, mid_input+1, str_length(input))
var2
abs(
  as.integer(paste(rev(str_split(var1,pattern = "")[[1]]),collapse = ""))
- as.integer(paste(rev(str_split(var2,pattern = "")[[1]]),collapse = ""))
)
?str_sub
