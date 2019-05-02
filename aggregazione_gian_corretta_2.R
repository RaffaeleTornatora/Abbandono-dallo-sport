# DATI ANAGRAFICI

Abbandono_Sportivo$Sei.maschio.o.femmina. <- as.character(Abbandono_Sportivo$Sei.maschio.o.femmina.)
Abbandono_Sportivo$Sei.maschio.o.femmina. [(Abbandono_Sportivo$Sei.maschio.o.femmina. == "")] <- "Femmina"
Abbandono_Sportivo$Sei.maschio.o.femmina. <- as.factor(Abbandono_Sportivo$Sei.maschio.o.femmina.)

Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato. <- as.character(Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato.)
Abbandono_Sportivo$X.1 <- as.character(Abbandono_Sportivo$X.1)
Abbandono_Sportivo$X.2 <- as.character(Abbandono_Sportivo$X.2)
Abbandono_Sportivo$X.3 <- as.character(Abbandono_Sportivo$X.3)
Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato. [(Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato. != "")] <- "1"
Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato. [which(Abbandono_Sportivo$X.1 == "Istituto Tecnico")] <- "2"
Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato. [which(Abbandono_Sportivo$X.2 == "Istituto Professionale")] <- "3"
Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato. [which(Abbandono_Sportivo$X.3 != "")] <- "4"
Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato. <- as.factor(Abbandono_Sportivo$Scuola.superiore.che.frequenti.o.hai.frequentato.)

Abbandono_Sportivo$Titolo.di.studio.raggiunto <- as.character(Abbandono_Sportivo$Titolo.di.studio.raggiunto)
Abbandono_Sportivo$X.4 <- as.character(Abbandono_Sportivo$X.4)
Abbandono_Sportivo$X.5 <- as.character(Abbandono_Sportivo$X.5)
Abbandono_Sportivo$X.6 <- as.character(Abbandono_Sportivo$X.6)
Abbandono_Sportivo$X.7 <- as.character(Abbandono_Sportivo$X.7)
Abbandono_Sportivo$X.8 <- as.character(Abbandono_Sportivo$X.8)
Abbandono_Sportivo$Titolo.di.studio.raggiunto [(Abbandono_Sportivo$Titolo.di.studio.raggiunto != "")] <- "1"
Abbandono_Sportivo$Titolo.di.studio.raggiunto [which(Abbandono_Sportivo$X.4 == "Licenza Media Inferiore")] <- "2"
Abbandono_Sportivo$Titolo.di.studio.raggiunto [which(Abbandono_Sportivo$X.5 == "Diploma di scuola media superiore (Liceo)")] <- "3"
Abbandono_Sportivo$Titolo.di.studio.raggiunto [which(Abbandono_Sportivo$X.6 == "Diploma di scuola media superiore (Istituto Tecnico o Professionale)")] <- "4"
Abbandono_Sportivo$Titolo.di.studio.raggiunto [which(Abbandono_Sportivo$X.7 == "Laurea")] <- "5"
Abbandono_Sportivo$Titolo.di.studio.raggiunto [(Abbandono_Sportivo$X.8 != "")] <- "6"
Abbandono_Sportivo$Titolo.di.studio.raggiunto <- as.factor(Abbandono_Sportivo$Titolo.di.studio.raggiunto)

Abbandono_Sportivo$Attualmente... <- as.character(Abbandono_Sportivo$Attualmente...)
Abbandono_Sportivo$X.9 <- as.character(Abbandono_Sportivo$X.9)
Abbandono_Sportivo$Attualmente... [which(Abbandono_Sportivo$X.9== "Studi")]<- "Studi"
Abbandono_Sportivo$Attualmente... <- as.factor(Abbandono_Sportivo$Attualmente...)

indici <- is.na(Abbandono_Sportivo[,29])
indici_neg <- !is.na(Abbandono_Sportivo[,29])
# Qui ho messo 29, ma bisogna mettere quella sugli infortuni temporanei
# Mi dà problemi a scrivere la stringa perchè alla fine c'è un punto di domanda, quindi ho messo il numero della colonna
Abbandono_Sportivo[indici,29]<- "No"
Abbandono_Sportivo[indici_neg,29]<- "Si"

