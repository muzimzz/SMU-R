# data: name/kill/death/assist/POGpoint/team/position
Chovy <- c(177, 63, 225) #1300 GEN mid
Faker <- c(151, 77, 288) #1100 T1 mid
Deft <- c(195, 98, 258) #400 KT ad
Showmaker<- c(145, 91, 217) #800 DK mid
Zeka<- c(185, 66, 230) #300 HLE mid
Kiin <- c(121, 68, 201) #1000 GEN ad
Keria <- c(70, 74, 373) #600 T1 sup
Canyon <- c(67, 63, 355) #1000 GEN jg
Gumayusi <- c(170, 76, 260) #300 T1 ad
Zeus <- c(146, 93, 188) #600 T1 top

player <- matrix(c(Chovy, Faker, Deft, Showmaker, Zeka, Kiin, Keria, Canyon, Gumayusi, Zeus), nrow = 10, byrow = T)
name <- c('Chovy', 'Faker', 'Deft', 'Showmaker', 'Zeka', 'Kiin', 'Keria', 'Canyon', 'Gumayusi', 'Zeus')
data <- c('kill', 'death', 'assist')
rownames(player) <- name
colnames(player) <- data

# 킬 수가 가장 많은 플레이어의 킬 수 구하기
kill_sort <- sort(player[,c(1)], decreasing = T)
kill_sort[1]

# kda가 5 이하인 선수의 정보만 출력
# kda: 킬 수와 어시스트 수의 합을 데스 수로 나눈 수치
subset(player, (player[1]+player[3])/player[2] <= 5)

# POGpoint 추가하기
POGpoint <- c(1300, 1100, 400, 800, 300, 1000, 600, 1000, 300, 600)
player <- cbind(player, POGpoint)

# POGpoint가 평균 이상인 선수의 정보만 출력
POGpoint_mean <- mean(player[,c(4)])
subset(player, POGpoint >= POGpoint_mean)

# 팀, 포지션 정보 추가하기
player <- data.frame(player)
team <- c('GEN', 'T1', 'KT', 'DK', 'HLE', 'GEN', 'T1', 'GEN', 'T1', 'T1')
position <- c('mid', 'mid', 'ad' ,'mid', 'mid', 'ad', 'sup', 'jg', 'ad', 'top')
player <- cbind(player, team, position)

# position이 mid인 선수의 정보만 출력
subset(player, position == 'mid')

# GEN팀에 소속한 선수의 정보만 출력
subset(player, team == 'GEN')