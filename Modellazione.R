# 28 Giugno 2018

# Modellazione dei dati

# ---------------------------------------------------------------------------------------------------
# Librerie
library(caret)

# Import dataset e Feature selection

dati <- readRDS("/Users/Tornetto/R/Data_Science_Lab/Progetto_Sport/dataset2018.rds")

# Creazione Training e Test Set

library(caTools)

set.seed(3033)

spl = sample.split(dataset$caso_bin, SplitRatio = 0.7)
train=subset(dataset,spl==TRUE)
test=subset(dataset,spl==FALSE)

# ---------------------------------------------------------------------------------------------------

# Classificazione con rete neurale (nnet) con Caret

# Training 
model_nnet<-train(train[,c(1:77,79)],train[,78],method='nnet',na.action = na.omit)
# Predizione
predictions<-predict.train(object=model_nnet,test[,c(1:77,79)],type="raw")
table(predictions)
# Matrice di confusione e statistiche
confusionMatrix(predictions,test[,78])
# Tuning
# Visualizzazione parametri del modello
modelLookup(model='nnet')
# Cross validation
# con k = 5 folds e ripetuto per 5 volte
fitControl <- trainControl(
  method = "repeatedcv",
  number = 5,
  repeats = 5)
# Tuning dei parametri utilizzando Tune Lenght
model_nnet_tuned <-train(train[,c(1:77,79)],train[,78],method='nnet',
                         na.action = na.omit,tuneLength = 5)
print(model_nnet_tuned)
plot(model_nnet_tuned)
predictions<-predict.train(object=model_nnet_tuned,test[,c(1:77,79)],type="raw")
table(predictions)
confusionMatrix(predictions,test[,78])
# Tuning dei parametri utilizzando Tune Grid
# Non ha senso effettuare questa tecnica per il modello perchè già il metodo tuneLenght utilizza tutti
# i parametri del modello
# importanza delle variabili
varImp(model_nnet)

# ---------------------------------------------------------------------------------------------------

# Training 
model_nnet<-train(train[,1:78],train[,79],method='nnet')
# Predizione
predictions<-predict.train(object=model_nnet,test[,1:78],type="raw")
table(predictions)
# Matrice di confusione e statistiche
confusionMatrix(predictions,test[,79])

# importanza delle variabili
varImp(object=model_nnet)

# ---------------------------------------------------------------------------------------------------

# Con dataset Boruta

# Import dataset e Feature selection

dataset_bor <- readRDS("/Users/Tornetto/R/Data_Science_Lab/Progetto_Sport/selection1.rds")

# Creazione Training e Test Set

library(caret)
library(caTools)

set.seed(2)

spl = sample.split(dataset_bor$caso_bin, SplitRatio = 0.7)
train_bor=subset(dataset_bor,spl==TRUE)
test_bor=subset(dataset_bor,spl==FALSE)

# ---------------------------------------------------------------------------------------------------

# Classificazione con rete neurale (nnet) con Caret

# Training 
model_nnet_bor<-train(train_bor[,1:15],train_bor[,16],method='nnet')
# Predizione
predictions_bor<-predict.train(object=model_nnet_bor,test_bor[,1:15],type="raw")
table(predictions_bor)
# Matrice di confusione e statistiche
confusionMatrix(predictions_bor,test_bor[,16])
# Tuning
# Visualizzazione parametri del modello
modelLookup(model='nnet')
# Cross validation
# con k = 5 folds e ripetuto per 5 volte
fitControl <- trainControl(
  method = "repeatedcv",
  number = 5,
  repeats = 5)
# Tuning dei parametri utilizzando Tune Lenght
model_nnet_bor <-train(train_bor[,1:15],train_bor[,16],method='nnet',trControl = fitControl)
model_nnet_tuned_bor <-train(train_bor[,1:14],train_bor[,15],method='nnet',trControl = fitControl,
                             metric = "Sensitivity", maximize = TRUE, tuneLength = 5)
print(model_nnet_tuned_bor)
# Grafico di comparazione delle accuracy dal tuning
plot(model_nnet_tuned_bor)
# Grafico della rete neurale
plot(model_nnet_tuned_bor$finalModel,
     main = "Nnet model",
     var.labs = FALSE,
     alpha.val = 0.6,
     circle.col = "yellow",
     pos.col = "blue",
     neg.col = "black",
     max.sp = TRUE)
# The nnet model selected has 3 hidden units and decay of 0.1.
# Accuracy is 0.6734 and Sensitivity is 0.6619.
model <- model_nnet_tuned_bor$finalModel
predictions<-predict.train(object = model_nnet_tuned_bor,test_bor[,1:14],type="raw")
table(predictions_bor)
confusionMatrix(predictions,test_bor[,15])

# The nnet model selected has 3 hidden units and decay of 0.1.
# Accuracy is 0.6734 and Sensitivity is 0.6619.
# 95% Confidence Interval for Accuracy is (0.6281, 0.6931).
# Kappa measure is 0.3218
# Sensitivity is 0.5929

# Tuning dei parametri utilizzando Tune Grid
# Non ha senso effettuare questa tecnica per il modello perchè già il metodo tuneLenght utilizza tutti
# i parametri del modello
# importanza delle variabili
varImp(model) # con libreria caret, non funziona

# usando l'algoritmo di Garson attraverso la libreria NeuralNetTools
library(NeuralNetTools)

# Importanza delle variabili attraverso il metodo di Garson
importance <- garson(model)
importance <- garson(model, bar_plot = FALSE)

write.csv(importance_data,
          "/Users/Tornetto/Documents/UNIMIB/Laurea in Data Science/Primo anno/Data Science Lab/importanza.csv",
          sep = ",", col.names = c("Variabile", "Importanza"))
