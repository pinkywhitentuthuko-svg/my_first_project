x <- 1:10
mean(x)
summary(x)
# Create a small dataset
names <- c("John", "Mary", "Peter", "Linda", "James")
ages <- c(25, 30, 22, 35, 40)

# Combine into a dataframe
people <- data.frame(names, ages)

people
# Basic analysis
mean(ages)
summary(ages)
# Add age category
people$category <- ifelse(ages > 30, "Older", "Younger")

people
people$total <- ages + 5
people$age_squared <- ages^2