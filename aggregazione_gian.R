
Abbandono_Sportivo$`Sei maschio o femmina?` [is.na(Abbandono_Sportivo$`Sei maschio o femmina?`)]<-"Femmina"
Abbandono_Sportivo$`Scuola superiore che frequenti o hai frequentato:`[!is.na(Abbandono_Sportivo$`Scuola superiore che frequenti o hai frequentato:`)]<-"1"
Abbandono_Sportivo$`Scuola superiore che frequenti o hai frequentato:`[which(Abbandono_Sportivo$X17=="Istituto Tecnico")]<-"2"
Abbandono_Sportivo$`Scuola superiore che frequenti o hai frequentato:`[which(Abbandono_Sportivo$X18=="Istituto Professionale")]<-"3"
Abbandono_Sportivo$`Scuola superiore che frequenti o hai frequentato:`[which(Abbandono_Sportivo$X19=="Altro")]<-"4"

Abbandono_Sportivo$`Titolo di studio raggiunto`[which(Abbandono_Sportivo$X21=="Licenza Media Inferiore")]<-"Licenza Media Inferiore"
Abbandono_Sportivo$`Titolo di studio raggiunto`[which(Abbandono_Sportivo$X22=="Diploma di scuola media superiore (Liceo)")]<-"Diploma di scuola media superiore (Liceo)"
Abbandono_Sportivo$`Titolo di studio raggiunto`[which(Abbandono_Sportivo$X23=="Diploma di scuola media superiore (Istituto Tecnico o Professionale)")]<-"Diploma di scuola media superiore (Istituto Tecnico o Professionale)"
Abbandono_Sportivo$`Titolo di studio raggiunto`[which(Abbandono_Sportivo$X24=="Laurea")]<-"Laurea"

Abbandono_Sportivo$Attualmente...[which(Abbandono_Sportivo$X27=="Studi")]<-"Studi"


indici <- is.na(Abbandono_Sportivo[,29])
indici_neg <- !is.na(Abbandono_Sportivo[,29])
# Qui ho messo 29, ma bisogna mettere quella sugli infortuni temporanei
# Mi dà problemi a scrivere la stringa perchè alla fine c'è un punto di domanda, quindi ho messo il numero della colonna
Abbandono_Sportivo[indici,29]<- "No"
Abbandono_Sportivo[indici_neg,29]<- "Si"

Abbandono_Sportivo$`Titolo di studio di tua mamma`[!is.na(Abbandono_Sportivo$`Titolo di studio di tua mamma`)]<-"1"
Abbandono_Sportivo$`Titolo di studio di tua mamma`[which(Abbandono_Sportivo$X32=="Licenza Media Inferiore")]<-"2"
Abbandono_Sportivo$`Titolo di studio di tua mamma`[which(Abbandono_Sportivo$X33=="Diploma di scuola media superiore (Liceo)")]<-"3"
Abbandono_Sportivo$`Titolo di studio di tua mamma`[which(Abbandono_Sportivo$X34=="Diploma di scuola media superiore (Istituto Tecnico o Professionale)")]<-"4"
Abbandono_Sportivo$`Titolo di studio di tua mamma`[which(Abbandono_Sportivo$X35=="Laurea")]<-"5"
Abbandono_Sportivo$`Titolo di studio di tua mamma`[which(Abbandono_Sportivo$X36=="Non lo so")]<-"6"
Abbandono_Sportivo$`Titolo di studio di tua mamma`[!is.na(Abbandono_Sportivo$X37)]<-"7"

