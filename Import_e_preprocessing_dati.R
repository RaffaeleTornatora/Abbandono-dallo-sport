# 22 Giugno 2018

# Progetto Sport Data Science Lab

# Split del dataset nei vari Scenari proposti dalla psicologa
# E prime analisi di preprocessing

# Import ed esplorazione del dataset
data <- read.csv('Dataset/Abbandono Sportivo.csv', header = TRUE, sep = ',')
data_ass <- read.csv('Dataset/CollectorList.csv', header = TRUE, sep = ',') 
# Il dataset contiene 3356 osservazioni e 1270 variabili

# Dal dataset notiamo che la seconda colonna contiene un solo id, chiamato collector_id, che
# che probabilmente si riferisce all'unico questionario posto. Quindi tale riga può essere 
# eliminata:
data <- data[,-c(2)]
# Si vede inoltre che abbiamo l'indirizzo ip della macchina con cui è stato effettuato il test e alcune
# informazioni che sono state rese anonime a causa probabilmente di privacy; possiamo togliere anche
# queste colonne:
data <- data[,-c(2:8)]

# Split del dataset nei vari Scenari:

ids <- data$respondent_id

# CASO 1: Ragazzo che ha fatto sempre lo stesso sport, a 17 anni lo faceva ancora e ha pensato di
#         abbandonarlo
Case_one <- data.frame(ids)
# Dati anagrafici
Case_one[,2:22] <- data[,2:22]
# Dati generici
Case_one[,23:80] <- data[,23:80]
# Domanda 21: selezionare righe con la risposta sì (colonna 79)
i <- 1
Case_one[,79] <- as.character(Case_one[,79])
for (i in 1:3355) {
  if (Case_one[i,79] == "") {
    Case_one <- Case_one[-c(i),]
  }
}
Case_one[,79] <- as.factor(Case_one[,79])
# Info sullo sport
Case_one[,81:122] <- data[,81:122]
# Domanda 25: selezionare righe con la prima risposta (colonna 119)
Case_one[,119] <- as.character(Case_one[,119])
for (i in 1:2900) {
  if (Case_one[i,119] == "") {
    Case_one <- Case_one[-c(i),]
  }
}
Case_one[,119] <- as.factor(Case_one[,119])
# ----------------------------------------------------------------
Case_one[,123:130] <- data[,123:130]
# Domanda 28: selezionare righe con la risposta sì (colonna 129)
Case_one[,129] <- as.character(Case_one[,129])
for (i in 1:359) {
  if (Case_one[i,129] == "") {
    Case_one <- Case_one[-c(i),]
  }
}
Case_one[,129] <- as.factor(Case_one[,129])
# Momento Critico
Case_one[,131:218] <- data[,131:218]
# Impegno Scolastico
Case_one[,219:235] <- data[,219:235]
# Società e allenatore
Case_one[,236:256] <- data[,236:256]
# Compagni di squadra
Case_one[,257:262] <- data[,257:262]
# Genitori
Case_one[,263:318] <- data[,263:318]
# Autoefficacia
Case_one[,319:335] <- data[,319:335]
# Gestione del match (risposta sì alla domanda 63, colonna 334)
Case_one[,336:347] <- data[,336:347]
# Sport divertimento
Case_one[,348:363] <- data[,348:363]
# Conclusione
Case_one[,364:440] <- data[,1184:1260]

# Salvataggio del caso
write.csv(Case_one, file = "Caso_uno.csv", sep = ",")
write.csv(Case_one, "Primo_caso.csv")

