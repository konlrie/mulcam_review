# R의 주석은 #을 이용해요.
# 주석을 이용하면 한 줄이 몽땅 comment처리

# 일반적으로 프로그래밍언어에서 statement를종료하기 위해서 사용하는 ";"
# R은 ";"를 생략할 수 있어요!
3+5; 3+6; 2*7;
3+5
# 코드를 수행하기 위해서는 Ctrl+Enter를 사용
# R은 대소문자 구별
# 변수를 만들때 camelcase 이용

result = 100;
myResult # camelcase notation - 관용적 표현
MyResult # pascal notation
my_result # snake notation
myresult = 200 # 뭔가 이상해요

###############################

myResult = 200   # assignment
myResult <- 300  # assignment
400 -> myResult  # assignment

myResult
print(myResult) # 변수 출력

# 여러 개의 값을 출력하려면 cat() 이용 : 문자와 숫자 같이 출력
print("결과값은 : " + myResult) # 오류! 문자와 숫자는 더할 수 없음
cat("결과값은 : ", myResult)

###############################
# 멤버를 이용한 변수 선언
# 한 제품에 대한 여러 속성을 변수로 나타낼 때 : 멤버형태로 변수 표현
goods.price = 3000
goods.code = "001"
goods.name = "냉장고"

###############################
# 출력되는 형식을 살펴보자
myResult
mySeq = seq(100)    # 1부터 100까지 1씩 증가하는 숫자의 집합
mySeq
# [] : 출력되는 인덱스 순서
mySeq = seq(5,100)  #5부터 100까지 1씩 증가하는 숫자의 집합
mySeq
mySeq = seq(1,100,by = 2)   # by : 증감하는 크기
mySeq
