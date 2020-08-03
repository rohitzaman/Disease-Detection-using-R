data <- read.csv(file.choose(),header = T)
names(data)
a1<-unique(data$Symptom_1)
a2<-unique(data$Symptom_2)
a3<-unique(data$Symptom_3)
a4<-unique(data$Symptom_4)
a5<-unique(data$Symptom_5)
a6<-unique(data$Symptom_6)
a7<-unique(data$Symptom_7)
a8<-unique(data$Symptom_8)
a9<-unique(data$Symptom_9)
a10<-unique(data$Symptom_10)
a11<-unique(data$Symptom_11)
a12<-unique(data$Symptom_12)
a13<-unique(data$Symptom_13)
a14<-unique(data$Symptom_14)
a15<-unique(data$Symptom_15)
a16<-unique(data$Symptom_16)
a17<-unique(data$Symptom_17)
a18<-"Disease"

a <- unique(c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,
          a11,a12,a13,a14,a15,a16,a17,a18))
data1 <- read.csv(file.choose(),header = T)
colname <- data1$symptoms

data2 <- read.csv(file.choose(),header = T)
data2 <- as_data_frame(data2)

library(dplyr)

count <- 1
while(count <= 131)
{
  data2[colname[count]] <- "no"
  count <- count +1
}

write.csv(data2,"data_version_1.csv")

dataset <- read.csv(file.choose(),header = TRUE)
new_dataset <-  read.csv(file.choose(),header = TRUE)
new_dataset <- as_data_frame(new_dataset)
dataset <- as_data_frame(dataset)

for(i in 1:4920)
{
  for(j in 1:18)
  {
    for(k in 2:132)
    {
      a <- as.character(dataset[i,j])
      b <- names(new_dataset[1,k]) 
      #print(b)
      if(a == b)
      {
        new_dataset[i,k] <- "yes"
      }
      
    }
  }
  
  
}

write.csv(new_dataset,"final_disorder.csv")
















