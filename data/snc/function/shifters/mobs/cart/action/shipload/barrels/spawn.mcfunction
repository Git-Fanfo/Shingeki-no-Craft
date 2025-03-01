advancement grant @s only snc:shifters/cart/barrels

clear @s quartz[custom_data~{barrels:1b}] 1
## Remove shipload
function snc:shifters/mobs/cart/action/shipload/remove
## Spawn
summon item_display ~ ~2 ~ {UUID:[I;127,127,129,1],teleport_duration: 1,item_display:"head",Tags:["collision","shifter","cart","cart.shipload","cart.case","cart.case.barrels"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:turtle_scute",count:1b,components:{"item_model":"shifters/cart/shipload/load"}}}

summon chest_minecart ~ ~4 ~ {UUID:[I;127,127,130,1],Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.1"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~4 ~ {UUID:[I;127,127,131,1],Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.2"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~4 ~ {UUID:[I;127,127,132,1],Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.3"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
summon chest_minecart ~ ~4 ~ {UUID:[I;127,127,133,1],Invulnerable:1b,CustomDisplayTile:1b,Tags:["collision","shifter","cart","cart.shipload","cart.barrels","cart.barrel.4"],DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}

## Set Mask
scoreboard players set $mask cart_vars 0
execute if entity @s[tag=transform] run function snc:shifters/mobs/cart/abilities/give

return 0