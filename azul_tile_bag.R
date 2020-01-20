# Define S4 Tile Bag
setClass("tile_bag", slots = list(slot1 = 'slot',
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
                                  slot29 = 'slot',
                                  slot30 = 'slot',
                                  slot31 = 'slot',
                                  slot32 = 'slot',
                                  slot33 = 'slot',
                                  slot34 = 'slot',
                                  slot35 = 'slot',
                                  slot36 = 'slot',
                                  slot37 = 'slot',
                                  slot38 = 'slot',
                                  slot39 = 'slot',
                                  slot40 = 'slot',
                                  slot41 = 'slot',
                                  slot42 = 'slot',
                                  slot43 = 'slot',
                                  slot44 = 'slot',
                                  slot45 = 'slot',
                                  slot46 = 'slot',
                                  slot47 = 'slot',
                                  slot48 = 'slot',
                                  slot49 = 'slot',
                                  slot50 = 'slot',
                                  slot51 = 'slot',
                                  slot52 = 'slot',
                                  slot53 = 'slot',
                                  slot54 = 'slot',
                                  slot55 = 'slot',
                                  slot56 = 'slot',
                                  slot57 = 'slot',
                                  slot58 = 'slot',
                                  slot59 = 'slot',
                                  slot60 = 'slot',
                                  slot61 = 'slot',
                                  slot62 = 'slot',
                                  slot63 = 'slot',
                                  slot64 = 'slot',
                                  slot65 = 'slot',
                                  slot66 = 'slot',
                                  slot67 = 'slot',
                                  slot68 = 'slot',
                                  slot69 = 'slot',
                                  slot70 = 'slot',
                                  slot71 = 'slot',
                                  slot72 = 'slot',
                                  slot73 = 'slot',
                                  slot74 = 'slot',
                                  slot75 = 'slot',
                                  slot76 = 'slot',
                                  slot77 = 'slot',
                                  slot78 = 'slot',
                                  slot79 = 'slot',
                                  slot80 = 'slot',
                                  slot81 = 'slot',
                                  slot82 = 'slot',
                                  slot83 = 'slot',
                                  slot84 = 'slot',
                                  slot85 = 'slot',
                                  slot86 = 'slot',
                                  slot87 = 'slot',
                                  slot88 = 'slot',
                                  slot89 = 'slot',
                                  slot90 = 'slot',
                                  slot91 = 'slot',
                                  slot92 = 'slot',
                                  slot93 = 'slot',
                                  slot94 = 'slot',
                                  slot95 = 'slot',
                                  slot96 = 'slot',
                                  slot97 = 'slot',
                                  slot98 = 'slot',
                                  slot99 = 'slot',
                                  slot100 = 'slot'
)
)

# Create S4 Tile Bag
create_s4_tile_bag <- function() {
  
  tile_bag <- new("tile_bag")
  
  for (n in c(1:100)) {
    
    s <- create_s4_slot(num = n)
    
    slot(tile_bag, paste0("slot", n)) <- s
    
  }
  
  return(tile_bag)
  
}



# Create a New Tile Bag
test <- create_s4_tile_bag()
