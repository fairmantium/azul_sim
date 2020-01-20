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

# Create an Empty S4 Slot
s <- create_s4_slot(num = 1)
t <- create_s4_tile(col = "black", num = 1)
# Place Tile Into Slot
s@tile <- t
