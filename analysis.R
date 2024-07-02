

# Load necessary packages
library(dplyr)

# Load the iris dataset
data(iris)

# Data Exploration
# Summary of the dataset
summary(iris)

# Basic statistics: mean, median, standard deviation for each species
iris |>
    group_by(Species) |>
    summarise(
        across(
            where(is.numeric), 
            list(mean, median, sd)
        )
    )


