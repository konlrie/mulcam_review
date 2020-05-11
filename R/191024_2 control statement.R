# R은 프로그래밍 언어예요. 따라서 제어문도 가지고 있어요.

# if 구문(조건문)
var1 = 100
var2 = 20
# 조건에 따라서 실행되는 code block을 제어할 수 있어요.

if(var1 > var2){
  # 조건문이 참일 때 실행
  cat("참이에요!!")
} else {
  # 조건문이 거짓일 때 실행
  cat("거짓이에요!!")
}
if(var1 > var2){cat("참이에요!!")} else{cat("거짓이에요!!")}

# ifelse : 3항 연산자
var1 = 10
var2 = 20

ifelse(var1 > var2, "참일 경우 선택","거짓일 경우 선택")

# 반복문( for, while )
# for : 반복 횟수만큼 반복 실행
# while : 조건이 TRUE일 동안 반복 실행

for(var1 in seq(1:5)) {
  print(var1)
}

idx = 1
mySum = 0

while(idx < 10){
  mySum = mySum + idx #(line당 인식)
  idx = idx + 1 #(print(mySum)추가하면 바로 산출)
} # 로직처리
mySum
sum(c(1:9))

# 로직(제어문을 이용해서) 1부터 100사이에 있는 3의 배수를 출력하세요!
# 1부터 100까지의 숫자를 다 3의 배수인지를 check
idx = 1
while(if(idx %% 3 == 0, print(idx), ) idx < 100){
  idx = idx + 1
}

while(idx < 100){
  
  if(idx %% 3 == 0){
    print(idx)
  }
}

# 정답 # while은 조건이 TRUE일 동안 반복이기 때문에 1부터 100까지의 숫자를 확인해야 하는 지금의 경우에는 for 사용
for( var1 in seq(1,100)){
  if( var1 %% 3 == 0){
    print(var1)
  }
}

@
# 1부터 100사이에 있는 prime number(소수)를 출력하세요
for( var1 in seq(1,100)){
  if(var1 %% 2 == ){
    print(var1)
  }
}

# 정답
for(var1 in 2:100){
  divCount = 0
  var2 = c(2:var1)
  for(var3 in var2){
    if(var1 %% var3 == 0){
      divCount = divCount + 1
    }
  }
  if(divCount == 1){
    print(var1)
  }
}

# 사용자 정의 함수( User Define Function )
# 제공된 함수말고 우리가 함수를 만들 수 있을까?

# 함수명 <- function(x) { ... }
# 입력받은 숫자를 제곱해서 돌려주는 함수를 하나 만들어 보세요
myFunc = function(x) {
  x = x * x
  return(x)
}

var1 = myFunc(5)
var1

var1 = c(1:10)
sum(var1)

# sum함수와 동일한 역할을 하는 mySum을 만들어 보아요
# vector를 입력으로 받아서 합을 구해주는함수
mySum = function(x) {
  result = 0
  for(t in x) {
    result = result + t
  }
  return(result)
}
var1 = c(1:10)
mySum(var1)

##################################################################


# 연습문제
# 로직문제
# Web











