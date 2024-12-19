### R code from vignette source 'creditr.Rnw'

###################################################
### code chunk number 1: creditr.Rnw:1090-1098
###################################################
library(creditr)
cds1 <- CDS(name     = "Alcoa",
            RED      = "49EB20",
            date     = as.Date("2014-06-24"),
            tenor    = 5,
            notional = 10000000,
            coupon   = 100,
            spread   = 160)


###################################################
### code chunk number 2: creditr.Rnw:1103-1106
###################################################
cds2 <- CDS(date     = as.Date("2014-06-24"),
            maturity = as.Date("2019-06-20"),
            spread   = 160)


###################################################
### code chunk number 3: creditr.Rnw:1111-1112
###################################################
summary(cds1)


###################################################
### code chunk number 4: creditr.Rnw:1125-1126
###################################################
cds1


###################################################
### code chunk number 5: creditr.Rnw:1139-1148
###################################################
x <- data.frame(date = as.Date(c("2014-04-22", "2014-04-22")),
                currency = c("USD", "EUR"),
                tenor = c(5, 5),
                spread = c(120, 110),
                coupon = c(100, 100),
                recovery = c(0.4, 0.4),
                notional = c(10000000, 10000000),
                stringsAsFactors = FALSE)
CS10(x)


###################################################
### code chunk number 6: creditr.Rnw:1156-1157
###################################################
cds1.rates <- get_rates(date = as.Date("2014-06-24"), currency = "USD")


###################################################
### code chunk number 7: creditr.Rnw:1162-1163
###################################################
cds1.rates


###################################################
### code chunk number 8: creditr.Rnw:1178-1185
###################################################
rec_risk_01(data.frame(date     = as.Date("2014-06-24"),
                       currency = "USD",
                       tenor    = 5,
                       spread   = 160,
                       coupon   = 100,
                       recovery = 0.4,
                       notional = 10000000))


###################################################
### code chunk number 9: creditr.Rnw:1199-1206
###################################################
IR_DV01(data.frame(date     = as.Date("2014-04-22"),
                   currency = "USD",
                   tenor    = 5,
                   spread   = 160,
                   coupon   = 100,
                   recovery = 0.4,
                   notional = 10000000))


###################################################
### code chunk number 10: creditr.Rnw:1222-1229
###################################################
spread_DV01(data.frame(date     = as.Date("2014-04-22"),
                       currency = "USD",
                       tenor    = 5,
                       spread   = 160,
                       coupon   = 100,
                       recovery = 0.4,
                       notional = 10000000))


###################################################
### code chunk number 11: creditr.Rnw:1243-1248
###################################################
spread_to_pd(data.frame(date     = Sys.Date(),
                        spread   = 160,
                        tenor    = 5,
                        recovery = 0.4,
                        currency = "USD"))


