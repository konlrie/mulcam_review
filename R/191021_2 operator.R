# Operator(연산자)

var1 <- 100
var2 <- 3

var1/var2 # Java언어 => 33 출력   # 데이터타입이 같은 것만 연산(정수, 정수 연산이기 때문에 연산 결과도 정수)
          # R은 마치 실세계의 연산처럼 수행(33.3333) #(R 차별)

# 몫을 구해보아요 => 33
var1 %/% var2 # 33
# 나머지를 구해보아요 => 1
var1 %% var2

# 비교연산자
var1 == var2 # boolean X, R에서는 logical
             # FALSE(F) (false x)
var1 != var2 # TRUE
var1 > var2

# 논리연산자 
# &, && : 양쪽 값이 TRUE이면 TRUE
TRUE & FALSE
TRUE && FALSE
# 둘 다 논리연산자 AND 연산
# |, || : 하나라도 TRUE이면 결과 TRUE
TRUE | FALSE # TRUE
FALSE || FALSE # FALSE


#################################################
# 단일변수는 1개짜리 공간
# R은 여러가지 자료구조가 있음
# 가장 대표적인 자료구조(데이터 저장하는 구조)에는 vector가 있음
# R에서 vector는 연속적인 저장공간, 1차원 자료구조
# 다른 언어의 array와 같은 구조
# 저장공간 안에 모두 같은 데이터 타입
# 함수 이용하여 vector 저장
# c() <= combine의 약자
c(10,20,30)
c(FALSE, 20, 3.14) # 우선순위에 따라 같은 데이터타입으로 벡터 생성됨
c(TRUE, FALSE) & c(TRUE, TRUE)
# 원소 하나인 벡터: 스칼라
# 같은 인덱스끼리 계산함
# 벡터 연산 결과값 => 벡터
c(TRUE, FALSE) && c(FALSE, TRUE)
# &&이면 인덱스 0(첫번째 요소)만 계산함
c(TRUE, F, TRUE) & c(F, T)
# 길이 맞아야 // RESULT: F F F
# Warning message. 결과값은 나오지만 연산 힘드니 사용 말 것

!c(T, F, T, F) # not연산


#################################################
# 다른언어와 마찬가지로 다양한 수학함수 내장
# 매우 많으니 모두 외우기보단 그 때 그 때 찾아서
abs(-3)            # 절대값
round(3.1415, 2)   # 반올림
sqrt(4)            # 제곱근