Abbandono_Sportivo$`Titolo di studio di tuo papà`[!is.na(Abbandono_Sportivo$`Titolo di studio di tuo papà`)]<-"1"
Abbandono_Sportivo$`Titolo di studio di tuo papà`[which(Abbandono_Sportivo$X39=="Licenza Media Inferiore")]<-"2"
Abbandono_Sportivo$`Titolo di studio di tuo papà`[which(Abbandono_Sportivo$X40=="Diploma di scuola media superiore (Liceo)")]<-"3"
Abbandono_Sportivo$`Titolo di studio di tuo papà`[which(Abbandono_Sportivo$X41=="Diploma di scuola media superiore (Istituto Tecnico o Professionale)")]<-"4"
Abbandono_Sportivo$`Titolo di studio di tuo papà`[which(Abbandono_Sportivo$X42=="Laurea")]<-"5"
Abbandono_Sportivo$`Titolo di studio di tuo papà`[which(Abbandono_Sportivo$X43=="Non lo so")]<-"6"
Abbandono_Sportivo$`Titolo di studio di tuo papà`[!is.na(Abbandono_Sportivo$X44)]<-"7"

Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`[!is.na(Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`)]<-"0"
Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`[which(Abbandono_Sportivo$X46=="1")]<-"1"
Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`[which(Abbandono_Sportivo$X47=="2")]<-"2"
Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`[which(Abbandono_Sportivo$X48=="3")]<-"3"
Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`[which(Abbandono_Sportivo$X49=="Più di 3")]<-"4"

Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`[!is.na(Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`)]<-"0"
Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`[which(Abbandono_Sportivo$X51=="1")]<-"1"
Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`[which(Abbandono_Sportivo$X52=="2")]<-"2"
Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`[which(Abbandono_Sportivo$X53=="3")]<-"3"
Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`[which(Abbandono_Sportivo$X54=="4")]<-"4"

Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[!is.na(Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`)]<-"1"
Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[which(Abbandono_Sportivo$X56=="Papà")]<-"2"
Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[which(Abbandono_Sportivo$X57=="Fratello o sorella")]<-"3"
Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[which(Abbandono_Sportivo$X58=="Nonni")]<-"4"
Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[which(Abbandono_Sportivo$X59=="Baby sitter")]<-"5"
Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[which(Abbandono_Sportivo$X60=="Zii")]<-"6"
Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[which(Abbandono_Sportivo$X61=="Nessuno")]<-"7"
Abbandono_Sportivo$`Dopo la scuola, in genere, chi si occupava di te?`[!is.na(Abbandono_Sportivo$X62)]<-"8"

Na<- is.na(Abbandono_Sportivo$X64)
presenti <- !is.na(Abbandono_Sportivo$X64)
Abbandono_Sportivo$`Hai cambiato comune di residenza o quartiere durante il periodo delle scuole elementari e medie?`[presenti]<-"No"
Abbandono_Sportivo$`Hai cambiato comune di residenza o quartiere durante il periodo delle scuole elementari e medie?`[Na]<-"Si"

Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina a casa tua, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina a casa tua, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`)]<- "1"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina a casa tua, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X66)]<-"2"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina a casa tua, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X67)]<-"3"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina a casa tua, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X68)]<-"4"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina a casa tua, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X69)]<-"5"

colnames(Abbandono_Sportivo)[65]<- "Tempo per arrivare in palestra a piedi da casa"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`<- rep(0,nrow(Abbandono_Sportivo))


Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`[!is.na(Abbandono_Sportivo$X70)]<-"1"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`[!is.na(Abbandono_Sportivo$X71)]<-"2"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`[!is.na(Abbandono_Sportivo$X72)]<-"3"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`[!is.na(Abbandono_Sportivo$X73)]<-"4"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`[!is.na(Abbandono_Sportivo$X74)]<-"5"


Abbandono_Sportivo$X66<-Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`
Abbandono_Sportivo[,1271]<-NULL
colnames(Abbandono_Sportivo)[66]<-"Tempo per arrivare in palestra coi mezzi/auto da casa"

Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina alla tua scuola, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina alla tua scuola, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`)]<- "1"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina alla tua scuola, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X77)]<-"2"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina alla tua scuola, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X78)]<-"3"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina alla tua scuola, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X79)]<-"4"
Abbandono_Sportivo$`Tra i 9 e 17 anni… Pensa alla struttura sportiva più vicina alla tua scuola, indipendentemente dal fatto che vi praticassi sport: quanto tempo impiegavi per raggiungerla?`[!is.na(Abbandono_Sportivo$X80)]<-"5"

colnames(Abbandono_Sportivo)[76]<- "Tempo per arrivare in palestra a piedi dalla scuola"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`<- rep(0,nrow(Abbandono_Sportivo))


Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`[!is.na(Abbandono_Sportivo$X81)]<-"1"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`[!is.na(Abbandono_Sportivo$X82)]<-"2"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`[!is.na(Abbandono_Sportivo$X83)]<-"3"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`[!is.na(Abbandono_Sportivo$X84)]<-"4"
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`[!is.na(Abbandono_Sportivo$X85)]<-"5"


