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
  s1 <- create_s4_slot(num = 1)
  s2 <- create_s4_slot(num = 2)
  s3 <- create_s4_slot(num = 3)
  s4 <- create_s4_slot(num = 4)
  
  # Place Slots Into Factory
  factory@slot1 <- s1
  factory@slot2 <- s2
  factory@slot3 <- s3
  factory@slot4 <- s4
  
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
  s1 <- create_s4_slot(num = 1)
  s2 <- create_s4_slot(num = 2)
  s3 <- create_s4_slot(num = 3)
  s4 <- create_s4_slot(num = 4)
  s5 <- create_s4_slot(num = 5)
  s6 <- create_s4_slot(num = 6)
  s7 <- create_s4_slot(num = 7)
  s8 <- create_s4_slot(num = 8)
  s9 <- create_s4_slot(num = 9)
  s10 <- create_s4_slot(num = 10)
  s11 <- create_s4_slot(num = 11)
  s12 <- create_s4_slot(num = 12)
  s13 <- create_s4_slot(num = 13)
  s14 <- create_s4_slot(num = 14)
  s15 <- create_s4_slot(num = 15)
  
  # Place Slots Into Factory
  mid@slot1 <- s1
  mid@slot2 <- s2
  mid@slot3 <- s3
  mid@slot4 <- s4
  mid@slot5 <- s5
  mid@slot6 <- s6
  mid@slot7 <- s7
  mid@slot8 <- s8
  mid@slot9 <- s9
  mid@slot10 <- s10
  mid@slot11 <- s11
  mid@slot12 <- s12
  mid@slot13 <- s13
  mid@slot14 <- s14
  mid@slot15 <- s15
  
  return(mid)
  
}



# Create an S4 Factory Object
f <- create_s4_factory(num = 1)

# Create an S4 Middle Factory
mf <- create_s4_mid()
