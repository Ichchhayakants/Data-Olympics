setwd("C:/Users/TheUnlikelyMonk/Desktop/Analytics Vidhya/Club Mahindra")

traindata <- read.csv("newtraindata.csv", header = T, stringsAsFactors = T)
str(traindata)
testdata <- read.csv("newtestdata.csv", header = T, stringsAsFactors = T)
str(traindata)
traindata=traindata[,-1]
testdata =  testdata[,-1]
str(traindata)

lmMod <- lm(amount_spent_per_room_night_scaled~., data=traindata)  # build the model

distPred <- predict(lmMod, testdata)  # predict distance

distPred

write.csv(distPred, file = "lm1_Out.csv")

glmod <- glm(amount_spent_per_room_night_scaled~., data=traindata)
distPred <- predict(glmod, testdata)
distPred
write.csv(distPred, file = "glm_Out.csv")
