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
# Theoretical Maximum is 27 Tiles With 9 Factories
setClass("mid_fac", slots = list(slot1 = 'slot',
                                 slot2 = 'slot',
                                 slot3 = 'slot',
                                 slot4 = 'slot',
                                 slot5 = 'slot',
                                 slot6 = 'slot',
                                 slot7 = 'slot',
                                 slot8 = 'slot',
                                 slot9 = 'slot',
                                 slot10 = 'slot',
                                 slot11 = 'slot',
                                 slot12 = 'slot',
                                 slot13 = 'slot',
                                 slot14 = 'slot',
                                 slot15 = 'slot',
                                 slot16 = 'slot',
                                 slot17 = 'slot',
                                 slot18 = 'slot',
                                 slot19 = 'slot',
                                 slot20 = 'slot',
                                 slot21 = 'slot',
                                 slot22 = 'slot',
                                 slot23 = 'slot',
                                 slot24 = 'slot',
                                 slot25 = 'slot',
                                 slot26 = 'slot',
                                 slot27 = 'slot',
                                 slot28 = 'slot',
                                 slot29 = 'slot'
                                 )

)

# Create an S4 Middle Factory
create_s4_mid <- function() {
  
  mid <- new("mid_fac")
  
  # Create Slots To put Into Factory
  for (n in c(1:29)) {
    
    s <- create_s4_slot(num = n)
    slot(mid, paste0("slot", n)) <- s
    
  }
  
  return(mid)
  
}



# Create an S4 Factory Object
f <- create_s4_factory(num = 1)

# Create an S4 Middle Factory
mf <- create_s4_mid()
