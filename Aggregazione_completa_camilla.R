# creazione variabile tempo compilazione

Abbandono_Sportivo$date_created <- as.character(Abbandono_Sportivo$date_created)
Abbandono_Sportivo$date_modified <- as.character(Abbandono_Sportivo$date_modified)

ccc<-as.POSIXlt(strptime(Abbandono_Sportivo$date_created, format = c("%d/%m/%Y %H:%M:%S AM",
                                                                     "%d/%m/%Y %H:%M:%S PM")))
ccd<-as.POSIXlt(strptime(Abbandono_Sportivo$date_modified, format = c("%d/%m/%Y %H:%M:%S AM",
                                                                      "%d/%m/%Y %H:%M:%S PM")))

time<-as.numeric(difftime(ccd,ccc))
Abbandono_Sportivo$time<-time


# funzione binarizzante

zero_or_NA=function(subdataset)
  {for (i in 1:3356)
    {for (j in 1:ncol(subdataset))
      {if( all(is.na(subdataset[i,]))==FALSE)
        {if(is.na(subdataset[i,j])){
          subdataset[i,j]='0'}
        else{subdataset[i,j]='1'}}}}
  return(subdataset)}


compact_column<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (!is.na(subdataset[i,j])){
        new_column[i]<-subdataset[i,j]
      }
      
    }
  }
  return(new_column)}

a<-data.frame(Abbandono_Sportivo)


# Quale/i sport hai praticato dai 9 ai 17 anni? Binarizzazione

a[,91:125]<-zero_or_NA(a[,91:125])

# Quando hai pensato di abbandonare, il tuo sport era... Binarizzazione 

a[,485:494]<-zero_or_NA(a[,485:494])
a[,850:859]<-zero_or_NA(a[,850:859])
a[,361:370]<-zero_or_NA(a[,361:370])
a[,726:735]<-zero_or_NA(a[,726:735])
a[,1094:1103]<-zero_or_NA(a[,1094:1103])

vars<-colnames(a) # per risalire agli indici delle variabili

compact_column_sport<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]
      }
      
    }}
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k])==TRUE){y[k]<-NA}
    else{
      if(new_column[k]=='...È l’unico che ho fatto tra i 9 e i 17 anni compresi'){y[k]<-'1'}
      if (new_column[k]=='...È l’unico che ho fatto tra i 9 e 17 anni ma l ho abbandonato prima dei 17 anni'){y[k]<-'2'}
      if (new_column[k]=='...È il più importante tra gli altri sport che ho praticato e a 17 anni lo praticavo ancora'){y[k]<-'3'}
      if (new_column[k]=="...È il più importante tra gli altri sport che ho praticato e l'ho abbandonato prima dei 17 anni"){y[k]<-'4'}
    }}
  
  
  return(y)}


new<-compact_column_sport(a[,127:131])
a[,127]<-list(new)


# IMPEGNO SCOLASTICO per tutti i casi

#Sei in media sempre riuscito a conciliare l'impegno scolastico e sportivo?

new<-(compact_column(a[,233:237]))
a[,233]<-list((new))
new<-(compact_column(a[,413:417]))
a[,413]<-list(new)
new<-(compact_column(a[,778:782]))
a[,778]<-list(new)
new<-(compact_column(a[,598:602]))
a[,598]<-list(new)
new<-(compact_column(a[,961:965]))
a[,961]<-list(new)
new<-(compact_column(a[,1130:1134])) # caso 4
a[,1130]<-list(new)

new<-compact_column(a[,c(233,413,778,598,961)])
a[,233]<-new

# Quante ore di studio (nessuno ha messo pi? di 4 ore)

compact_column_hours<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]
      }
      
    }}
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k])==TRUE){y[k]<-NA}
    else{
      if(new_column[k]=='1 ora'){y[k]<-1}
      if (new_column[k]=='2 ore'){y[k]<-2}
      if (new_column[k]=='3 ore'){y[k]<-3}
      if (new_column[k]=='4 ore'){y[k]<-4}
      if (new_column[k]=='Più di 4 ore'){y[k]<-5} 
      if(new_column[k]=='Nessuna'){y[k]<-0}
    }}
    
  
  return(y)}

new<-(compact_column_hours(a[,238:242])) 
a[,238]<-list(new)
new<-(compact_column_hours(a[,418:422]))  
a[,418]<-list(new)
new<-(compact_column_hours(a[,603:607])) 
a[,603]<-list(new)
new<-(compact_column_hours(a[,783:787])) 
a[,783]<-list(new)
new<-(compact_column_hours(a[,966:970])) 
a[,966]<-list(new)
new<-(compact_column_hours(a[,1135:1139]))
a[,1135]<-list(new)

