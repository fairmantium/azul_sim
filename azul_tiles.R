# Create An S4 Object Tile Class
setClass("tile", slots = list(color = "character", number = "numeric"))

# Function To Create a Tile
create_s4_tile <- function(col, num) {
  
  # Validate The Tile Information
  if (col %in% c("black", "blue", "cyan", "red", "yellow") && num %in% c(1:20)) {
    
    values <- new("tile", color = col, number = num)
    
    # Return Object From Function
    return(values)
    
  } else {
    
    # Error Message If Bad Values Are Passed
    stop("Color and number are not validated.")
    
  }
  
}

# Create an S4 Tile Object
t <- create_s4_tile(col = "blue", num = 1)
