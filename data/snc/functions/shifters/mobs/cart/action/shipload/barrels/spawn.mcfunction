## Remove shipload
execute as @e[tag=cart.shipload] run function snc:shifters/mobs/remove_hitboxes

## Spawn
advancement grant @s only snc:shifters/cart/barrels
summon item_display ~ ~2 ~ {teleport_duration: 1,item_display:"head",Tags:["collision","shifter","cart","cart.shipload","cart.case","cart.case.barrels"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:turtle_scute",Count:1b,components:{"custom_model_data":503}}}
summon chest_minecart ~ ~4 ~ {teleport_duration: 1,Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.1"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~4 ~ {teleport_duration: 1,Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.2"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~4 ~ {teleport_duration: 1,Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.3"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~4 ~ {teleport_duration: 1,Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.4"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}

clear @s carrot_on_a_stick[custom_data~{barrels:1b}]

## Set Mask
scoreboard players set $mask cart_vars 0
function snc:shifters/mobs/cart/abilities/give

return 0