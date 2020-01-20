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
  
  # Create A Factory
  factory <- new("factory", factory_num = num)
  
  # Create Slots To put Into Factory
  for (n in c(1:4)) {
    
    s <- create_s4_slot(num = n)
    slot(factory, paste0("slot", n)) <- s
    
  }
  
  return(factory)
  
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
  
  mid <- new("mid_fac")
  
  # Create Slots To put Into Factory
  for (n in c(1:15)) {
    
    s <- create_s4_slot(num = n)
    slot(mid, paste0("slot", n)) <- s
    
  }
  
  return(mid)
  
}



# Create an S4 Factory Object
f <- create_s4_factory(num = 1)

# Create an S4 Middle Factory
mf <- create_s4_mid()
