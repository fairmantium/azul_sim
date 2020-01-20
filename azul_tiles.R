# Create An S4 Object Tile Class
setClass("tile", slots = list(color = "character",
                              color_number = "numeric",
                              number = "numeric"
                              )
         )

# Function To Create a Tile
create_s4_tile <- function(col, col_num, num) {
  
  # Validate The Tile Information
  if (col %in% c("black", "blue", "cyan", "red", "yellow") && num %in% c(1:20)) {
    
    tile <- new("tile",
                color = col,
                color_number = col_num,
                number = num
                )
    
    # Return Object From Function
    return(tile)
    
  } else {
    
    # Error Message If Bad Values Are Passed
    stop("Color and number are not validated.")
    
  }
  
}

# Create an S4 Tile Object
t <- create_s4_tile(col = "blue", col_num = 1, num = 1)
