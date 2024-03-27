setblock ~1 ~ ~1 stripped_dark_oak_wood
setblock ~-1 ~ ~-1 stripped_dark_oak_wood
setblock ~1 ~ ~-1 stripped_dark_oak_wood
setblock ~-1 ~ ~1 stripped_dark_oak_wood
setblock ~ ~ ~1 spruce_trapdoor[half=top,facing=south]
setblock ~ ~ ~-1 spruce_trapdoor[half=top]
setblock ~1 ~ ~ spruce_trapdoor[half=top,facing=east]
setblock ~-1 ~ ~ spruce_trapdoor[half=top,facing=west]

setblock ~1 ~1 ~1 brick_wall
setblock ~-1 ~1 ~-1 brick_wall
setblock ~1 ~1 ~-1 brick_wall
setblock ~-1 ~1 ~1 brick_wall
setblock ~ ~1 ~1 purple_candle[lit=true,candles=2]
setblock ~ ~1 ~-1 purple_candle[lit=true,candles=3]
setblock ~1 ~1 ~ purple_candle[lit=true,candles=4]
setblock ~-1 ~1 ~ purple_candle[lit=true,candles=2]

setblock ~1 ~2 ~1 brick_wall
setblock ~-1 ~2 ~-1 brick_wall
setblock ~1 ~2 ~-1 brick_wall
setblock ~-1 ~2 ~1 brick_wall

setblock ~1 ~3 ~1 cherry_slab
setblock ~-1 ~3 ~-1 bamboo_slab
setblock ~1 ~3 ~-1 warped_slab
setblock ~-1 ~3 ~1 mangrove_slab
setblock ~ ~3 ~1 stripped_dark_oak_wood
setblock ~ ~3 ~-1 stripped_dark_oak_wood
setblock ~1 ~3 ~ stripped_dark_oak_wood
setblock ~-1 ~3 ~ stripped_dark_oak_wood
setblock ~ ~3 ~ soul_campfire

setblock ~ ~3 ~2 black_wall_banner[facing=south]{Patterns:[{Color:10,Pattern:"bs"},{Color:10,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"bo"}]}
setblock ~ ~3 ~-2 black_wall_banner{Patterns:[{Color:10,Pattern:"bs"},{Color:10,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"bo"}]}
setblock ~2 ~3 ~ black_wall_banner[facing=east]{Patterns:[{Color:10,Pattern:"bs"},{Color:10,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"bo"}]}
setblock ~-2 ~3 ~ black_wall_banner[facing=west]{Patterns:[{Color:10,Pattern:"bs"},{Color:10,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:15,Pattern:"cbo"},{Color:15,Pattern:"bo"}]}

playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 .7

function snc:eldia/wandering_trader/trades