new<-(compact_column(a[,c(238,418,603,783,966,1135)]))
a[,238]<-list(new)

# GENITORI

# Tua mamma lavorava?

new<-(compact_column(a[,271:272]))
a[,271]<-list(new)
new<-(compact_column(a[,424:425]))
a[,424]<-list(new)
new<-(compact_column(a[,636:637]))
a[,636]<-list(new)
new<-(compact_column(a[,789:790]))
a[,789]<-list(new)
new<-(compact_column(a[,999:1000]))
a[,999]<-list(new)
new<-(compact_column(a[,1141:1142]))
a[,1141]<-list(new)
new<-compact_column(a[,c(271,424,636,789,999,1141)])
a[,271]<-new
# Che professione svolgeva tua mamma?

compact_column_work<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]}
      }
      
    }
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k])==TRUE){y[k]<-NA}
    else{
      if(new_column[k]=='Libera professione (avvocato, medico, commercialista, artista, carriera sportiva, ecc.)'){y[k]<-'1'}
      if (new_column[k]=='Commerciante/Imprenditrice/Artigiana'){y[k]<-'2'}
      if (new_column[k]=='Impiegata'){y[k]<-'3'}
      if (new_column[k]=='Operaia'){y[k]<-'4'}
      if (new_column[k]=='Casalinga'){y[k]<-'5'} 
      if(new_column[k]=='Docente'){y[k]<-'6'}
      else{y[k]<-'7'}}
  }
  return(y)
}

new<-(compact_column_work(a[,273:278]))
a[,273]<-list(new)
new<-(compact_column_work(a[,426:431]))
a[,426]<-list(new)
new<-(compact_column_work(a[,638:643]))
a[,638]<-list(new)
new<-(compact_column_work(a[,791:796]))
a[,791]<-list(new)
new<-(compact_column_work(a[,1001:1006]))
a[,1001]<-list(new)
new<-(compact_column_work(a[,1143:1148]))
a[,1143]<-list(new)
new<-(compact_column(a[,c(426,638,791,1001,1143)]))
a[,273]<-new
# Tua mamma era impiegata per lavoro?
cc=a[,c(426,638,791,1001,1143)]

compact_column_work2<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]
      }
      
    }}
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k])==TRUE){y[k]<-NA}
    else{
      if(new_column[k]=='Full time'){y[k]<-'1'}
      if (new_column[k]=='Part time'){y[k]<-'2'}
      if (new_column[k]=='Si gestiva autonomamente'){y[k]<-'3'}}
    }
  
  return(y)}

new<-(compact_column_work2(a[,280:282]))
a[,280]<-list(new)
new<-(compact_column_work2(a[,433:435]))
a[,433]<-list(new)
new<-(compact_column_work2(a[,645:647]))
a[,645]<-list(new)
new<-(compact_column_work2(a[,798:800]))
a[,798]<-list(new)
new<-(compact_column_work2(a[,1008:1010]))
a[,1008]<-list(new)
new<-(compact_column_work2(a[,1150:1152]))
a[,1150]<-list(new)
new<-compact_column(a[,c(280,433,645,798,1008,1150)])
a[,280]<-new

# Tuo papà lavorava?

new<-(compact_column(a[,284:286]))
a[,284]<-list(new)
new<-(compact_column(a[,437:439]))
a[,437]<-list(new)
new<-(compact_column(a[,649:651]))
a[,649]<-list(new)
new<-(compact_column(a[,802:803]))
a[,802]<-list(new)
new<-(compact_column(a[,1012:1013]))
a[,1012]<-list(new)
new<-(compact_column(a[,1154:1155]))
a[,1154]<-list(new)
new<-compact_column(a[,c(284,437,649,802,1012,1154)])
a[,284]<-new

# Che professione svolgeva tuo papà?

compact_column_work_m<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]
      }
      
    }}
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k])==TRUE){y[k]<-NA}
    else{
      if(new_column[k]=='Libera professione (avvocato, medico, commercialista, artista, carriera sportiva, ecc.)'){y[k]<-'1'}
      if (new_column[k]=='Commerciante/Imprenditore/Artigiano'){y[k]<-'2'}
      if (new_column[k]=='Impiegato'){y[k]<-'3'}
      if (new_column[k]=='Operaio'){y[k]<-'4'}
      if (new_column[k]=='Casalingo'){y[k]<-'5'} 
      if(new_column[k]=='Docente'){y[k]<-'6'}
      else{y[k]<-'7'}
    }
    
  }
  
  return(y)}

