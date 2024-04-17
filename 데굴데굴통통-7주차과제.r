setwd('C:/R')
lck<-read.csv('lck.csv',header=T)
team<-lck[,2]
win<-lck[,4]
lose<-lck[,5]

lck_if <- data.frame(팀 = team, 승리 = win, 패배 = lose)
lck_if

#각 팀별 승률을 구하는 함수를 만들어라.
funcWinRate <- function(w, l) {
  return ( as.integer(w/(w+l) * 100) )
}
win_rate <- funcWinRate(lck_if$승리, lck_if$패배)
names(win_rate) <- lck_if$팀

#for문을 활용하여 승률 그래프를 시각화 하라
for(i in 1:10) {
  cat(team[i], ": \t[")
  sq <- win_rate[i]
  for(j in 1:sq) {
    cat('■')
  }
  cat(']\n')
}

# 승률이 40%이상이면 국제전에 진출할수 있다.사용자가 직접 타이핑 하여 국제전에 진출 여부를 알아내는 프로그램을 작성하시오
# install.packages('svDialogs')
library(svDialogs)
lck_if$팀
user_team <- dlgInput('팀명을 입력하세요 ex)GEN')$res
team_enter <- lck_if$팀 == user_team
team_index <- which(team_enter)
if(win_rate[team_index]>=40) {
  cat("진출에 성공하였습니다.")
} else {
  cat("진출에 실패하였습니다.")
}