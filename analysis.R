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
# Public health dataset (example)
patient_id <- 1:6
age <- c(25, 40, 35, 60, 50, 28)
smoker <- c("Yes", "No", "Yes", "No", "Yes", "No")
blood_pressure <- c(120, 140, 135, 150, 145, 125)

patients <- data.frame(patient_id, age, smoker, blood_pressure)

patients
# Average age
mean(age)

# Average blood pressure
mean(blood_pressure)
# Compare smokers vs non-smokers
tapply(blood_pressure, smoker, mean)
# Add risk category
patients$risk <- ifelse(blood_pressure > 140, "High", "Normal")

patients