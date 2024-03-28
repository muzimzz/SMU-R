TEAM_LIST <- list(teams = c('GEN', 'T1', 'HLE', 'KT', 'DK', 'KDF', 'BRO' ,'DRX', 'FOX', 'NS'),
                  standings = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                  playoff = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE))

position <- factor( c('top', 'jg', 'mid', 'ad' ,'sup') )

TEAM_LIST$teams <- factor(TEAM_LIST$teams)

names(TEAM_LIST$standings) <- TEAM_LIST$teams 
names(TEAM_LIST$playoff) <- TEAM_LIST$teams 

GEN.roster <- c('Kiin', 'Canyon', 'Chovy', 'Peyz', 'Lehends')
GEN.position <- position
names(GEN.position) <- GEN.roster

T1.roster <- c('Zeus', 'Oner', 'Faker', 'Gumayusi', 'Keria')
T1.position <- position
names(T1.position) <- T1.roster

HLE.roster <- c('Doran', 'Peanut', 'Zeka', 'Viper', 'Delight')
HLE.position <- position
names(HLE.position) <- HLE.roster

KT.roster <- c('PerfecT', 'Pyosik', 'Bdd', 'Deft', 'BeryL')
KT.position <- position
names(KT.position) <- KT.roster

DK.roster <- c('Kingen', 'Lucid', 'ShowMaker', 'Aiming', 'Kellin')
DK.position <- position
names(DK.position) <- DK.roster

KDF.roster <- c('Dudu', 'Cuzz', 'BuLLDoG', 'Bull', 'Quantum')
KDF.position <- position
names(KDF.position) <- KDF.roster

BRO.roster <- c('Morgan', 'GIDEON', 'Karis', 'Envyy', 'Effort')
BRO.position <- position
names(BRO.position) <- BRO.roster

DRX.roster <- c('Rascal', 'Sponge', 'SeTab', 'Teddy', 'Pleata')
DRX.position <- position
names(DRX.position) <- DRX.roster

FOX.roster <- c('Clear', 'Willer', 'Clozer', 'Hena', 'Execute')
FOX.position <- position
names(FOX.position) <- FOX.roster

NS.roster <- c('DnDn', 'Sylvie', 'FIESTA', 'Jiwoo', 'Peter')
NS.position <- position
names(NS.position) <- NS.roster


# 플레이오프 진출에 실패한 팀을 출력하시오
names(playoff[playoff == FALSE])

# 상위 3팀을 출력하시오
names(standings[standings <= 3])

# GEN팀의 'top'포지션을 맡은 선수를 출력하시오
names(GEN[position=='top'])

# T1팀의 'mid'포지션을 맡은 선수를 출력하시오
names(T1[position=='mid'])