# DATI GENERICI

Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma <- as.character(Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma)
Abbandono_Sportivo$X.11 <- as.character(Abbandono_Sportivo$X.11)
Abbandono_Sportivo$X.12 <- as.character(Abbandono_Sportivo$X.12)
Abbandono_Sportivo$X.13 <- as.character(Abbandono_Sportivo$X.13)
Abbandono_Sportivo$X.14 <- as.character(Abbandono_Sportivo$X.14)
Abbandono_Sportivo$X.15 <- as.character(Abbandono_Sportivo$X.15)
Abbandono_Sportivo$X.16 <- as.character(Abbandono_Sportivo$X.16)
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma [(Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma != "")] <- "1"
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma [which(Abbandono_Sportivo$X.11 == "Licenza Media Inferiore")] <- "2"
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma [which(Abbandono_Sportivo$X.12 == "Diloma di scuola media superiore (Liceo)")] <- "3"
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma [which(Abbandono_Sportivo$X.13 == "Diploma di scuola media superiore (Istituto Tecnico o Professionale)")] <- "4"
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma [which(Abbandono_Sportivo$X.14 == "Laurea")] <- "5"
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma [which(Abbandono_Sportivo$X.15 == "Non lo so")] <- "6"
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma [which(Abbandono_Sportivo$X.16 != "")] <- "7"
Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma <- as.factor(Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma)

Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà <- as.character(Abbandono_Sportivo$Titolo.di.studio.di.tua.mamma)
Abbandono_Sportivo$X.17 <- as.character(Abbandono_Sportivo$X.17)
Abbandono_Sportivo$X.18 <- as.character(Abbandono_Sportivo$X.18)
Abbandono_Sportivo$X.19 <- as.character(Abbandono_Sportivo$X.19)
Abbandono_Sportivo$X.20 <- as.character(Abbandono_Sportivo$X.20)
Abbandono_Sportivo$X.21 <- as.character(Abbandono_Sportivo$X.21)
Abbandono_Sportivo$X.22 <- as.character(Abbandono_Sportivo$X.22)
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà [(Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà != "")] <- "1"
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà [which(Abbandono_Sportivo$X.17 == "Licenza Media Inferiore")] <- "2"
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà [which(Abbandono_Sportivo$X.18 == "Diloma di scuola media superiore (Liceo)")] <- "3"
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà [which(Abbandono_Sportivo$X.19 == "Diploma di scuola media superiore (Istituto Tecnico o Professionale)")] <- "4"
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà [which(Abbandono_Sportivo$X.20 == "Laurea")] <- "5"
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà [which(Abbandono_Sportivo$X.21 == "Non lo so")] <- "6"
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà [which(Abbandono_Sportivo$X.22 != "")] <- "7"
Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà <- as.factor(Abbandono_Sportivo$Titolo.di.studio.di.tuo.papà)

Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. <- as.character(Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai.)
Abbandono_Sportivo$X.26 <- as.character(Abbandono_Sportivo$X.26)
Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. [(Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. != "")] <- "0"
Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. [which(!(is.na(Abbandono_Sportivo$X.23)))] <- "1"
Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. [which(!(is.na(Abbandono_Sportivo$X.24)))] <- "2"
Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. [which(!(is.na(Abbandono_Sportivo$X.25)))] <- "3"
Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. [which(Abbandono_Sportivo$X.26 != "")] <- "4"
Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai. <- as.factor(Abbandono_Sportivo$Quanti.fratelli.o.sorelle.hai.)

Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. <- as.character(Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua..)
Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. [(Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. != "")] <- "0"
Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. [which(!(is.na(Abbandono_Sportivo$X.27)))] <- "1"
Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. [which(!(is.na(Abbandono_Sportivo$X.28)))] <- "2"
Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. [which(!(is.na(Abbandono_Sportivo$X.29)))] <- "3"
Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. [which(!(is.na(Abbandono_Sportivo$X.30)))] <- "4"
Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua.. <- as.factor(Abbandono_Sportivo$Dai.tuoi.9.ai.17.anni..quanti.dei.tuoi.nonni.in.media.hanno.abitato.vicino.a.te..a.circa.un.quarto.d.ora.da.casa.tua..)

Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. <- as.character(Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te.)
Abbandono_Sportivo$X.31 <- as.character(Abbandono_Sportivo$X.31)
Abbandono_Sportivo$X.32 <- as.character(Abbandono_Sportivo$X.32)
Abbandono_Sportivo$X.33 <- as.character(Abbandono_Sportivo$X.33)
Abbandono_Sportivo$X.34 <- as.character(Abbandono_Sportivo$X.34)
Abbandono_Sportivo$X.35 <- as.character(Abbandono_Sportivo$X.35)
Abbandono_Sportivo$X.36 <- as.character(Abbandono_Sportivo$X.36)
Abbandono_Sportivo$X.37 <- as.character(Abbandono_Sportivo$X.37)
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. != ""] <- "1"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [which(Abbandono_Sportivo$X.31 != "")] <- "2"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [which(Abbandono_Sportivo$X.32 != "")] <- "3"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [which(Abbandono_Sportivo$X.33 != "")] <- "4"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [which(Abbandono_Sportivo$X.34 != "")] <- "5"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [which(Abbandono_Sportivo$X.35 != "")] <- "6"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [which(Abbandono_Sportivo$X.36 != "")] <- "7"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. [which(Abbandono_Sportivo$X.37 != "")] <- "8"
Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te. <- as.factor(Abbandono_Sportivo$Dopo.la.scuola..in.genere..chi.si.occupava.di.te.)

