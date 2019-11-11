library(e1071)
b<-read.csv("C:\\Users\\niles\\Desktop\\DSR-Lab\\samplebayes.csv")
b
class(b)
testset<-data.frame(Age="<=30",Income="Medium",JobSatisfaction="No",Desire="Fair",Enrolls="")
testset
b<-rbind(b,testset)
b
traindata <- as.data.frame(b[1:14,])
testdata <- as.data.frame(b[15,])
traindata
testdata
bayesmodel <- naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,traindata)
bayesmodel
results <- predict (bayesmodel,testdata)
results
modell = naiveBayes(Enrolls ~ ., traindata, laplace=.01)
modell
results1<-predict(modell,testdata)
results1
print("Nilesh Hegde Cs060")
