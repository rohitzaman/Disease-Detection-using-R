data <- read.csv(file.choose(),header = TRUE)
View(data)

set.seed(2)
id<-sample(2,nrow(data),prob = c(0.8,0.2),replace = TRUE)
train_data<-data[id==1,]
test_data<-data[id==2,]

install.packages("randomForest")
library(randomForest)
data$Disease <- as.factor(data$Disease)
train_data$Disease <- as.factor(train_data$Disease)

disease_forest <- randomForest(Disease~.,data = train_data)
disease_forest

test <- read.csv(file.choose(),header = TRUE)
View(test)


p <- predict(disease_forest, newdata = test, type = "prob")
p

