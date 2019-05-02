# 7 Luglio 2018

# Aggregazione finale

# Prima di far girare gli algoritmi
Abbandono_Sportivo <- read.csv('Dataset/Abbandono Sportivo.csv', header = TRUE, sep = ',')

# Subito dopo l'algortimo di Camilla
a$Casi <- Casi

# Scrittura del risultato degli algoritmi con la colonna dei casi
saveRDS(a, "Dataset_colonne_aggregate_e_casi.rds")

# Creazione dataset finale

a_aggr <- a[,c(1,3,4,10,12:16,20,26,29,31,38,45,50,55,63,65,66,75:77,86,89,91:126,233,238,271,273,
               280,284,286,293,297,302,307,311,313,315,317,356,413,418,424,426,433,437,439,446,447,
               455,460,464,466,468,470,480,597,603,636,638,645,649,651,658,662,667,672,676,678,680,
               682,721,778,783,789,791,798,802,804,811,815,820,825,829,831,833,835,845,961,966,999,
               1001,1008,1012,1014,1021,1025,1030,1035,1039,1041,1043,1050,1089,1202:1268,1271)]

saveRDS(a_aggr, "Dataset_primo_filtraggio.rds")

a_first <- a_aggr[which(a_aggr$percorso == "1"), c(1:77,142:208,210)]
a_first_one <- a_aggr[which(a_aggr$percorso == "1.1"), c(1:61,78:93,142:208,210)]
a_second <- a_aggr[which(a_aggr$percorso == "2"), c(1:61,94:109,142:208,210)]
a_second_one <- a_aggr[which(a_aggr$percorso == "2.1"), c(1:61,110:125,142:208,210)]
a_third <- a_aggr[which(a_aggr$percorso == "3"), c(1:61,126:208,210)]


i <- 0
new_names <- c()
for (i in 1:145) {
  new_name <- paste("Q",as.character(i),sep = "")
  new_names[i] <- new_name
}

colnames(a_first) <- new_names
colnames(a_first_one) <- new_names
colnames(a_second) <- new_names
colnames(a_second_one) <- new_names
colnames(a_third) <- new_names

a_final <- rbind(a_first, a_first_one, a_second, a_second_one, a_third)

saveRDS(a_final, "Dataset_aggregato_corretto_senza_tempo.rds")


