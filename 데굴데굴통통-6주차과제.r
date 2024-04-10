setwd('C:/r')
library(ggplot2)
worlds <- read.csv('worlds.csv', header=T)

#경기수가 100경기 이상인 선수들을 구하여 csv파일에 저장하라라
over_100 <- subset(worlds, 경기수 > 100)
write.csv(over_100, 'over_100game_player.csv', row.names = F, fileEncoding = "cp949")

#소환사명을 입력하면 선수의 정보를 알려주는 기능을 구현해라라 
library(svDialogs)
player <- dlgInput('소환사 명을 입력하세요')$res
state <- subset(worlds, 소환사명 == player)
state

#sink함수를 활용하여 Fnatic소속의 선수들의 정보를 Fnatic.txt파일로 저장하라
Fnatic <- subset(worlds, 소속 == 'Fnatic')
sink('Fnatic.txt')
Fnatic
sink()