# R은 통계계산을 위한 프로그래밍 언어이자 스포트웨어
# 통계학과 교수인 로스 이하카와 로버트 젠틀맨 두 사람이 일반사람들도 쉽게 통계를 할 수 있도록 Bell 연구소에서 사용하던 s라는 통계프로그램을 모태로 1993년에 만들었어요.
# R의 장점 : 무료 => 많은 사람들이 사용 => 오픈소스 생태계가 잘 유지돼요
# R & Python 
# R 다운로드 , RStudio 
# R 프로그램의 기본
# 주석 : #
# statment의 종료: ; (생략가능)
# R은 대소문자를 구별 : case-sensitive
# 변수이름을 지을 때 : camelcase notation,   my_report

myVar = 100 #(다른 프로그램과 동일)
myVar <- 100 #(다른 프로그램과 차별)
100 -> myVar

myVar
print(myVar)
cat("변수의 값은 :",myVar)

var1 = seq(1,100,3)
var1

##################################

# 연산자에 대해서 알아보아요
# operator
var1 = 100 #(numeric. 우리 눈에는 정수지만 실수. L을 붙여야 정수로 인식)
var2 = 3
var3 = 100L

is.integer(var1)
is.integer(var3)

result <- var1 / var2
result

options(digits = 5) #(출력 범위 설정)
sprintf("%.9f", var1/var2) #(f포맷. 특수한 기호로 출력. 소수점 9번째 자리까지 출력)

var1 %/% var2 # 33(몫)
var1 %% var2  # 1(나머지)

# 비교연산자
var1 == var2 # FALSE(F)
var1 != var2 # TRUE(T)

# & , | (and연산과 or연산)
# &&, || (vector에 대한 연산 수행시 첫번째 요소만을 비교)

##################################

# Data Type
# 기본데이터 타입 4개
# numeric, character("",'') #(문자와 문자열을 구분하지 않는 점이 R 차별), logical, complex 
# 특수데이터 타입 #(객체)
# NULL, NA(결측치), NaN, Inf

# R이 제공하는 기본함수 중에 데이터 타입을 알아보는 함수 => mode()
var1 = "이것은 소리없는 아우성!!"
mode(var1)
# is계열의 함수 => is.character() #(T.F로 출력)
is.character(var1)
is.null()
is.na()

# R의 데이터타입은 우선순위가 존재해요!
# character > complex > numeric > logical

# R은 하나의 데이터 타입을 다른 데이터 타입으로 바꿀 수 있어요!!
# as계열의 함수를 제공해줘요
var1 = "3.141592"
as.double(var1) #(실수로. integer정수로)
as.integer(var1)

var2 = TRUE
as.numeric(var2) #(TRUE 1, FALSE 0)

var3 = 100
as.logical(var3) #(0이외의 숫자는 TRUE)
