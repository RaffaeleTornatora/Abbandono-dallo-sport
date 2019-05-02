# 6 settembre 2018

# Preprocessing finale: gestione missing values e dummyes degli attributi di tipo factor

# IMPORT ED ESPLORAZIONE DEI DATI
# import
dati <- readRDS("/Users/Tornetto/R/Data_Science_Lab/Progetto_Sport/Dataset/datasetnew.rds")
# esplorazione
str(dati)
# trasformazione degli attributi char in attributi factor
dati$`Sei maschio o femmina?` <- as.factor(dati$`Sei maschio o femmina?`)
dati$Nazionalità <- as.factor(dati$Nazionalità)
dati$`Scuola superiore che frequenti o hai frequentato:` <- as.factor(dati$`Scuola superiore che frequenti o hai frequentato:`)
dati$`Titolo di studio raggiunto` <- as.factor(dati$`Titolo di studio raggiunto`)
dati$Attualmente... <- as.factor(dati$Attualmente...)
dati$`Hai avuto una disabilità temporanea` <- as.factor(dati$`Hai avuto una disabilità temporanea`)
dati$`Titolo di studio di tua mamma` <- as.factor(dati$`Titolo di studio di tua mamma`)
dati$`Titolo di studio di tuo papà` <- as.factor(dati$`Titolo di studio di tuo papà`)
dati$`Dopo la scuola, in genere, chi si occupava di te?` <- as.factor(dati$`Dopo la scuola, in genere, chi si occupava di te?`)
dati[,12] <- as.factor(dati[,12])
dati$`Nel tuo quartiere (se vivevi in città)/ comune vivevano campioni dello sport?` <- as.factor(dati$`Nel tuo quartiere (se vivevi in città)/ comune vivevano campioni dello sport?`)
dati$`Tua mamma lavorava` <- as.factor(dati$`Tua mamma lavorava`)
dati$`Che professione svolgeva tua mamma` <- as.factor(dati$`Che professione svolgeva tua mamma`)
dati$`Tuo papa lavorava?` <- as.factor(dati$`Tuo papa lavorava?`)
dati$`Che professione svolgeva tuo papa` <- as.factor(dati$`Che professione svolgeva tuo papa`)
dati$`Tuo papa era impegnato per lavoro` <- as.factor(dati$`Tuo papa era impegnato per lavoro`)
dati$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?` <- as.factor(dati$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`)
dati$`I tuoi genitori ti portavano ad allenamento la maggior parte delle volte` <- as.factor(dati$`I tuoi genitori ti portavano ad allenamento la maggior parte delle volte`)
dati$`I tuoi genitori ti hanno spinto a continuare` <- as.factor(dati$`I tuoi genitori ti hanno spinto a continuare`)
dati$`Quando non avevi voglia di andare ad allenarti i tuoi genitori ti convincevano/obbligavano ad andare` <- as.factor(dati$`Quando non avevi voglia di andare ad allenarti i tuoi genitori ti convincevano/obbligavano ad andare`)
dati$`Come definiresti il genitore che più ti ha seguito nello sport?` <- as.factor(dati$`Come definiresti il genitore che più ti ha seguito nello sport?`)

str(dati) # Ora gli attributi che erano char sono factor

# conteggio missing values
NA_cols <- c()
n <- 0
m <- 0
for (n in 1:79) {
  count <- 0
  for (m in 1:3355) {
    if (is.na(dati[m,n]) | is.null(dati[m,n]))
      count <- count + 1
  }
  NA_cols[n] <- count
}

