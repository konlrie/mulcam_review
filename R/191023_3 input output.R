# 데이터 입출력
# 키보드로부터 데이터를 받을 수 있어요

# scan() 함수를 이용해서 숫자데이터를 받을 수 있어요
myNum <- scan()   # vector 형태. 입력이 끝나면  Enter 한 번 더
myNum

# scan()을 이용해서 문자열도 입력받을 수 있어요 (default는 실수)
var1 = scan(what = character())
var1

# 키보드로부터 데이터를 받기위해서 edit() 함수를 이용할 수 있어요

var1 = data.frame()

df= edit(var1)
df

#####################################################################

# 파일로부터 데이터를 읽어보아요

# text 파일에 ","로 구분된 데이터들을 읽어들여 보아요

# read.table() 사용
getwd()
setwd("C:/R/data") #(C:/R_Lecture/data)
setwd(str_c(getwd(),"/data"))

student_midterm = read.table("student_midterm.txt",sep=",") #(sep seperate의 약자) #(오류뜸 유니코드가아님)
student_midterm = read.table("student_midterm.txt",sep=",", fileEncoding = "UTF-8", header = T)
# 중요중요 (오류 떴었음. 완성되지 않은 마지막 라인입니다 => 마지막에 엔터를 해주기)
student_midterm = read.table(file.choose(),sep=',',fileEncoding = "UTF-8")

class(student_midterm)
