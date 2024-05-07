setwd('C:/r')
library(xlsx)
world<-read.csv('worlds.csv',header=T)
top10<-world[1:10,-c(1,2,5:11)]
t10<-t(top10)
colnames(t10)<-world[1:10,1]
t10
barplot(t10,main='월즈 TOP10 선수',beside=T)

#barplot함수를 수정하여 경기수는 Lime색, 승수는 Aqua색으로 바꾸시오.
barplot(t10,main='월즈 TOP10 선수',beside=T,col=c('#00ff00','#00ffff'))

#그래프에 범례를 추가 하십시오
barplot(t10,main='월즈 TOP10 선수',beside=T,col=c('#00ff00','#00ffff'),legend.text = T)

#Top50에 있는 선수의 소속팀 분포를 pie 차트로 나타내시오.
tt50<-world[1:50,2]
tt50
pie(table(tt50),main='월즈')