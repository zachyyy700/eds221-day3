# Basic if statement

burrito <- 2.4

if (burrito > 2) {
  print("Mustard on mine")
}

# strings
ships <- c("Falcon", "X-wing", "Tie-Fighter", "Death Star", "Gilgamesh")
for (ship in ships) {
  if (stringr::str_detect(ship, "g")){
    print("I have a g-")
  } else {
    print("No g here")
  }
}


phrase <- "I love burritos!"
if (stringr::str_detect(phrase, "rr")) {
  print("rrrrr")
}

# if else
pika <- 89.1
if (pika > 60) {
  print("BIG AHHHH PIKA")
} else {
  print("pika")
}

# more str
food <- "I love tacomas!"
if (stringr::str_detect(food, pattern = "aco")) {
  print("tacos awesome")
} else{
  print("i hate taco")
}

# if else if else
marmot <- 7
if (marmot < 0.5) {
  print("eensie teensie")
} else if (marmot >= 0.5 & marmot < 3) {
  print("marmot so mid")
} else {
  print("GIANT MARMOT")
}

# switch (for complex if else if else)
species <- "cat"
switch(species,
       "cat" = print("Nya! Mrrrow :3"),
       "dog" = print("BARK BARK BARK BARK"),
       "mouse" = print("eyyyy my name is jerry ahhh what are ya ganna do about itttt"))

# for loop
names <- c("Teddy", "Khora", "Banjo", "Waffle")
print(paste("My dog's name is", names[1]))

for (pup in names) { #FIXME
  print(pup)
}

# seq loop
mass <- seq(from = 0, to = 3, by = 0.5)
for (i in mass) {
  new_val <- i + 2
  print(new_val)
}

# indexing loop
for (i in seq_along(mass)) {
  new_val <- mass[i] + 2
  print(new_val)
}
for (i in 1:length(mass)) {
  new_val <- mass[i] + 2
  print(new_val)
}

tree_height <- c(1, 2, 6, 10)
for (i in 1:length(tree_height)) {
  val <- tree_height[i] + tree_height[i + 1]
  print(val)
}

# loops with conditional
animal <- c("cat", "dog", "dog")
#guts
one_animal <- animal[1]

if (one_animal == "dog") {
  print("dog hell yea")
}else {
  print("dis not dog")
}
#iteration
for (i in 1:length(animal)) {
  if (animal[i]  == "dog") {
    print("dog hell yea")
  }else {
    print("dis not dog")
  }
}

# another loop with conditions
species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")
age_human <- c(3, 8, 4, 6, 12, 18)
# 1hyr = 7 dyr
# 1hyr = 0.88 eyr
# 1hyr = 4.7 gyr

#guts
i <- 3
if (species[i] == "dog") {
  animal_age <- age_human[i] * 7
} else if (species[i] == "elephant") {
  animal_age <- age_human[i] * 0.88
} else if (species[i] == "goat") {
  animal_age <- age_human[i] * 4.7
}

# iterate
# but store first
animal_alloc <- vector(mode = "numeric", length = length(species))
for (i in 1:length(species)) {
  if (species[i] == "dog") {
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * 0.88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i] * 4.7
  }
  animal_alloc[i] <- animal_age # storing into vector
}

# more storing
tigers <- c(29, 34, 82)
lions <- c(2, 18, 6)

cats_stor <- vector(mode = "numeric", length = length(tigers))

for (i in 1:length(tigers)) {
  total_cats <- tigers[i] + lions[i]
  cats_stor[i] <- total_cats
}

# loops across df

#guts
mean_val <- mean(mtcars[[1]], na.rm = TRUE)
# storage
means_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)){
  mean_val <- mean(mtcars[[i]])
  means_mtcars[i] <- mean_val
}

# loop over cols with condition
library(palmerpenguins)

for (i in 1:ncol(penguins)) {
  if (is.numeric(penguins[[i]])) {
    median <- median(penguins[[i]], na.rm = TRUE)
    print(median)
  } else {
    print("The penguins say surf's up!")
  }
}

# using functions now
# apply(), iterates over cols or rows
means_mtcars <- apply(X = mtcars, MARGIN = 2, FUN = mean)

# dplyr::
library(tidyverse)

penguins |> 
  group_by(species) |> 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))