# Caso 1.1: Ragazzo che ha fatto sempre lo stesso sport, a 17 anni lo praticava ancora e non ha mai 
#           pensato di abbandonarlo
Case_one_one <- data.frame(ids)
# Dati anagrafici
Case_one_one[,2:22] <- data[,2:22]
# Dati generici
Case_one_one[,23:80] <- data[,23:80]
# Domanda 21: selezionare righe con la risposta sì (colonna 79)
Case_one_one[,79] <- as.character(Case_one_one[,79])
for (i in 1:3355) {
  if (Case_one_one[i,79] == "") {
    Case_one_one <- Case_one_one[-c(i),]
  }
}
Case_one_one[,79] <- as.factor(Case_one_one[,79])
# Info sullo sport
Case_one_one[,81:122] <- data[,81:122]
# Domanda 25: selezionare righe con la prima risposta (colonna 119)
Case_one_one[,119] <- as.character(Case_one_one[,119])
for (i in 1:2900) {
  if (Case_one_one[i,119] == "") {
    Case_one_one <- Case_one_one[-c(i),]
  }
}
Case_one_one[,119] <- as.factor(Case_one_one[,119])
# ----------------------------------------------------------------
Case_one_one[,123:130] <- data[,123:130]
# Domanda 28: selezionare righe con la risposta no (colonna 130)
Case_one_one[,130] <- as.character(Case_one_one[,130])
for (i in 1:178) {
  if (Case_one_one[i,130] == "") {
    Case_one_one <- Case_one_one[-c(i),]
  }
}
Case_one[,130] <- as.factor(Case_one[,130])
# Info sullo sport
Case_one_one[,131:171] <- data[,364:404]
# Impegno scolastico
Case_one_one[,172:182] <- data[,405:415]
# Genitori
Case_one_one[,183:238] <- data[,416:471]
# Sport e divertimento
Case_one_one[,239:254] <- data[,472:487]
# Conclusione
Case_one_one[,255:331] <- data[,1184:1260]

# Salvataggio del caso
write.csv(Case_one_one, file = "Caso_uno_uno.csv", sep = ",")
write.csv(Case_one_one, file = "Primo_caso_2.csv")

# Caso 2: Ragazzo che ha fatto più di uno sport ma faceva ancora il suo sport significativo a 17 anni.
#         Ha pensato di abbandonarlo.
Case_two <- data.frame(ids)
# Dati anagrafici
Case_two[,2:22] <- data[,2:22]
# Dati generici
Case_two[,23:80] <- data[,23:80]
# Domanda 21: selezionare righe con la risposta sì (colonna 79)
Case_two[,79] <- as.character(Case_two[,79])
for (i in 1:3355) {
  if (Case_two[i,79] == "") {
    Case_two <- Case_two[-c(i),]
  }
}
Case_two[,79] <- as.factor(Case_two[,79])
# Info sullo sport
Case_two[,81:122] <- data[,81:122]
# Domanda 25: selezionare righe con la terza risposta (colonna 121)
Case_two[,121] <- as.character(Case_two[,121])
for (i in 1:2900) {
  if (Case_two[i,121] == "") {
    Case_two <- Case_two[-c(i),]
  }
}
Case_two[,121] <- as.factor(Case_two[,121])
# -----------------------------------------------------------------
Case_two[,123:130] <- data[,488:495]
# Domanda 90: selezionare righe con la risposta sì (colonna 129)
Case_two[,129] <- as.character(Case_two[,129])
for (i in 1:395) {
  if (Case_two[i,129] == "") {
    Case_two <- Case_two[-c(i),]
  }
}
Case_two[,129] <- as.factor(Case_two[,129])
# Momento critico
Case_two[,131:218] <- data[,496:583]
# Impegno scolastico
Case_two[,219:235] <- data[,584:600]
# Società e allenatore
Case_two[,236:256] <- data[,601:621]
# Compagni di squadra
Case_two[,257:262] <- data[,622:627]
# Genitori
Case_two[,263:318] <- data[,628:683]
# Autoefficacia
Case_two[,319:335] <- data[,684:700]
# Gestione del match
Case_two[,336:347] <- data[,701:712]
# Sport e divertimento
Case_two[,348:363] <- data[,713:728]
# Conclusione
Case_two[,364:440] <- data[,1184:1260]

# Salvataggio del caso
write.csv(Case_two, file = "Caso_due.csv", sep = ",")
write.csv(Case_two, file = "Secondo_caso.csv")

