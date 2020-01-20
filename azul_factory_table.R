# Define S4 Factory Table
setClass("factory_table", slots = list(factory1 = "factory",
                                       factory2 = "factory",
                                       factory3 = "factory",
                                       factory4 = "factory",
                                       factory5 = "factory",
                                       factory6 = "factory",
                                       factory7 = "factory",
                                       factory8 = "factory",
                                       factory9 = "factory",
                                       middle = "mid_fac"
                                       )
)

create_s4_factory_table <- function() {
  
  # Create a Factory Table
  table <- new("factory_table")
  
}

test <- create_s4_factory_table()