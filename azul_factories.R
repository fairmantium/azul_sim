# Create an S3 Object Factory Class
create_s3_factory <- function(num) {
  
  values <- list(factory_num = num,
                 slot1 = "slot1",
                 slot1 = "slot2",
                 slot3 = "slot3",
                 slot4 = "slot4"
  )
  
  attr(values, "class") <- "factory"
  
  return(values)
  
}

# Define an S4 Object Factory Class
setClass("factory", slots = list(factory_num = "numeric",
                                 slot1 = "tile",
                                 slot2 = "tile",
                                 slot3 = "tile",
                                 slot4 = "tile"
)
)

# Function to Create an S4 Factory Object
create_s4_factory <- function(num) {
  
  values <- new("factory", factory_num = num)
  
  return(values)
  
}

# Source Tile Creation
source("azul_tiles.R")

# Create an S3 Factory Object
f3 <- create_s3_factory(num = 1)
# Plase S3 Tile Object in Slot 1
f3$slot1 <- t3

# Create an S4 Factory Object
f4 <- create_s4_factory(num = 1)
# Place S4 Tile Object in Slot 1
f4@slot1 <- t4