Abbandono_Sportivo$X77<-Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`
Abbandono_Sportivo[,1271]<-NULL
colnames(Abbandono_Sportivo)[77]<-"Tempo per arrivare in palestra coi mezzi/auto dalla scuola"

Abbandono_Sportivo$`Tra i 9 e 17 anni… Nel tuo quartiere (se vivevi in città) o nel tuo comune (se vivevi in un centro abitato di piccole dimensioni) vivevano o si allenavano dei campioni dello sport?`[!is.na(Abbandono_Sportivo$`Tra i 9 e 17 anni… Nel tuo quartiere (se vivevi in città) o nel tuo comune (se vivevi in un centro abitato di piccole dimensioni) vivevano o si allenavano dei campioni dello sport?`)]<-"Si"

Abbandono_Sportivo$`Crocetta la risposta che ti rappresenta.“Lo sport più significativo per me…`[!is.na(Abbandono_Sportivo$`Crocetta la risposta che ti rappresenta.“Lo sport più significativo per me…`)]<-"1"
Abbandono_Sportivo$`Crocetta la risposta che ti rappresenta.“Lo sport più significativo per me…`[which(Abbandono_Sportivo$X128=="…È l’unico che ho fatto tra i 9 e 17 anni ma l ho abbandonato prima dei 17 anni")]<- "2"
Abbandono_Sportivo$`Crocetta la risposta che ti rappresenta.“Lo sport più significativo per me…`[which(Abbandono_Sportivo$X129=="...È il più importante tra gli altri sport che ho praticato e a 17 anni lo praticavo ancora")]<-"3"
Abbandono_Sportivo$`Crocetta la risposta che ti rappresenta.“Lo sport più significativo per me…`[which(Abbandono_Sportivo$X130=="...È il più importante tra gli altri sport che ho praticato e l'ho abbandonato prima dei 17 anni")]<-"4"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X234=="2. Abbastanza in disaccordo;")]<- "2. Abbastanza in disaccordo;"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X235=="3. Né in disaccordo né in accordo;")]<- "3. Né in disaccordo né in accordo;"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X236=="4. Abbastanza d'accordo")]<- "4. Abbastanza d'accordo"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X237=="5. Completamente in accordo")]<- "5. Completamente in accordo"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`)] <- "0"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?` [which(Abbandono_Sportivo$X239=="1 ora")]<-"1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X240=="2 ore")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X241=="3 ore")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X242=="4 ore")]<-"4"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X243=="Più di 4 ore")]<-"5"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma lavorava?`[which(Abbandono_Sportivo$X272=="No")]<-"No"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`)]<- "1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X274=="Commerciante/Imprenditrice/Artigiana")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X275=="Impiegata")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X276=="Operaia")]<-"4"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X277=="Casalinga")]<-"5"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X278=="Docente")]<-"6"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[!is.na(Abbandono_Sportivo$X279)]<-"7"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`)]<- "1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[which(Abbandono_Sportivo$X281=="Part time")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[which(Abbandono_Sportivo$X282=="Si gestiva autonomamente")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[!is.na(Abbandono_Sportivo$X283)]<-"4"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà lavorava?`[which(Abbandono_Sportivo$X285=="No")]<-"No"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`)]<-"1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X287=="Commerciante/Imprenditore/Artigiano")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X288=="Impiegato")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X289=="Operaio")]<-"4"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X290=="Casalingo")]<-"5"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X291=="Docente")]<-"6"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[!is.na(Abbandono_Sportivo$X292)]<-"7"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`)]<-"1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[which(Abbandono_Sportivo$X294=="Part time")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[which(Abbandono_Sportivo$X295=="Si gestiva autonomamente")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[!is.na(Abbandono_Sportivo$X296)]<-"4"

#Mancano alcune correzioni
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X298=="1")]<-"1"
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X299=="2")]<-"2"
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X300=="3")]<-"3"
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X301=="Più di tre")]<-"Più di tre"

Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[which(Abbandono_Sportivo$X303=="Fratelli/ sorelle")]<-"Fratelli/ sorelle"
Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[which(Abbandono_Sportivo$X304=="Amici")]<-"Amici"
Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[which(Abbandono_Sportivo$X305=="Nessuno")]<-"Nessuno"
Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[!is.na(Abbandono_Sportivo$X306)]<-"Qualcun'altro"

agonistico<-!is.na(Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`)
svago<-!is.na(Abbandono_Sportivo$X308)
no<-!is.na(Abbandono_Sportivo$X309)
non_so<-!is.na(Abbandono_Sportivo$X310)

quali_agonistico<-which(agonistico==TRUE)
quali_svago<-which(svago==TRUE)
quali_no<-which(no==TRUE)
quali_non_so<-which(non_so==TRUE)


#il 55 ha risposto a più di una opzione
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`)]<-"Si, a livello agonistico"
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$X308)]<-"Si, per svago"
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$X309)]<-"No"
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$X311)]<-"Non lo so"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo ... I tuoi genitori (o uno di essi) ti portavano la maggior parte delle volte (es. 2 volte su 3) agli allenamenti del tuo sport significativo`[which(Abbandono_Sportivo$X312=="No")]<-"No"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … I tuoi genitori (o uno di essi) ti hanno spinto a continuare a fare proprio quello sport`[which(Abbandono_Sportivo$X314=="No")]<-"No"

Abbandono_Sportivo$`Tra i tuoi 9 e 17 anni… Quando non avevi voglia di andare ad allenarti nel tuo sport, i tuoi genitori (o uno di essi) ti convincevano o obbligavano ad andare`[which(Abbandono_Sportivo$X316=="No")]<-"No"

Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X318=="Troppo fissato")]<-"Troppo fissato"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X319=="Si arrabbiava alle gare")]<-"Si arrabbiava alle gare"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X320=="Sostenitore positivo")]<-"Sostenitore positivo"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X321=="Incoraggiante")]<-"Incoraggiante"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X322=="Indifferente")]<-"Indifferente"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X323=="Pesante")]<-"Pesante"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X324=="Ansiogeno")]<-"Ansiogeno"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X325=="Fastidioso")]<-"Fastidioso"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[!is.na(Abbandono_Sportivo$X326)]<-"Altro"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X357=="abbastanza")]<-"abbastanza"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X358=="neutrale")]<-"neutrale"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X359=="poco")]<-"poco"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X360=="per niente")]<-"per niente"

Abbandono_Sportivo$X371[which(!is.na(Abbandono_Sportivo$X371))]<-"Altro"

Abbandono_Corretto<-Abbandono_Sportivo