Abbandono_Sportivo$Hai.cambiato.comune.di.residenza.o.quartiere.durante.il.periodo.delle.scuole.elementari.e.medie. <- as.character(Abbandono_Sportivo$Hai.cambiato.comune.di.residenza.o.quartiere.durante.il.periodo.delle.scuole.elementari.e.medie.)
Abbandono_Sportivo$X.38 <- as.character(Abbandono_Sportivo$X.38)
Abbandono_Sportivo$Hai.cambiato.comune.di.residenza.o.quartiere.durante.il.periodo.delle.scuole.elementari.e.medie. [(Abbandono_Sportivo$Hai.cambiato.comune.di.residenza.o.quartiere.durante.il.periodo.delle.scuole.elementari.e.medie. != "")] <- "sì"
Abbandono_Sportivo$Hai.cambiato.comune.di.residenza.o.quartiere.durante.il.periodo.delle.scuole.elementari.e.medie. [which(Abbandono_Sportivo$X.38 == "X")] <- "no"
Abbandono_Sportivo$Hai.cambiato.comune.di.residenza.o.quartiere.durante.il.periodo.delle.scuole.elementari.e.medie. <- as.factor(Abbandono_Sportivo$Hai.cambiato.comune.di.residenza.o.quartiere.durante.il.periodo.delle.scuole.elementari.e.medie.)

Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. <- as.character(Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla.)
Abbandono_Sportivo$X.39 <- as.character(Abbandono_Sportivo$X.39)
Abbandono_Sportivo$X.40 <- as.character(Abbandono_Sportivo$X.40)
Abbandono_Sportivo$X.41 <- as.character(Abbandono_Sportivo$X.41)
Abbandono_Sportivo$X.42 <- as.character(Abbandono_Sportivo$X.42)
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [(Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. != "")] <- "1"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.39 != "")] <- "2"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.40 != "")] <- "3"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.41 != "")] <- "4"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.42 != "")] <- "5"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. <- as.factor(Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.a.casa.tua..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla.)

