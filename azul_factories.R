# Create an S3 Object Factory Class
create_s3_factory <- function(num) {
  
  values <- list(factory_num = num,
                 slot1 = "slot",
                 slot1 = "slot",
                 slot3 = "slot",
                 slot4 = "slot"
  )
  
  attr(values, "class") <- "factory"
  
  return(values)
  
}

# Define an S4 Object Factory Class
setClass("factory", slots = list(factory_num = "numeric",
                                 slot1 = "slot",
                                 slot2 = "slot",
                                 slot3 = "slot",
                                 slot4 = "slot"
                                 )
)

# Function to Create an S4 Factory Object
create_s4_factory <- function(num) {
  
  values <- new("factory", factory_num = num)
  
  return(values)
  
}

# Create an S3 Factory Object
f3 <- create_s3_factory(num = 1)
# Create 4 S3 Slots Into Factory
s3_1 <- create_s3_slot(num = 1)
s3_2 <- create_s3_slot(num = 2)
s3_3 <- create_s3_slot(num = 3)
s3_4 <- create_s3_slot(num = 4)
# Plase S3 Slots Into The S3 Factory
f3$slot1 <- s3_1
f3$slot2 <- s3_2
f3$slot3 <- s3_3
f3$slot4 <- s3_4

# Create an S4 Factory Object
f4 <- create_s4_factory(num = 1)
# Place 4 Slots Into Factory
s4_1 <- create_s4_slot(num = 1)
s4_2 <- create_s4_slot(num = 2)
s4_3 <- create_s4_slot(num = 3)
s4_4 <- create_s4_slot(num = 4)
# Place S4 Slots Into The S4 Factory
f4@slot1 <- s4_1
f4@slot2 <- s4_2
f4@slot3 <- s4_3
f4@slot4 <- s4_4
