# 191024 
# review
var1 = c("홍길동")   # scalar
var2 = c(10,20,30)

rm(list=ls()) # ls() : 환경창에 있는 객체들 삭제
cat("\014") # console clear

###################################################################

# 파일로부터 데이터를 읽어들일 때 일반 txt 형식은 많이 사용되지 않아요

# 컴퓨터 간에 데이터를 주고 받으려고 해요
# process 간에 데이터 통신을 하기 위해서 특정 형식을 이용해 데이터를 주고 받아요


# 1. CSV( comma seperated value )
# comma 기호를 이용해서 데이터를구분.
# 해당 문자열을 전달해서 데이터 통신
# ex) "홍길동,20,서울,김길동,30,부산,최길동,50,인천,,,,"
# CSV 방식 장점 : 간단해요. 부가적인 데이터가 적어요. 상대적으로 크기가 작아요. => 많은 양의 데이터 처리 가능
# CSV 방식 단점 : 구조적 데이터를 표현하기에 적합하지 않아요. => 중첩된 데이터 표헌x, parsing 작업이 복잡. 유지보수에 문제 발생

# 2. XML 방식 - csv 단점 해결하기 위해
# tag를 이용해서 데이터를 표현하는 방식
# ex) <name>홍길동</name><age>20</age><address>서울</address>
# <phone>
#       <mobile>010-111-222</mobile>
#       <home>02-342-2233</home>
# </phone>
# => 중첩구조 가능
# XML 장점 : 구조적 데이터를 표현하기에 적합. 사용하기 편리. 데이터의 의미 표현 가능.
# XML 단점 : 부가적인 데이터가 큼. 

# 3. JSON ( JavaScript Object Notation ) - size를 줄이자!
# ex) { name : "홍길동", age : 20, address : 서울, ...}
# JSON 장점 : 구조적 표현이 가능하면서 XMl보다 크기가 작아요

# read.table() : sep 필요
# read.csv() : sep가 ","이기 때문에 생략
#            : header = T가 기본
getwd()

df = read.csv(file.choose(),
              fileEncoding = "UTF-8")#(sep"," 생략 가능)
df

# Excel 파일을 불러올 수 있어요
# 확장 package를 이용해야 해요

# R을 설치하면.. => base system이 설치된다고 표현해요
# base package, recommended package
# other package

# xlsx package를 설치하고 로딩해요
install.packages("xlsx")
library(xlsx)
require(xlsx)

# JAVA_HOME 환경변수 설정
Sys.setenv(JAVA_HOME = "C:\\Program Files\\Java\\jre1.8.0_231") #(jdk)

student_midterm <- read.xlsx(file.choose(),
                             sheetIndex = 1,   # 첫 번째 시트
                             encoding = "UTF-8")
student_midterm;
class(summary(student_midterm)) # table

################################################################################

# 처리된 결과를 file에 write해요
# write.table() : data frame을 file에 저장
# cat() : 분석결과(vector)를 file에 저장
# capture.output() : 분석결과(List,table)을 file에 저장

cat("처리된 결과는 :","\n","\n",   # \n : 줄바꿈
    file = "c:/R/data/report.txt", # 파일 없으면 새로 만들기
    append = T)                    # append=T 내용 append. append 없으면 파일 삭제하고 다시 만듦

write.table(student_midterm,    
            file = "c:/R/data/report.txt",
            append = T)

capture.output(summary(student_midterm),
               file = "c:/R/data/report.txt",
               append = T)
#(형식이 다름)

# +)
write.table(student_midterm,
            file = "c:/R/data/report.txt",
            row.names = F, # 행 번호 삭제
            quote = F,     # "" 삭제
            append = T)

# write.xlsx()

df = data.frame(x=c(1:5),
                y=seq(1,10,2),
                z=c("a","b","c","d","e"),
                stringsAsFactors = F)
df

write.xlsx(df,"c:/R/data/report.xlsx")
