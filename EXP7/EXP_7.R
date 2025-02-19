pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_value <- mean(pencils)
median_value <- median(pencils)
get_mode <- function(v) {
  unique_values <- unique(v)
  counts <- tabulate(match(v, unique_values))
  mode_value <- unique_values[which.max(counts)]
  return(mode_value)
}
mode_value <- get_mode(pencils)
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))
