## Opening the file in Excel Format .XLSX or .CSV

library(readxl)
deepseek_vs_chatgpt_1_ <- read_excel("C:/Users/sandy/OneDrive/Desktop/deepseek_vs_chatgpt (1).xlsx")
View(deepseek_vs_chatgpt_1_)


## Separating the data vectors:
Active_Users <- deepseek_vs_chatgpt_1_$Active_Users
Churned_users <- deepseek_vs_chatgpt_1_$Churned_Users
Response_accuracy <- deepseek_vs_chatgpt_1_$Response_Accuracy
Response_speed_sec <- deepseek_vs_chatgpt_1_$Response_Speed_sec
Device_Type <- deepseek_vs_chatgpt_1_$Device_Type


########################################
### CONFIDENCE INTERVAL + HYPOTHESIS ###
########################################

## A t.test can be done using R base package normally.
## If you want a z.test, you must first install BSDA and call the library as follows:
install.packages("BSDA")
library("BSDA")

## ALL THE FOLLOWING TESTS, ASSUME CONFIDENCE LEVEL 0.95, SO ALPHA = 0.05.



#######################
### One-Sample Mean ###
#######################

# alternative = "less" or "greater" or "two.sided" depends on the hypothesis
# but for C.I. must be "two.sided"

# One-sample Z (if n > 30 and sigma is unknown):
# We will estimate sigma by getting sample SD first:

sd(Active_Users)
z.test(Active_Users, 
       mu=1196255,
       sigma.x = 744446.5,
       conf.level= 0.95, 
       alternative = "two.sided")
sd(Active_Users)
z.test(Active_Users, 
       mu=1196300,
       sigma.x = 744446.5,
       conf.level= 0.95, 
       alternative = "less")
sd(Churned_Users)
z.test(Churned_Users, 
       mu=35395.15,
       sigma.x = 14849.19,
       conf.level= 0.95, 
       alternative = "two.sided")
z.test(Churned_Users, 
       mu=35380.15,
       sigma.x = 14849.19,
       conf.level= 0.95, 
       alternative = "greater")
sd(Response_Accuracy)
z.test(Response_Accuracy, 
       mu=0.8502866,
       sigma.x = 0.07275477,
       conf.level= 0.95, 
       alternative = "two.sided")
z.test(Response_Accuracy, 
       mu=0.8502900,
       sigma.x = 0.07275477,
       conf.level= 0.95, 
       alternative = "less")
z.test(Response_speed_sec, 
       mu=2.356651,
       sigma.x = 1.303743,
       conf.level= 0.95, 
       alternative = "two.sided")
z.test(Response_speed_sec, 
       mu=2.356500,
       sigma.x = 1.303743,
       conf.level= 0.95, 
       alternative = "greater")



############################################
### One-Way ANOVA (More than Two-Sample) ###
############################################

# ANOVA with a qualitative variable with 3 categories (equality of mean age for all the 3 activities):
table(Device_Type)

anova_Response_Speed_sec <- aov(Response_Speed_sec ~ Device_Type )
summary(anova_Response_Speed_sec)



