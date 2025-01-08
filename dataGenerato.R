library(tibble)

# Step 1: Define species and observer names
# A vector of 5 species names
species <- c("Species_A", "Species_B", "Species_C", "Species_D", "Species_E")

# A vector of 3 observer names
observers <- c("Bubbles", "Blossom", "Buttercup")

# Step 2: Generate data
# Generate a vector of 100 random species names, sampled from 'species'
set.seed(123)  # Setting a seed for reproducibility
organism <- sample(species, size = 100, replace = TRUE)

# Generate a vector of 100 random Limb_width values (positive and realistic)
# Using a normal distribution with mean = 1 and standard deviation = 0.3
limb_width <- abs(rnorm(100, mean = 1, sd = 0.3))  # Absolute to ensure no negative values

# Generate a vector of 100 random Limb_length values (realistic range)
# Using a uniform distribution between 5 and 50
limb_length <- runif(100, min = 5, max = 50)

# Generate a vector of 100 random observer names, sampled from 'observers'
observer <- sample(observers, size = 100, replace = TRUE)

# Step 3: Combine vectors into a data frame (or tibble)
data <- tibble(
  Organism = organism,
  Limb_width = round(limb_width, 2),  # Round to 2 decimal places for readability
  Limb_length = round(limb_length, 2),  # Round to 2 decimal places for readability
  Observer = observer
)

# Step 4: Export the data to a CSV file
write.csv(data, "measurements.csv", row.names = FALSE)

# Print a message to indicate success
cat("Data successfully generated and saved to measurements.csv\n")
