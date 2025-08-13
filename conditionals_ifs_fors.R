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