colnames(Abbandono_Sportivo) [66] <- "Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa"
Abbandono_Sportivo$X.43 <- as.character(Abbandono_Sportivo$X.43)
Abbandono_Sportivo$X.44 <- as.character(Abbandono_Sportivo$X.44)
Abbandono_Sportivo$X.45 <- as.character(Abbandono_Sportivo$X.45)
Abbandono_Sportivo$X.46 <- as.character(Abbandono_Sportivo$X.46)
Abbandono_Sportivo$X.47 <- as.character(Abbandono_Sportivo$X.47)
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa [which(Abbandono_Sportivo$X.43 != "")] <- "1"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa [which(Abbandono_Sportivo$X.44 != "")] <- "2"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa [which(Abbandono_Sportivo$X.45 != "")] <- "3"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa [which(Abbandono_Sportivo$X.46 != "")] <- "4"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa [which(Abbandono_Sportivo$X.47 != "")] <- "5"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa <- as.factor(Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.da.casa)


Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. <- as.character(Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla.)
Abbandono_Sportivo$X.48 <- as.character(Abbandono_Sportivo$X.48)
Abbandono_Sportivo$X.49 <- as.character(Abbandono_Sportivo$X.49)
Abbandono_Sportivo$X.50 <- as.character(Abbandono_Sportivo$X.50)
Abbandono_Sportivo$X.51 <- as.character(Abbandono_Sportivo$X.51)
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [(Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. != "")] <- "1"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.48 != "")] <- "2"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.49 != "")] <- "3"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.50 != "")] <- "4"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. [which(Abbandono_Sportivo$X.51 != "")] <- "5"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla. <- as.factor(Abbandono_Sportivo$Tra.i.9.e.17.anni..Pensa.alla.struttura.sportiva.più.vicina.alla.tua.scuola..indipendentemente.dal.fatto.che.vi.praticassi.sport..quanto.tempo.impiegavi.per.raggiungerla.)

colnames(Abbandono_Sportivo) [77] <- "Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola"
Abbandono_Sportivo$X.52 <- as.character(Abbandono_Sportivo$X.52)
Abbandono_Sportivo$X.53 <- as.character(Abbandono_Sportivo$X.53)
Abbandono_Sportivo$X.54 <- as.character(Abbandono_Sportivo$X.54)
Abbandono_Sportivo$X.55 <- as.character(Abbandono_Sportivo$X.55)
Abbandono_Sportivo$X.56 <- as.character(Abbandono_Sportivo$X.56)
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola [which(Abbandono_Sportivo$X.52 != "")] <- "1"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola [which(Abbandono_Sportivo$X.53 != "")] <- "2"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola [which(Abbandono_Sportivo$X.54 != "")] <- "3"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola [which(Abbandono_Sportivo$X.55 != "")] <- "4"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola [which(Abbandono_Sportivo$X.56 != "")] <- "5"
Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola <- as.factor(Abbandono_Sportivo$Tempo.per.arrivare.coi.mezzi.auto.alla.struttura.più.vicina.dalla.tua.scuola)

# INFO SULLO SPORT

Abbandono_Sportivo$Tra.i.9.e.17.anni..Nel.tuo.quartiere..se.vivevi.in.città..o.nel.tuo.comune..se.vivevi.in.un.centro.abitato.di.piccole.dimensioni..vivevano.o.si.allenavano.dei.campioni.dello.sport. <- as.character(Abbandono_Sportivo$Tra.i.9.e.17.anni..Nel.tuo.quartiere..se.vivevi.in.città..o.nel.tuo.comune..se.vivevi.in.un.centro.abitato.di.piccole.dimensioni..vivevano.o.si.allenavano.dei.campioni.dello.sport.)
Abbandono_Sportivo$X.58 <- as.character(Abbandono_Sportivo$X.58)
Abbandono_Sportivo$Tra.i.9.e.17.anni..Nel.tuo.quartiere..se.vivevi.in.città..o.nel.tuo.comune..se.vivevi.in.un.centro.abitato.di.piccole.dimensioni..vivevano.o.si.allenavano.dei.campioni.dello.sport. [(Abbandono_Sportivo$Tra.i.9.e.17.anni..Nel.tuo.quartiere..se.vivevi.in.città..o.nel.tuo.comune..se.vivevi.in.un.centro.abitato.di.piccole.dimensioni..vivevano.o.si.allenavano.dei.campioni.dello.sport. != "")] <- "sì"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Nel.tuo.quartiere..se.vivevi.in.città..o.nel.tuo.comune..se.vivevi.in.un.centro.abitato.di.piccole.dimensioni..vivevano.o.si.allenavano.dei.campioni.dello.sport. [which(Abbandono_Sportivo$X.58 == "X")] <- "no"
Abbandono_Sportivo$Tra.i.9.e.17.anni..Nel.tuo.quartiere..se.vivevi.in.città..o.nel.tuo.comune..se.vivevi.in.un.centro.abitato.di.piccole.dimensioni..vivevano.o.si.allenavano.dei.campioni.dello.sport. <- as.factor(Abbandono_Sportivo$Tra.i.9.e.17.anni..Nel.tuo.quartiere..se.vivevi.in.città..o.nel.tuo.comune..se.vivevi.in.un.centro.abitato.di.piccole.dimensioni..vivevano.o.si.allenavano.dei.campioni.dello.sport.)

Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me. <- as.character(Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me.)
Abbandono_Sportivo$X.93 <- as.character(Abbandono_Sportivo$X.93)
Abbandono_Sportivo$X.94 <- as.character(Abbandono_Sportivo$X.94)
Abbandono_Sportivo$X.95 <- as.character(Abbandono_Sportivo$X.95)
Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me. [(Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me. != "")] <- "1"
Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me. [which(Abbandono_Sportivo$X.93 != "")] <- "2"
Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me. [which(Abbandono_Sportivo$X.94 != "")] <- "3"
Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me. [which(Abbandono_Sportivo$X.95 != "")] <- "4"
Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me. <- as.factor(Abbandono_Sportivo$Crocetta.la.risposta.che.ti.rappresenta..Lo.sport.più.significativo.per.me.)