# Caso 2.1: Ragazzo che ha fatto più di uno sport ma faceva ancora il suo sport significativo a 17 anni.
#           Non ha mai pensato di abbandonarlo.
Case_two_one <- data.frame(ids)
# Dati anagrafici
Case_two_one[,2:22] <- data[,2:22]
# Dati generici
Case_two_one[,23:80] <- data[,23:80]
# Domanda 21: selezionare righe con la risposta sì (colonna 79)
Case_two_one[,79] <- as.character(Case_two_one[,79])
for (i in 1:3355) {
  if (Case_two_one[i,79] == "") {
    Case_two_one <- Case_two_one[-c(i),]
  }
}
Case_two_one[,79] <- as.factor(Case_two_one[,79])
# Info sullo sport
Case_two_one[,81:122] <- data[,81:122]
# Domanda 25: selezionare righe con la terza risposta (colonna 121)
Case_two_one[,121] <- as.character(Case_two_one[,121])
for (i in 1:2900) {
  if (Case_two_one[i,121] == "") {
    Case_two_one <- Case_two_one[-c(i),]
  }
}
Case_two_one[,121] <- as.factor(Case_two_one[,121])
# -----------------------------------------------------------------
Case_two_one[,123:130] <- data[,488:495]
# Domanda 90: selezionare righe con la risposta no (colonna 130)
Case_two_one[,130] <- as.character(Case_two_one[,130])
for (i in 1:1039) {
  if (Case_two_one[i,130] == "") {
    Case_two_one <- Case_two_one[-c(i),]
  }
}
Case_two_one[,130] <- as.factor(Case_two_one[,130])
# Info sullo sport
Case_two_one[,131:171] <- data[,729:769]
# Impegno scolastico
Case_two_one[,172:182] <- data[,770:780]
# Genitori
Case_two_one[,183:238] <- data[,781:836]
# Sport e divertimento
Case_two_one[,239:254] <- data[,837:852]
# Conclusione
Case_two_one[,255:331] <- data[,1184:1260]

# Salvataggio del caso
write.csv(Case_two_one, file = "Caso_due_uno.csv", sep = ",")
write.csv(Case_two_one, file = "Secondo_caso_2.csv")

# Caso 3: Ragazzo che ha fatto uno o più sport tra i 9 e i 17 anni ma ha abbandonato quello significativo
#         prima dei 17
Case_three_one <- data.frame(ids)
# Dati anagrafici
Case_three_one[,2:22] <- data[,2:22]
# Dati generici
Case_three_one[,23:80] <- data[,23:80]
# Domanda 21: selezionare righe con la risposta sì (colonna 79)
Case_three_one[,79] <- as.character(Case_three_one[,79])
for (i in 1:2903) {
  if ((Case_three_one[i,79] == "") | (is.na(Case_three_one[i,79]))) {
    Case_three_one <- Case_three_one[-c(i),]
  }
}
Case_three_one[,79] <- as.factor(Case_three_one[,79])
# Info sullo sport
Case_three_one[,81:122] <- data[,81:122]
# Domanda 25: selezionare righe con la seconda e la quarta risposta (colonne 120 e 122)
Case_three_one[,120] <- as.character(Case_three_one[,120])
for (i in 1:2900) {
  if ((Case_three_one[i,120] == "") | (is.na(Case_three_one[i,120]))) {
    Case_three_one <- Case_three_one[-c(i),]
  }
}
Case_three_one[,120] <- as.factor(Case_three_one[,120])
# --------------------------------------------------------------------------------------
Case_three_one[,123:216] <- data[,853:946]
# Impegno scolastico
Case_three_one[,217:233] <- data[,947:963]
# Società e allenatore
Case_three_one[,234:254] <- data[,964:984]
# Compagni di squadra
Case_three_one[,255:260] <- data[,985:990]
# Genitori
Case_three_one[,261:321] <- data[,991:1051]
# Autoefficacia
Case_three_one[,322:338] <- data[,1052:1068]
# Gestione del match
Case_three_one[,339:350] <- data[,1069:1080]
# Sport e divertimento
Case_three_one[,351:366] <- data[,1081:1096]
# Conclusione
Case_three_one[,367:443] <- data[,1184:1260]

