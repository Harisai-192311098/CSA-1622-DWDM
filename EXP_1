# Given age data
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 
          35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# (a) Mean and Median
mean_value <- mean(ages)  # Compute mean
median_value <- median(ages)  # Compute median

# (b) Mode (Most Frequent Value)
mode_table <- table(ages)  # Create frequency table
max_freq <- max(mode_table)  # Find max frequency
modes <- as.numeric(names(mode_table[mode_table == max_freq]))  # Extract mode values

# (c) Midrange Calculation
midrange_value <- (min(ages) + max(ages)) / 2  # Midrange formula

# (d) First Quartile (Q1) and Third Quartile (Q3)
Q1 <- quantile(ages, 0.25)  # First quartile
Q3 <- quantile(ages, 0.75)  # Third quartile

# Print results
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode(s):", paste(modes, collapse = ", ")))
print(paste("Midrange:", midrange_value))
print(paste("First Quartile (Q1):", Q1))
print(paste("Third Quartile (Q3):", Q3))
