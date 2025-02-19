age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 
         56, 57, 58, 58, 60, 61)
age_value <- 35
min_age <- min(age)
max_age <- max(age)
min_max_normalized <- (age_value - min_age) / (max_age - min_age)
age_mean <- mean(age)
age_sd <- 12.94  
z_score_normalized <- (age_value - age_mean) / age_sd
max_abs_value <- max(abs(age))
j <- nchar(as.character(max_abs_value))  
decimal_scaling_normalized <- age_value / (10^j)
print(paste("Min-Max Normalization:", min_max_normalized))
print(paste("Z-Score Normalization:", z_score_normalized))
print(paste("Decimal Scaling Normalization:", decimal_scaling_normalized))
