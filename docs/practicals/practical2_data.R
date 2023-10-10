# Generate a dataset with two columns called "Treatment" and "Control" with 1000 rows. The values in the columns should be random normal values with a mean of 10.5 and 12.5 respectively, and a standard deviation of 3.5 and 1.5 respectively.

group1 <- rnorm(1000, 10.5, 3.5)
group2 <- rnorm(1000, 12.5, 1.5)

practical2_data <- data.frame(Treatment = group1, Control = group2)

write.csv(practical2_data, "practical2_data.csv", row.names = FALSE)

# calculate the difference between the means
meanDiff <- mean(group1) - mean(group2)


# calculate the standard error of the difference between the means

standardError <- sqrt((var(group1) / length(group1)) + (var(group2) / length(group2)))

# calculate the confidence interval

confidenceInterval <- meanDiff + c(-1, 1) * 1.96 * standardError

# calculate the pooled standard deviation

pooledSD <- sqrt(((length(group1) - 1) * var(group1) + (length(group2) - 1) * var(group2)) / (length(group1) + length(group2) - 2))

