library(ggplot2)
library(cluster)
library(lattice)
library(plyr)
library(graphics)
library(grid)
library(gridExtra)
input = as.data.frame(read.csv("C:\\Users\\niles\\Desktop\\DataScienceTest\\data.csv"))

kmdataorig = as.matrix(input[,c("Murder","Assault", "UrbanPop","Rape")])
kmdata <- kmdataorig[,1:4]

wss <- numeric(14) 
for (k in 1:14) wss[k] <- sum(kmeans(kmdata, centers=k, nstart=25)$withinss)


plot(1:14, wss, type="b", xlab="Number of Clusters", ylab="Within Sum of Squares",main="Nilesh Hegde CS060") 

km <- kmeans(kmdata,centers=3, nstart=25)
km

dframe <- as.data.frame(kmdataorig[,1:4])
dframe$cluster <- factor(km$cluster)
dframe
centers=as.data.frame(km$centers)


g1 <- ggplot(data=dframe, aes(x=Assault, y=UrbanPop, color=cluster )) + 
  geom_point() +
  geom_point(data=centers, aes(x=Assault,y=UrbanPop, color=as.factor(c(1,2,3))), 
             size=10, alpha=.3, show.legend=FALSE)

g2 <- ggplot(data=dframe, aes(x=Assault, y=Rape, color=cluster )) + 
  geom_point() +
  geom_point(data=centers, aes(x=Assault,y=Rape, color=as.factor(c(1,2,3))), 
             size=10, alpha=.3, show.legend=FALSE)

g3 <- ggplot(data=dframe, aes(x=Assault, y=Murder, color=cluster )) + 
  geom_point() +
  geom_point(data=centers, aes(x=Assault,y=Murder, color=as.factor(c(1,2,3))), 
             size=10, alpha=.3, show.legend=FALSE)

tmp = ggplot_gtable(ggplot_build(g1)) 

grid.arrange(arrangeGrob(g1 + theme(legend.position="none"),
                         g2 + theme(legend.position="none"),
                         g3 + theme(legend.position="none"), ncol=1))

print("Nilesh Hegde CS060")






