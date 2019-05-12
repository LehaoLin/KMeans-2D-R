dataset<-data.frame(gay1 = c(2,2,8,5,7,1,4),gay2 = c(10,5,5,8,5,2,9))
dim(dataset)
str(dataset)
summary(dataset)
km <- kmeans(dataset, 3)
km
plot(dataset)
plot(dataset, col = km$cluster, pch = as.integer(dataset$gay2))
points(km$centers[,c("gay1", "gay2")], col = 1:3, pch = 8, cex=2)