new<-(compact_column_work_m(a[,286:291]))
a[,286]<-list(new)
new<-(compact_column_work_m(a[,439:444]))
a[,439]<-list(new)
new<-(compact_column_work_m(a[,651:656]))
a[,651]<-list(new)
new<-(compact_column_work_m(a[,804:809]))
a[,804]<-list(new)
new<-(compact_column_work_m(a[,1014:1019]))
a[,1014]<-list(new)
new<-(compact_column_work_m(a[,1156:1161]))
a[,1156]<-list(new)
new<-compact_column(a[,c(286,439,651,804,1014,1156)])
a[,286]<-new

# Tuo papà era impiegato per lavoro?

new<-(compact_column_work2(a[,293:295]))
a[,293]<-list(new)
new<-(compact_column_work2(a[,446:448]))
a[,446]<-list(new)
new<-(compact_column_work2(a[,658:660]))
a[,658]<-list(new)
new<-(compact_column_work2(a[,811:813]))
a[,811]<-list(new)
new<-(compact_column_work2(a[,1021:1023]))
a[,1021]<-list(new)
new<-(compact_column_work2(a[,1163:1165]))
a[,1163]<-list(new)
new<-compact_column(a[,c(293,446,658,811,1021,1163)])
a[,293]<-new

# Quanti dei tuo fratelli hanno fatto il tuo sport?

compact_column_siblings<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]
      }
      
    }}
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k]==TRUE)){y[k]<-NA}
    else{
      if(new_column[k]=='1'){y[k]<-1}
      if (new_column[k]=='2'){y[k]<-2}
      if (new_column[k]=='3'){y[k]<-3}
      if (new_column[k]=='Nessuno'){y[k]<-0}
      if (new_column[k]=='Più di 3'){y[k]<-4}
    }
  }
  return(y)}


new<-(compact_column_siblings(a[,297:301]))
a[,297]<-list(new)
new<-(compact_column_siblings(a[,447:451]))
a[,447]<-list(new)
new<-(compact_column_siblings(a[,662:666]))
a[,662]<-list(new)
new<-(compact_column_siblings(a[,815:819]))
a[,815]<-list(new)
new<-(compact_column_siblings(a[,1025:1029]))
a[,1025]<-list(new)
new<-(compact_column_siblings(a[,1169:1173]))
a[,1169]<-list(new)
a[,297]<-compact_column(a[,c(297,447,662,815,1025,1169)])

# Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?

compact_column_influence<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]
      }
      
    }}
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k])==TRUE){y[k]<-NA}
    else{
      if(new_column[k]=='Genitori'){y[k]<-'0'}
      if (new_column[k]=='Fratelli/sorelle'){y[k]<-'2'}
      if (new_column[k]=='Amici'){y[k]<-'3'}
      if (new_column[k]=='Nessuno'){y[k]<-'4'}
      
    }
    
  }
  return(y)}

new<-(compact_column_influence(a[,302:305]))
a[,302]<-list(new)
new<-(compact_column_influence(a[,455:458]))
a[,455]<-list(new)
new<-(compact_column_influence(a[,667:670]))
a[,667]<-list(new)
new<-(compact_column_influence(a[,820:823]))
a[,820]<-list(new)
new<-(compact_column_influence(a[,1030:1033]))
a[,1030]<-list(new)
new<-(compact_column_influence(a[,1167:1170]))
a[,1167]<-list(new)
new<-compact_column(a[,c(302,455,667,820,1030,1167)])
a[,302]<-new

# Almeno uno dei tuoi genitori ha praticato il tuo sport?

compact_column_practised<-function(col){
  new_column<-rep(NA,3356)
  for (i in 1:3356){
    if(is.na(a[i,col])==FALSE){
      new_column[i]<-'Si, a livello agonistico'}
    if(is.na(a[i,col+1])==FALSE){
      new_column[i]<-'Si, per svago'}
    if(is.na(a[i,col+2])==FALSE){
      new_column[i]<-'No'
    }
  }
  return(new_column)}


new<-(compact_column_practised(307))
a[,307]<-list(new)
new<-(compact_column_practised(460))
a[,460]<-list(new)
new<-(compact_column_practised(672))
a[,672]<-list(new)
new<-(compact_column_practised(825))
a[,825]<-list(new)
new<-(compact_column_practised(1035))
a[,1035]<-list(new)
new<-compact_column(a[,c(307,460,672,825,1035)])
a[,307]<-new

