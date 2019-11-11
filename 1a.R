path="C:\\Users\\niles\\Desktop\\DSR-Lab"
setwd(path)
dataval=read.csv("petals.csv")
summary(dataval)
plot(dataval$sepal.length,dataval$sepal.width,xlab = "Sepal Length",ylab = "Sepal Width",main="Nilesh Hegde CS060")
print("Nilesh Hegde 060")