# Salvataggio del caso
write.csv(Case_three_one, file = "Terzo_caso_1.csv", sep = ",")

# ----------------------------------------------------------

Case_three_two <- data.frame(ids)
# Dati anagrafici
Case_three_two[,2:22] <- data[,2:22]
# Dati generici
Case_three_two[,23:80] <- data[,23:80]
# Domanda 21: selezionare righe con la risposta sì (colonna 79)
Case_three_two[,79] <- as.character(Case_three_two[,79])
for (i in 1:3355) {
  if ((Case_three_two[i,79] == "") | (is.na(Case_three_two[i,79]))) {
    Case_three_two <- Case_three_two[-c(i),]
  }
}
Case_three_two[,79] <- as.factor(Case_three_two[,79])
# Info sullo sport
Case_three_two[,81:122] <- data[,81:122]
# Domanda 25: selezionare righe con la seconda e la quarta risposta (colonne 120 e 122)
Case_three_two[,122] <- as.character(Case_three_two[,122])
for (i in 1:2900) {
  if ((Case_three_two[i,122] == "") | (is.na(Case_three_two[i,122]))) {
    Case_three_two <- Case_three_two[-c(i),]
  }
}
Case_three_two[,122] <- as.factor(Case_three_two[,122])
# --------------------------------------------------------------------------------------
Case_three_two[,123:216] <- data[,853:946]
# Impegno scolastico
Case_three_two[,217:233] <- data[,947:963]
# Società e allenatore
Case_three_two[,234:254] <- data[,964:984]
# Compagni di squadra
Case_three_two[,255:260] <- data[,985:990]
# Genitori
Case_three_two[,261:321] <- data[,991:1051]
# Autoefficacia
Case_three_two[,322:338] <- data[,1052:1068]
# Gestione del match
Case_three_two[,339:350] <- data[,1069:1080]
# Sport e divertimento
Case_three_two[,351:366] <- data[,1081:1096]
# Conclusione
Case_three_two[,367:443] <- data[,1184:1260]

# Salvataggio del caso
write.csv(Case_three_two, file = "Terzo_caso_2.csv", sep = ",")

Case_three_aggr <- rbind.data.frame(Case_three_one, Case_three_two)
write.csv(Case_three_aggr, file = "Terzo_caso.csv")

# Creazione colonna dei vari casi per il dataset completo
Indici_primo_caso <- Primo_caso$X1
i <- 0
ids_primo_caso <- c(0)
for(i in 1:173) {
  ids_primo_caso[i] <- data$respondent_id[Indici_primo_caso[i]]
}
Primo_caso <- Primo_caso[,-c(1:2)]
Primo_caso[,441] <- ids_primo_caso

ids_primo_caso_2 <- Primo_caso_2$ids
ids_secondo_caso <- Secondo_caso$ids
ids_secondo_caso_2 <- Secondo_caso_2$ids
ids_terzo_caso <- Terzo_caso$ids

Casi_dataset <- data.frame(ids)

for (i in 1:3356) {
  id <- data$respondent_id[i]
  in_primo_caso <- id %in% ids_primo_caso
  in_primo_caso_2 <- id %in% ids_primo_caso_2
  in_secondo_caso <- id %in% ids_secondo_caso
  in_secondo_caso_2 <- id %in% ids_secondo_caso_2
  in_terzo_caso <- id %in% ids_terzo_caso
  if (in_primo_caso) {
    Casi_dataset$caso[i] <- '1'
  }
  if (in_primo_caso_2) {
    Casi_dataset$caso[i] <- '1.1'
  }
  if (in_secondo_caso) {
    Casi_dataset$caso[i] <- '2'
  }
  if (in_secondo_caso_2) {
    Casi_dataset$caso[i] <- '2.1'
  }
  if (in_terzo_caso) {
    Casi_dataset$caso[i] <- '3'
  }  
} # Fine for

write_csv(Casi_dataset, "Casi.csv")

# Aggregazione dei vari casi secondo le domande del questionario 
# comuni ad ognuno di essi
