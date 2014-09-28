# Creating a Graph
windows()
plot(aimp$V1, aimp$r1,type = "l", xlab="epsilon",ylab="avg reward",cex=.4,xaxt="n",col="red") 
points(aimp$V1, aimp$r2,type = "l", xlab="epsilon",ylab="avg reward",cex=.5,xaxt="n",col="blue") 
points(aimp$V1, aimp$r3,type = "l", xlab="epsilon",ylab="avg reward",cex=.5,xaxt="n",col="green") 
points(aimp$V1, aimp$r4,type = "l", xlab="epsilon",ylab="avg reward",cex=.5,xaxt="n",col="yellow") 
points(aimp$V1, aimp$r5,type = "l", xlab="epsilon",ylab="avg reward",cex=.5,xaxt="n",col="purple") 

legend('topright', legend=(c("rate=0.1","rate=0.2","rate=0.3","rate=0.4","rate=0.5")) , 
       lty=1, col=c('red', 'blue', 'green',' yellow','purple'), bty='n', cex=.75)
title("WorldWithThief QLearningAgent y 10000 1000")

axis(1, at = seq(0, 0.2, by = 0.005), las=2)

?legend

summary(aimp)

#abline(lm(rate.0$V2~rate.0$V1))

?plot
?axis

rbind(rate.0, rate1)


install.packages('sqldf')
install.packages('gsubfn')
install.packages('proto')
install.packages('RSQLite')
install.packages('DBI')
install.packages('RSQLite.extfuns')

library(gsubfn)
library(proto)
library(DBI)
library(RSQLite)
library(RSQLite.extfuns)

library(sqldf)
aimp<-sqldf("select rate1.v1,
                    rate1.v2 as r1,
                    rate2.v2 as r2,
                    rate3.v2 as r3,
                    rate4.v2 as r4,
                    rate5.v2 as r5
            from rate1
            LEFT JOIN rate2 ON rate2.v1=rate1.v1
            LEFT JOIN rate3 ON rate3.v1=rate1.v1
            LEFT JOIN rate4 ON rate4.v1=rate1.v1
            LEFT JOIN rate5 ON rate5.v1=rate1.v1
            ")


x <- aimp$V1 
y1 <- aimp$r1
y2 <- aimp$r2 
y3 <- aimp$r3 
x <- 1:10 
y1 <- rnorm(10) 
y2 <- rnorm(10) 
y3 <- rnorm(10) 

# One way 
plot(x, y1, ylim = range(c(y1, y2, y3))) 
points(x, y2, col = "red") 
points(x, y3, col = "blue")
