# Define an S4 Object Slot Class
setClass("slot", slots = list(slot_num = "numeric",
                              tile = "tile"
                              )
         )

# Function To Create an S4 Slot Object
create_s4_slot <- function(num) {
  
  slot <- new("slot",
                slot_num = num
                )
  
  return(slot)
  
}

# Create an Empty S4 Slot
s <- create_s4_slot(num = 1)
t <- create_s4_tile(col = "black", col_num = 1, num = 1)
# Place Tile Into Slot
s@tile <- t
