playsound minecraft:block.anvil.use player @a ~ ~ ~ 5 .8
execute anchored eyes run particle minecraft:block{block_state:"light_blue_glazed_terracotta"} ^ ^-2 ^ .7 .7 .7 1 100 force
execute anchored eyes run particle minecraft:block{block_state:"raw_gold_block"} ^ ^-2 ^ .8 .8 .8 1 600 force
## Add the other shifters

function snc:shifters/function/unique {"pre":"scoreboard players remove $energy ","post":"_vars 700"}