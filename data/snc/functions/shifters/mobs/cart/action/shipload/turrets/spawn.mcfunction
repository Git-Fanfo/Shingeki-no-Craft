## Remove shipload
execute as @e[tag=cart.shipload] run function snc:shifters/mobs/check_shipload

## Spawn
advancement grant @s only snc:shifters/turrets
summon item_display ~ ~2 ~ {item_display:"head",Tags:["collision","shifter","cart","cart.shipload","cart.case","cart.case.turrets"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:504}}}

summon interaction ~ ~5.7 ~ {width:1.2f,height:1.2f,Tags:["collision","shifter","cart","cart.shipload","cart.gun","cart.turret.1"],Passengers:[{id:"minecraft:item_display",item_display:"head",item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:3}}}]}
summon interaction ~ ~5.7 ~ {width:1.2f,height:1.2f,Tags:["collision","shifter","cart","cart.shipload","cart.gun","cart.turret.2"],Passengers:[{id:"minecraft:item_display",item_display:"head",item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:3}}}]}
summon interaction ~ ~4.8 ~ {width:1.2f,height:1.2f,Tags:["collision","shifter","cart","cart.shipload","cart.gun","cart.turret.3"],Passengers:[{id:"minecraft:item_display",item_display:"head",item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:3}}}]}

clear @s carrot_on_a_stick{turrets:1b} 1

## Set Mask
scoreboard players set $mask cart_vars 1
function snc:give/item/cart/primary

return 0