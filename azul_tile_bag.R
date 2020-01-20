# Define S4 Tile Bag
setClass("tile_bag", slots = list(slot1 = "slot",
                                  slot2 = "slot",
                                  slot3 = "slot",
                                  slot4 = "slot"
                                  )
         )

# Create S4 Tile Bag
create_s4_tile_bag <- function() {
  
  tile_bag <- new("tile_bag")
  
  return(tile_bag)
  
}



# Create a New Tile Bag
test <- create_s4_tile_bag()
