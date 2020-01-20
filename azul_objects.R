library(tidyverse)



# Create An S3 Object Tile Class
create_s3_tile <- function(col, num) {
  
  # Validate The Tile Information
  if (col %in% c("black", "blue", "cyan", "red", "yellow") && num %in% c(1:20)) {
    
    # Create a List of Attributes
    values <- list(color = col, number = num)
    
    # Create Object and Add Tile Class
    attr(values, "class") <- "tile"
    
    # Return Object From Function
    return(values)
    
  } else {
    
    stop("Color and number are not validated.")
    
  }
  
}



# Create An S4 Object Class
setClass("tile", slots = list(color = "character", number = "numeric"))

# Function To Create a Tile
create_s4_tile <- function(col, num) {
  
  # Validate The Tile Information
  if (col %in% c("black", "blue", "cyan", "red", "yellow") && num %in% c(1:20)) {
    
    values <- new("tile", color = col, number = num)
    
    # Return Object From Function
    return(values)
    
  } else {
    
    stop("Color and number are not validated.")
    
  }
  
}

t3 <- create_s3_tile(col = "black", num = 11)
t4 <- create_s4_tile(col = "blue", num = 1)

