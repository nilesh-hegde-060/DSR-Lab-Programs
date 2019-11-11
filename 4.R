install.packages("gcookbook")
library(gcookbook)
library(ggplot2)
cabbage_exp
p<-ggplot(cabbage_exp,aes(x=Date,y=Weight,fill=Cultivar))+
  geom_bar(stat = "identity",position="dodge")+
  geom_text(aes(label=Weight),vjust=1.5, colour="white",position=position_dodge((.9)),size=5)+
  ylim(0,3.5)
p+ggtitle("Nilesh Hegde CS060")
print("Nilesh Hegde CS060")

library(MASS)
birthwt
boxplot(birthwt$bwt~birthwt$age,xlab="Mother Age",ylab = "Baby Weight",main="Nilesh Hegde CS060")
print("Nilesh Hegde CS060")