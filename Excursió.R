setwd("~/sortida.botanica")
dat <- read.csv("dadescamp.csv", sep = ";", stringsAsFactors = TRUE)

dist <- dat$DISTÀNCIA.AL.CAMÍ
dist2 <- factor(dist)

dat1 <- data.frame(d = levels(dist2), r = c(11,12,9,10,6,7))

par(mar=c(5,5,5,5))
g <- plot(dat1,
     main = "Variació de la riquesa específica",
     xlab = "Distància al camí",
     ylab = "Riquesa específica",
     xlim = c(0,25),
     ylim = c(0,15),
     frame.plot = FALSE,
     las = 1,
     pch = 16,
     lwd = 3,
     cex = 2,
     col = 42,
     type = "b",
     fg = 48,
     yaxs = "i",
     pos = 0)

