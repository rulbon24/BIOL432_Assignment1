# Second R script:
# Load necessary libraries
library(dplyr)  # For data manipulation

# Step 1: Read the input CSV file
# This reads the file "measurements.csv" and stores it as a data frame
measurements <- read.csv("measurements.csv")

# Step 2: Estimate limb volume
# Adding a new column called 'Volume' using a biologically sensible equation
# Equation for volume: Volume = pi * (Limb_width / 2)^2 * Limb_length
# (Approximating limb as a cylinder)
measurements <- measurements %>%
  mutate(Volume = pi * (Limb_width / 2)^2 * Limb_length)  # Using dplyr's mutate to add the new column

# Step 3: Overwrite the original file with the updated data
# Write the updated data frame back to "measurements.csv"
write.csv(measurements, "measurements.csv", row.names = FALSE)

# Print a message to indicate success
cat("Volume successfully calculated and added to measurements.csv\n")