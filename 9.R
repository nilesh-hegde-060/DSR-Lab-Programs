install.packages("rpart.plot")
library("rpart")
library("rpart.plot")
p <- read.csv("C:\\Users\\niles\\Desktop\\DSR-Lab\\DT.csv")
p2 <- data.frame(p)
p2
fit=rpart(play ~ outlook + Temperature  +Humidity +Wind,method="class",data=p2,control=rpart.control(minsplit=1),parms=list(split='information'))
fit
str(fit)
rpart.plot(fit,type=4,extra=2,clip.right.labs=FALSE,varlen=0,faclen=0,main="Nilesh Hegde CS060")
print("Nilesh Hegde CS060")