# --------------------------------------------------------------------------------------------------

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X__234=="2. Abbastanza in disaccordo;")]<- "2. Abbastanza in disaccordo;"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X__235=="3. Né in disaccordo né in accordo;")]<- "3. Né in disaccordo né in accordo;"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X__236=="4. Abbastanza d'accordo")]<- "4. Abbastanza d'accordo"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Riuscivi a conciliare l’impegno scolastico con l’impegno sportivo`[which(Abbandono_Sportivo$X__237=="5. Completamente in accordo")]<- "5. Completamente in accordo"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`)] <- "0"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?` [which(Abbandono_Sportivo$X__239=="1 ora")]<-"1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X__240=="2 ore")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X__241=="3 ore")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X__242=="4 ore")]<-"4"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`[which(Abbandono_Sportivo$X__243=="Più di 4 ore")]<-"5"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma lavorava?`[which(Abbandono_Sportivo$X__272=="No")]<-"No"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`)]<- "1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X__274=="Commerciante/Imprenditrice/Artigiana")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X__275=="Impiegata")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X__276=="Operaia")]<-"4"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X__277=="Casalinga")]<-"5"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[which(Abbandono_Sportivo$X__278=="Docente")]<-"6"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tua mamma?`[!is.na(Abbandono_Sportivo$X__279)]<-"7"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`)]<- "1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[which(Abbandono_Sportivo$X__281=="Part time")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[which(Abbandono_Sportivo$X__282=="Si gestiva autonomamente")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tua mamma era impegnata per lavoro…`[!is.na(Abbandono_Sportivo$X__283)]<-"4"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà lavorava?`[which(Abbandono_Sportivo$X__285=="No")]<-"No"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`)]<-"1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X__287=="Commerciante/Imprenditore/Artigiano")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X__288=="Impiegato")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X__289=="Operaio")]<-"4"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X__290=="Casalingo")]<-"5"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[which(Abbandono_Sportivo$X__291=="Docente")]<-"6"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Che professione svolgeva tuo papà?`[!is.na(Abbandono_Sportivo$X__292)]<-"7"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`)]<-"1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[which(Abbandono_Sportivo$X__294=="Part time")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[which(Abbandono_Sportivo$X__295=="Si gestiva autonomamente")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Tuo papà era impegnato per lavoro…`[!is.na(Abbandono_Sportivo$X__296)]<-"4"


Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[!is.na(Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`)]<-"0"
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X__298=="1")]<-"1"
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X__299=="2")]<-"2"
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X__300=="3")]<-"3"
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`[which(Abbandono_Sportivo$X__301=="Più di tre")]<-"4"

Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[!is.na(Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`)]<- "0"
Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[which(Abbandono_Sportivo$X__303=="Fratelli/ sorelle")]<-"2"
Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[which(Abbandono_Sportivo$X__304=="Amici")]<-"3"
Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[which(Abbandono_Sportivo$X__305=="Nessuno")]<-"3"
Abbandono_Sportivo$`Chi ti ha influenzato in modo determinante nella scelta del tuo sport significativo?`[!is.na(Abbandono_Sportivo$X__306)]<-"4"

agonistico<-!is.na(Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`)
svago<-!is.na(Abbandono_Sportivo$X__308)
no<-!is.na(Abbandono_Sportivo$X__309)
non_so<-!is.na(Abbandono_Sportivo$X__310)

quali_agonistico<-which(agonistico==TRUE)
quali_svago<-which(svago==TRUE)
quali_no<-which(no==TRUE)
quali_non_so<-which(non_so==TRUE)


#il 55 ha risposto a più di una opzione
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`)]<-"Si, a livello agonistico"
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$X__308)]<-"Si, per svago"
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$X__309)]<-"No"
Abbandono_Sportivo$`Almeno uno dei tuoi genitori ha praticato nella sua vita il tuo sport significativo (puoi rispondere a più di un’opzione)`[!is.na(Abbandono_Sportivo$X__311)]<-"Non lo so"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo ... I tuoi genitori (o uno di essi) ti portavano la maggior parte delle volte (es. 2 volte su 3) agli allenamenti del tuo sport significativo`[which(Abbandono_Sportivo$X__312=="No")]<-"No"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … I tuoi genitori (o uno di essi) ti hanno spinto a continuare a fare proprio quello sport`[which(Abbandono_Sportivo$X__314=="No")]<-"No"

Abbandono_Sportivo$`Tra i tuoi 9 e 17 anni… Quando non avevi voglia di andare ad allenarti nel tuo sport, i tuoi genitori (o uno di essi) ti convincevano o obbligavano ad andare`[which(Abbandono_Sportivo$X__316=="No")]<-"No"

Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__318=="Troppo fissato")]<-"Troppo fissato"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__319=="Si arrabbiava alle gare")]<-"Si arrabbiava alle gare"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__320=="Sostenitore positivo")]<-"Sostenitore positivo"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__321=="Incoraggiante")]<-"Incoraggiante"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__322=="Indifferente")]<-"Indifferente"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__323=="Pesante")]<-"Pesante"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__324=="Ansiogeno")]<-"Ansiogeno"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[which(Abbandono_Sportivo$X__325=="Fastidioso")]<-"Fastidioso"
Abbandono_Sportivo$`Pensa a quale dei tuoi genitori ti ha seguito di più nello sport per te più significativo e rispondi:Lui/lei, rispetto al tuo sport, lo definiresti…`[!is.na(Abbandono_Sportivo$X__326)]<-"Altro"

Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[!is.na(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`)]<- "1"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X__357=="abbastanza")]<-"2"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X__358=="neutrale")]<-"3"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X__359=="poco")]<-"4"
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`[which(Abbandono_Sportivo$X__360=="per niente")]<-"5"

Abbandono_Sportivo$X__371[which(!is.na(Abbandono_Sportivo$X__371))]<-"Altro"

# Cambio alcune variabili in numeriche oppure ordinali
Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`<-as.numeric(Abbandono_Sportivo$`Quanti fratelli o sorelle hai?`)
Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`<- as.numeric(Abbandono_Sportivo$`Dai tuoi 9 ai 17 anni… quanti dei tuoi nonni in media hanno abitato vicino a te (a circa un quarto d’ora da casa tua)?`)
Abbandono_Sportivo$`Tempo per arrivare in palestra a piedi da casa`<-as.ordered(Abbandono_Sportivo$`Tempo per arrivare in palestra a piedi da casa`)
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`<-as.ordered(Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto da casa`)
Abbandono_Sportivo$`Tempo per arrivare in palestra a piedi dalla scuola`<-as.ordered(Abbandono_Sportivo$`Tempo per arrivare in palestra a piedi dalla scuola`)
Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`<-as.ordered(Abbandono_Sportivo$`Tempo per arrivare in palestra coi mezzi/auto dalla scuola`)
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`<-as.numeric(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo … Quante ore studiavi in media al giorno al di fuori dell’orario scolastico?`)
Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`<-as.numeric(Abbandono_Sportivo$`Quanti dei tuoi fratelli hanno fatto il tuo stesso sport significativo?`)
Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`<- as.ordered(Abbandono_Sportivo$`Quando hai pensato di abbandonare lo sport per te più significativo, ti divertivi ad allenamento…`)



Abbandono_Corretto_2<-Abbandono_Sportivo

