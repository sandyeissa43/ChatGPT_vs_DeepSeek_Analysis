library(readxl)
deepseek_vs_chatgpt_1_ <- read_excel("C:/Users/sandy/OneDrive/Desktop/deepseek_vs_chatgpt (1).xlsx")
View(deepseek_vs_chatgpt_1_)

## Separating the data vectors:

Active_Users <- deepseek_vs_chatgpt_1_$Active_Users
Churned_users <- deepseek_vs_chatgpt_1_$Churned_Users
Response_accuracy <- deepseek_vs_chatgpt_1_$Response_Accuracy
Response_speed_sec <- deepseek_vs_chatgpt_1_$Response_Speed_sec

#################################################################
## Quantitative Statistics (for each of the Numeric Variables) ##
#################################################################

# Active_Users:

# Mean:
m_Active_Users <- mean(Active_Users)

# Standard Deviation:
sd_Active_Users <- sd(Active_Users)

# The 5-number Summary:
min_Active_Users <- min(Active_Users)
q1_Active_Users <- quantile(Active_Users, 0.25) #Q1 is the 25th percentile
q2_Active_Users <- quantile(Active_Users, 0.5) #Median = Q2 is the 50th percentile
q3_Active_Users <- quantile(Active_Users, 0.75) #Q3 is the 75th percentile
max_Active_Users <- max(Active_Users)

# Suitable Graph (Boxplot and Histogram):
boxplot(Active_Users, horizontal = TRUE)
hist(Active_Users) #Histogram - If you want to specify number of classes (5) > hist(age, 5)

# Define outliers if present (Can be done with Boxplot or Numerically below):
iqr_Active_Users <- IQR(Active_Users)
lf_Active_Users <- q1_Active_Users - 1.5*iqr_Active_Users # If it is lower than Minimum, then no outliers on left side
uf_Active_Users <- q3_Active_Users + 1.5*iqr_Active_Users # If it is greater than Maximum, then no outliers on right side

#Churned_users:

# Mean:
m_Churned_users <- mean(Churned_users)

# Standard Deviation:
sd_Churned_users <- sd(Churned_users)

# The 5-number Summary:
min_Churned_users <- min(Churned_users)
q1_Churned_users <- quantile(Churned_users, 0.25) #Q1 is the 25th percentile
q2_Churned_users <- quantile(Churned_users, 0.5) #Median = Q2 is the 50th percentile
q3_Churned_users <- quantile(Churned_users, 0.75) #Q3 is the 75th percentile
max_Churned_users <- max(Churned_users)

# Suitable Graph (Boxplot and Histogram):
boxplot(Churned_users, horizontal = TRUE)
hist(Churned_users) #Histogram - If you want to specify number of classes (5) > hist(age, 5)

# Define outliers if present (Can be done with Boxplot or Numerically below):
iqr_Churned_users <- IQR(Churned_users)
lf_Churned_users <- q1_Churned_users - 1.5*iqr_Churned_users # If it is lower than Minimum, then no outliers on left side
uf_Churned_users <- q3_Churned_users + 1.5*iqr_Churned_users # If it is greater than Maximum, then no outliers on right side

# Response_accuracy:

# Mean:
m_Response_accuracy <- mean(Response_accuracy, na.rm = TRUE)

# Standard Deviation:
sd_Response_accuracy <- sd(Response_accuracy, na.rm = TRUE)

# The 5-number Summary:
min_Response_accuracy <- min(Response_accuracy, na.rm = TRUE)
q1_Response_accuracy <- quantile(Response_accuracy, 0.25, na.rm = TRUE) #Q1 is the 25th percentile
q2_Response_accuracy <- quantile(Response_accuracy, 0.5, na.rm = TRUE) #Median = Q2 is the 50th percentile
q3_Response_accuracy <- quantile(Response_accuracy, 0.75, na.rm = TRUE) #Q3 is the 75th percentile
max_Response_accuracy <- max(Response_accuracy, na.rm = TRUE)

# Suitable Graph (Boxplot and Histogram):
boxplot(Response_accuracy, horizontal = TRUE)
hist(Response_accuracy) #Histogram - If you want to specify number of classes (5) > hist(age, 5)

# Define outliers if present (Can be done with Boxplot or Numerically below):
iqr_Response_accuracy <- IQR(Response_accuracy, na.rm = TRUE)
lf_Response_accuracy <- q1_Response_accuracy - 1.5*iqr_Response_accuracy # If it is lower than Minimum, then no outliers on left side
uf_Churned_users <- q3_Churned_users + 1.5*iqr_Churned_users # If it is greater than Maximum, then no outliers on right side

#Response_speed_sec:
#Mean:
m_Response_speed_sec <- mean(Response_speed_sec)

# Standard Deviation:
sd_Response_speed_sec <- sd(Response_speed_sec)

# The 5-number Summary:
min_Response_speed_sec <- min(Response_speed_sec)
q1_Response_speed_sec <- quantile(Response_speed_sec, 0.25) #Q1 is the 25th percentile
q2_Response_speed_sec <- quantile(Response_speed_sec, 0.5) #Median = Q2 is the 50th percentile
q3_Response_speed_sec <- quantile(Response_speed_sec, 0.75) #Q3 is the 75th percentile
max_Response_speed_sec <- max(Response_speed_sec)


# Suitable Graph (Boxplot and Histogram):
boxplot(Response_speed_sec, horizontal = TRUE)
hist(Response_speed_sec) #Histogram - If you want to specify number of classes (5) > hist(age, 5)

# Define outliers if present (Can be done with Boxplot or Numerically below):
iqr_Response_speed_sec <- IQR(Response_speed_sec)
lf_Response_speed_sec <- q1_Response_speed_sec - 1.5*iqr_Response_speed_sec # If it is lower than Minimum, then no outliers on left side
uf_Response_speed_sec <- q3_Response_speed_sec + 1.5*iqr_Response_speed_sec # If it is greater than Maximum, then no outliers on right side
