# Create an S3 Object Slot Class
create_s3_slot <- function(num) {
  
  values <- list(slot_num = num,
                 tile = "tile"
                 )
  
  attr(values, "class") <- "slot"
  
  return(values)
  
}



# Define an S4 Object Slot Class
setClass("slot", slots = list(slot_num = "numeric",
                              tile = "tile"
                              )
         )

# Function To Create an S4 Slot Object
create_s4_slot <- function(num) {
  
  values <- new("slot", slot_num = num)
  
  return(values)
  
}

# Source Tile
source("azure_tiles.R")

# Create an Empty S3 Slot
s3 <- create_s3_slot(num = 1)
t3 <- create_s3_tile(col = "blue", num = 10)
# Place Tile Into Slot
s3$tile <- t3

# Create an Empty S4 Slot
s4 <- create_s4_slot(num = 1)
t4 <- create_s4_tile(col = "black", num = 1)
# Place Tile Into Slot
s4@tile <- t4
