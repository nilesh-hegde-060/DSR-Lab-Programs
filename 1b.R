df2 = read.delim("C:\\Users\\niles\\Desktop\\DSR-Lab\\data.csv")
df2
str(df2)
v <- c('abc','def','ghi','jkl','mno')
df2$description<-v
write.csv(df2, file="modifiedfile2.csv")
print("Nilesh Hegde CS060")
