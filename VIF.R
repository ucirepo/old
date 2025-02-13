data('mtcars')
head(mtcars)

model <- lm(mpg~disp+hp+wt+drat,data=mtcars)
summary(model)
library(car)
vif(model)
vif_values <- vif(model)
barplot(vif_values,main='VIF Values',horiz=TRUE,col='steelblue')
abline(v=5,lwd=3,lty=2)
data<-mtcars[,c('disp','hp','wt','drat')]
cor(data)
