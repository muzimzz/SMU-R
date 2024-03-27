position <- factor( c('top', 'jg', 'mid', 'ad' ,'sup') , levels=c('top', 'jg', 'mid', 'ad' ,'sup') )

GEN.roster <- c('Jihun', 'Canyon', 'Chovy', 'Peyz', 'Lehends')
GEN <- position
names(GEN) <- GEN.roster

T1.roster <- c('Zeus', 'Oner', 'Faker', 'Gumayusi', 'Keria')
T1 <- position
names(T1) <- T1.roster

HLE.roster <- c('Doran', 'Peanut', 'Zeka', 'Viper', 'Delight')
HLE <- position
names(HLE) <- HLE.roster

KT.roster <- c('PerfecT', 'Pyosik', 'Bdd', 'Deft', 'BeryL')
KT <- position
names(KT) <- KT.roster

DK.roster <- c('Kingen', 'Lucid', 'ShowMaker', 'Aiming', 'Kellin')
DK <- position
names(DK) <- DK.roster

KDF.roster <- c('Dudu', 'Cuzz', 'BuLLDoG', 'Bull', 'Quantum')
KDF <- position
names(KDF) <- KDF.roster

BRO.roster <- c('Morgan', 'GIDEON', 'Karis', 'Envyy', 'Effort')
BRO <- position
names(BRO) <- BRO.roster

DRX.roster <- c('Rascal', 'Sponge', 'SeTab', 'Teddy', 'Pleata')
DRX <- position
names(DRX) <- DRX.roster

FOX.roster <- c('Clear', 'Willer', 'Clozer', 'Hena', 'Execute')
FOX <- position
names(FOX) <- FOX.roster

NS.roster <- c('DnDn', 'Sylvie', 'FIESTA', 'Jiwoo', 'Peter')
NS <- position
names(NS) <- NS.roster


teams <- c('GEN', 'T1', 'HLE', 'KT', 'DK', 'KDF', 'BRO' ,'DRX', 'FOX', 'NS')
standings <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
playoff <- c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE)
roster <- list(GEN = GEN.roster, T1 = T1.roster, HLE = HLE.roster, KT = KT.roster, DK = DK.roster, 
               KDF = KDF.roster, BRO = BRO.roster, DRX = DRX.roster, FOX = FOX.roster, NS = NS.roster)
names(standings) <- teams   
names(playoff) <- teams          


TEAM_LIST <- list(teams, standings, playoff, roster)

# 플레이오프에 실패한 팀을 출력하시오
names(playoff[playoff == FALSE])

# 상위 3팀을 출력하시오
names(standings[standings <= 3])

# GEN팀의 'top'포지션을 맡은 선수를 출력하시오
names(GEN[position=='top'])