setwd("~/sortida.botanica")
dat <- read.csv("dadescamp.csv", sep = ";", stringsAsFactors = TRUE)

dat1 <- data.frame(dat$DISTÀNCIA.AL.CAMÍ, dat$ESPÈCIE, dat$ESTRAT)
dat1

especie <- as.character(dat$ESPÈCIE)
especie2 <- factor(especie)

par(mar=c(11,5,2,2))
plot(dat$DISTÀNCIA.AL.CAMÍ ~ especie2,
     main = "Espècies al llarg del camí",
     xlab = " ",
     ylab = "Distància al camí",
     frame.plot = FALSE,
     las = 2,
     col = c(2,2,3,3,4,5,6,7,11))
mtext("Espècie", side=1, line=9)