# GESTIONE MISSING VALUES
library("caret")
library("mice")
# Divisione del dataset in base al tipo di variabile: numeriche(num), binarie(bin) e factor(fac)
dati_num <- dati[,c(9,10,54,60,77,79)]
dati_bin <- dati[,c(1,5:6,12,17:52,55,57,62:64,66:76,78)]
dati_fac <- dati[,c(2:4,7:8,11,13:16,53,56,58:59,61,65)]
dati_low_fac <- dati_fac[,-c(1,12,13,15,16)]
dati_high_fac <- dati_fac[,c(1,12,13,15,16)]
# Riassegnazione nomi attributi
names_num <- c("D1","D2","D3","D4","D5","D6")
names_bin <- c("D7","D8","D9","D10","D11","D12","D13","D14","D15","D16",
               "D17","D18","D19","D20","D21","D22","D23","D24","D25","D26",
               "D27","D28","D29","D30","D31","D32","D33","D34","D35","D36",
               "D37","D38","D39","D40","D41","D42","D43","D44","D45","D46",
               "D47","D48","D49","D50","D51","D52","D53","D54","D55","D56",
               "D57","D58","D59","D60","D61","D62","D63")
names_fac <- c("D64","D65","D66","D67","D68","D69","D70","D71","D72","D73",
               "D74","D75","D76","D77","D78","D79")

colnames(dati_num) <- names_num
colnames(dati_bin) <- names_bin
colnames(dati_fac) <- names_fac

# gestione dei missing values degli attributi attraverso la libreria mice
dati_imp_num <- mice(dati_num, m=5, maxit = 50, method = 'pmm', seed = 500)
dati_imp_bin <- mice(dati_bin, m=5, maxit = 50, method = 'logreg', seed = 500)
dati_imp_fac <- mice(dati_low_fac, m=5, maxit = 50, method = 'polyreg', seed = 500)

dati_tot_num <- complete(dati_imp_num,1)
dati_tot_bin <- complete(dati_imp_bin,1)
dati_tot_fac <- complete(dati_imp_fac,1)

dati_tot <- cbind(dati_tot_num, dati_tot_bin, dati_tot_fac)
dati_tot_comp <- cbind(dati_tot_num, dati_tot_bin, dati_tot_fac, dati_high_fac)

saveRDS(dati_tot, "dati_da_binarizzare.rds")
saveRDS(dati_tot_comp, "dati_bin_con_high_fac.rds")

# Da fare domani:
dati <- readRDS("/Users/Tornetto/R/Data_Science_Lab/Progetto_Sport/dati_da_binarizzare.rds")
#scomposizione delle variabili in numeriche, binarie e factors
dati_num <- dati[,c(1:6)]
dati_bin <- dati[,c(7:63)]
dati_fac <- dati[,c(64:74)]
#rinomiazione nomi attributi delle variabili
dati_ini <- readRDS("/Users/Tornetto/R/Data_Science_Lab/Progetto_Sport/Dataset/datasetnew.rds")

num_names <- colnames(dati_ini[,c(9,10,54,60,77,79)])
bin_names <- colnames(dati_ini[,c(1,5:6,12,17:52,55,57,62:64,66:76,78)])
fac_names <- colnames(dati_ini[,c(2:4,7:8,11,13:16,53,56,58:59,61,65)])
fac_names <- fac_names[-c(1,12,13,15,16)]

colnames(dati_num) <- num_names
colnames(dati_bin) <- bin_names
colnames(dati_fac) <- fac_names
# variabili binarie
#vedere in base ai livelli
str(dati_bin)
# D7: femmina = 0, maschio = 1
dati_bin[,1] <- ifelse(dati_bin[,1] == 'Femmina',0,1)
# D8: Studi = 0, Lavori = 1
dati_bin[,2] <- ifelse(dati_bin[,2] == 'Studi',0,1)
# Da D9 a D11: No = 0, Sì = 1
for (i in 3:5){
  dati_bin[,i] <- ifelse(dati_bin[,i] == 'No',0,1)
}
# Da D12 a D46
for (i in 6:40){
  dati_bin[,i] <- ifelse(dati_bin[,i] == '0',0,1)
}
# D47, D48
for (i in 41:42){
  dati_bin[,i] <- ifelse(dati_bin[,i] == 'No',0,1)
}
# D49, D50, D51
for (i in 43:45){
  dati_bin[,i] <- ifelse(dati_bin[,i] == 'no',0,1)
}
# Da D52 a D63
for (i in 46:57){
  dati_bin[,i] <- ifelse(dati_bin[,i] == '0',0,1)
}

str(dati_bin)