# I tuoi genitori ti portavano la maggior parte delle volte agli allenamenti?

new<-(compact_column(a[,311:312]))
a[,311]<-list(new)
new<-(compact_column(a[,676:677]))
a[,676]<-list(new)
new<-(compact_column(a[,1039,1040]))
a[,1039]<-list(new)
new<-(compact_column(a[,464:465]))
a[,464]<-list(new)
new<-(compact_column(a[,829:830]))
a[,829]<-list(new)
new<-compact_column(a[,c(311,676,1039,464,829)])
a[,311]<-new

# I tuoi genitori (o uno di essi) ti hanno spinto a continuare a fare proprio quello sport?

new<-(compact_column(a[,313:314]))
a[,313]<-list(new)
new<-(compact_column(a[,678:679]))
a[,678]<-list(new)
new<-(compact_column(a[,1041:1042]))
a[,1041]<-list(new)
new<-(compact_column(a[,831:832]))
a[,831]<-list(new)
new<-(compact_column(a[,466:467]))
a[,466]<-list(new)
new<-compact_column(a[,c(313,678,1041,831,466)])
a[,313]<-new

# Quando non avevi voglia di andare ad allenarti nel tuo sport, i tuoi genitori (o uno di essi) ti convincevano o obbligavano ad andare

new<-(compact_column(a[,315:316]))
a[,315]<-list(new)
new<-(compact_column(a[,468:469]))
a[,468]<-list(new)
new<-(compact_column(a[,680:681]))
a[,680]<-list(new)
new<-(compact_column(a[,833:834]))
a[,833]<-list(new)
new<-(compact_column(a[,1043:1044]))
a[,1043]<-list(new)
new<-compact_column(a[,c(315,468,680,833,1043)])
a[,315]<-new

# Pensa a quale dei tuoi genitori ti ha seguito di pi? nello sport per te pi? significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti...

new<-(compact_column(a[,317:325]))
a[,317]<-list(new)
new<-(compact_column(a[,470:478]))
a[,470]<-list(new)
new<-(compact_column(a[,835:843]))
a[,835]<-list(new)
new<-(compact_column(a[,1050:1058]))
a[,1050]<-list(new)
new<-(compact_column(a[,682:690]))
a[,682]<-list(new)
new<-compact_column(a[,c(317,470,835,1050,682)])
a[,317]<-new

# Quando hai pensato di abbandonare lo sport per te pi? significativo, ti divertivi ad allenamento...

compact_column_fun<-function(subdataset){
  new_column<-rep(NA,nrow(subdataset))
  for (i in 1:nrow(subdataset)){
    for (j in 1:ncol(subdataset)){
      if (is.na(subdataset[i,j])==FALSE){
        new_column[i]<-subdataset[i,j]
      }
      
    }}
  y<-rep(NA,length(new_column))
  for (k in 1:length(new_column)){
    if(is.na(new_column[k])==TRUE){y[k]<-NA}
    else{
      if(new_column[k]=='Molto'){y[k]<-'1'}
      if (new_column[k]=='abbastanza'){y[k]<-'2'}
      if (new_column[k]=='poco'){y[k]<-'3'}
      if (new_column[k]=='neutrale'){y[k]<-'4'}
      if (new_column[k]=='per niente'){y[k]<-'5'}
    }
    
  }
  return(y)}

new<-(compact_column_fun(a[,356:360]))
a[,356]<-(as.ordered(new))
new<-(compact_column_fun(a[,480:484]))
a[,480]<-as.ordered((new))
new<-(compact_column_fun(a[,721:725]))
a[,721]<-as.ordered((new))
new<-(compact_column_fun(a[,845:849]))
a[,845]<-as.ordered((new))
new<-(compact_column_fun(a[,1089:1093]))
a[,1089]<-as.ordered((new))
new<-compact_column(a[,c(356,480,721,845,1089)])
a[,356]<-as.ordered(new)

# abba<-a[, c(232,237,270,272,279,283,292,296,301,306,310,312,314,316)] domande comuni


# conteggio degli na

nas=function(var){
  c=0
  for (i in 1:length(var)){
    if(is.na(var[i])==TRUE){
      c=c+1
    }
  }
  return(c)
}

for (j in 1:ncol(a)){
  print(nas(a[,j]))
}


