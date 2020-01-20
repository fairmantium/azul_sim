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

# Define an S4 Object Middle Factory Class
setClass("mid_fac", slots = list(slot1 = "slot",
                                  slot2 = "slot",
                                  slot3 = "slot",
                                  slot4 = "slot",
                                  slot5 = "slot",
                                  slot6 = "slot",
                                  slot7 = "slot",
                                  slot8 = "slot",
                                  slot9 = "slot",
                                  slot10 = "slot",
                                  slot11 = "slot",
                                  slot12 = "slot",
                                  slot13 = "slot",
                                  slot14 = "slot",
                                  slot15 = "slot"
                                  )
)

# Create an S4 Middle Factory
create_s4_mid <- function() {
  
  values <- new("mid_fact")
  
  return(values)
  
}



# Create an S4 Factory Object
f <- create_s4_factory(num = 1)
# Create 4 S4 Slots Into Factory
s1 <- create_s4_slot(num = 1)
s2 <- create_s4_slot(num = 2)
s3 <- create_s4_slot(num = 3)
s4 <- create_s4_slot(num = 4)
# Place S4 Slots Into The S4 Factory
f@slot1 <- s1
f@slot2 <- s2
f@slot3 <- s3
f@slot4 <- s4

# Create an S4 Middle Factory
mf <- create_s4_mid()
