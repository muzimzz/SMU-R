# 2024�� 3�� 19�� ���� LCK���� 10������ ���и� ����
# �÷��̿����� ������ ���� 5���� �·��� ������������ �����Ͽ� ����Ͻÿ�

# T1 = 13�� 3��
# HLE = 13�� 3��
# FOX = 5�� 11��
# KT = 10�� 6��
# DK = 9�� 7��
# NS 3�� 13��
# GEN = 15�� 1��
# KDF = 6�� 10��
# FOX = 5�� 11��
# BRO = 3�� 13��

Team <- c("GEN", "HLE", "KT", "DRX", "T1", 'KDF', "NS", "BRO", "FOX", "DK")
wins <- c(15, 13, 10, 3, 13, 6, 3, 3, 5, 9)
games <- rep(16, times=length(Team))

names(wins) <- Team

winning_rate <- (wins / games) * 100
winning_rate_sorted <- sort(winning_rate, decreasing = TRUE)

winning_rate_sorted[1:5]