# preparazione variabili per dummyzzazione
dati_tot_fac[,6] <- as.character(dati_tot_fac[,6])
dati_tot_fac[,7] <- as.character(dati_tot_fac[,7])
dati_tot_fac[,8] <- as.character(dati_tot_fac[,8])
dati_tot_fac[,9] <- as.character(dati_tot_fac[,9])

for (i in 6:9) {
  for (j in 1:3355) {
    if (dati_tot_fac[j,i] == "1 Meno di 15 min") {
      dati_tot_fac[j,i] <- "Meno di quindici min"
    } else if (dati_tot_fac[j,i] == "2 15 min") {
      dati_tot_fac[j,i] <- "Quindici minuti"
    } else if (dati_tot_fac[j,i] == "3 60 min") {
      dati_tot_fac[j,i] <- "Sessanta minuti"
    } else {
      dati_tot_fac[j,i] <- "Più di 60 minuti"
    }
  }
}

dati_tot_fac[,6] <- as.factor(dati_tot_fac[,6])
dati_tot_fac[,7] <- as.factor(dati_tot_fac[,7])
dati_tot_fac[,8] <- as.factor(dati_tot_fac[,8])
dati_tot_fac[,9] <- as.factor(dati_tot_fac[,9])

dati_tot_fac[,10] <- as.character(dati_tot_fac[,10])

for (i in 1:3355){
  if (dati_tot_fac[i,10] == " - 5. Completamente in accordo") {
    dati_tot_fac[i,10] = "Completamente in accordo"
  } else if (dati_tot_fac[i,10] == "1. Completamente in disaccordo") {
    dati_tot_fac[i,10] = "Completamente in disaccordo"
  } else if (dati_tot_fac[i,10] == "2. Abbastanza in disaccordo") {
    dati_tot_fac[i,10] = "Abbastanza in disaccordo"
  } else if (dati_tot_fac[i,10] == "2. Abbastanza in disaccordo;") {
    dati_tot_fac[i,10] = "Abbastanza in disaccordo"
  } else if (dati_tot_fac[i,10] == "3. Né in disaccordo né in accordo") {
    dati_tot_fac[i,10] = "Nè in disaccordo nè in accordo"
  } else if (dati_tot_fac[i,10] == "3. Nè in disaccordo nè in accordo") {
    dati_tot_fac[i,10] = "Nè in disaccordo nè in accordo"
  } else if (dati_tot_fac[i,10] == "3. Né in disaccordo né in accordo;") {
    dati_tot_fac[i,10] = "Nè in disaccordo nè in accordo"
  } else if (dati_tot_fac[i,10] == "4. Abbastanza d'accordo") {
    dati_tot_fac[i,10] = "Abbastanza in accordo"
  } else if (dati_tot_fac[i,10] == "4. Abbastanza in accordo") {
    dati_tot_fac[i,10] = "Abbastanza in accordo"
  } else if (dati_tot_fac[i,10] == "5. Completamente d'accordo") {
    dati_tot_fac[i,10] = "Completamente in accordo"  
  } else 
    dati_tot_fac[i,10] = "Completamente in accordo"
}

dati_tot_fac[,10] <- as.factor(dati_tot_fac[,10])

# variabili factor
dmy <- dummyVars(" ~ .", data = dati_fac, fullRank = T)
new_dati_fac <- data.frame(predict(dmy, newdata = dati_fac))

# Unione delle variabili di ogni tipo senza missing values
dati_no_miss <- cbind(dati_num, new_dati_fac, dati_bin)

# SALVATAGGIO DEL DATASET SENZA VALORI NULLI
saveRDS(dati_no_miss, "dataset_no_missing_values.rds")

# ---------------------------------------------------------------------------------------------

# ELIMINAZIONE DELLE RIGHE CON NA NELLA VARIABILE TARGET

target_na <- c()

for (i in 1:3355) {
  if (is.na(dati[i,78])) {
    target_na <- c(target_na, i)
    print(i)
  } 
}

daset_sport <- dataset_sport[-(target_na),]
saveRDS(dataset_sport, "dataset_sport.rds")
