list.files()
fishermen <- read.csv("fishermen_hair.csv")
dim(fishermen)
head(fishermen)
str(fishermen)
range(fishermen$fish_meals)
range(fishermen$mercury_total)
plot(fishermen$fish_meals, fishermen$mercury_total, 
     main = "Mercury Levels in Hair v.s. Meals with Fish (per week)", 
     xlab = "Numbers of Meals with Fish (per week)",
     ylab = "Mercury Levels in Hair(mg/g)",
     xlim = c(0,23),
     ylim = c(0,12),
     cex.main = 0.75, 
     cex.lab = 0.8, 
     )
cor(fishermen$fish_meals, fishermen$mercury_total)
lm(fishermen$mercury_total ~ fishermen$fish_meals )
fishingline <- lm(fishermen$mercury_total ~ fishermen$fish_meals )
abline(fishingline, lty=3, col="blue")
anova(fishingline)
summary(fishingline)
qf(.95, df1 = 1, df2= 98)

rsquared = 309.24/(309.24+323.47)


confint(fishingline, level = .9)