intervals <- matrix(c(1,5, 5,15, 15,20, 20,50, 50,80, 80,110), ncol=2, byrow=TRUE)
frequencies <- c(200, 450, 300, 1500, 700, 44)

cumulative_freq <- cumsum(frequencies)

N <- sum(frequencies)

N_half <- N / 2
print(paste("Total Frequency (N):", N))
print(paste("Half of N (N_half):", N_half))
print("Cumulative Frequencies:")
print(cumulative_freq)
median_class_index <- which(cumulative_freq >= N_half)[1]
if (is.na(median_class_index)) {
  stop("Error: Could not determine median class index. Check your data.")
}

print(paste("Median class index:", median_class_index))
L <- intervals[median_class_index, 1]  
h <- intervals[median_class_index, 2] - intervals[median_class_index, 1]  
F <- ifelse(median_class_index > 1, cumulative_freq[median_class_index - 1], 0)
f <- frequencies[median_class_index]
median_value <- L + ((N_half - F) / f) * h

print(paste("Approximate Median:", median_value))
