# 2024년 3월 19일 기준 LCK출전 10개팀의 승패를 토대로
# 플레이오프에 진출할 상위 5팀의 승률을 내림차순으로 정렬하여 출력하시오

# T1 = 13승 3패
# HLE = 13승 3패
# FOX = 5승 11패
# KT = 10승 6패
# DK = 9승 7패
# NS 3승 13패
# GEN = 15승 1패
# KDF = 6승 10패
# FOX = 5승 11패
# BRO = 3승 13패

Team <- c("GEN", "HLE", "KT", "DRX", "T1", 'KDF', "NS", "BRO", "FOX", "DK")
wins <- c(15, 13, 10, 3, 13, 6, 3, 3, 5, 9)
games <- rep(16, times=length(Team))

names(wins) <- Team

winning_rate <- (wins / games) * 100
winning_rate_sorted <- sort(winning_rate, decreasing = TRUE)

winning_rate_sorted[1:5]