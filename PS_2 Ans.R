
# PS2_Ans -----------------------------------------------------------------

library(tidyverse)
View(iris)
sl <- iris$Sepal.Length
set.seed(12345)
mean_list <- replicate(100,mean(sample(sl,10,T)))
?rep
test <- rep(1,100)
?cbind
mean_list1 <- data.frame(cbind(test,mean_list))
mean_list2 <- data.frame(cbind(test,mean_list <- replicate(200,mean(sample(sl,30,T)))))
mean_list3 <- data.frame(cbind(test,mean_list <- replicate(1000,mean(sample(sl,50,T)))))
mean_list4 <- data.frame(cbind(test,mean_list <- replicate(3000,mean(sample(sl,50,T)))))
mean_list5 <- data.frame(cbind(test,mean_list <- replicate(10000,mean(sample(sl,50,T)))))
mean_series <- list(mean_list1,mean_list2,mean_list3,mean_list4,mean_list5)
?bind_rows
df_means_combined <- bind_rows(mean_series)
