setwd("~/Desktop/1r/3r trimestre/BOTÀNICA/PRÀCTIQUES/EXCURSIÓ")
dat <- read.csv("plantesexcursio.csv", sep = ";", stringsAsFactors = TRUE)

dist <- dat$DISTÀNCIA.AL.CAMÍ
dist2 <- factor(dist)

dat1 <- data.frame(d = levels(dist2), r = c(11,12,9,10,6,7))

g <- plot(dat1,
     main = "Variació de la riquesa específica",
     xlab = "Distància al camí",
     ylab = "Riquesa específica",
     ylim = c(0,15),
     frame.plot = FALSE,
     las = 1,
     n.breaks = 10)


?plot
