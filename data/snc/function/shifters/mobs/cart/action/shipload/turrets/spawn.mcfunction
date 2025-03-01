advancement grant @s only snc:shifters/cart/turrets

clear @s quartz[custom_data~{turrets:1b}] 1
## Remove shipload
function snc:shifters/mobs/cart/action/shipload/remove
## Spawn
summon item_display ~ ~2 ~ {UUID:[I;127,127,129,1],teleport_duration: 1,item_display:"head",Tags:["collision","shifter","cart","cart.shipload","cart.case","cart.case.turrets"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:turtle_scute",count:1b,components:{"item_model":"shifters/cart/shipload/triple"}}}

summon interaction ~ ~5.7 ~ {UUID:[I;127,127,130,1],width:2f,height:1.2f,Tags:["collision","shifter","cart","cart.shipload","cart.gun","cart.turret.1"],Passengers:[{id:"minecraft:item_display",teleport_duration: 1,item_display:"head",item:{id:"minecraft:carved_pumpkin",count:1b,components:{"custom_model_data":3}}}]}
summon interaction ~ ~5.7 ~ {UUID:[I;127,127,131,1],width:2f,height:1.2f,Tags:["collision","shifter","cart","cart.shipload","cart.gun","cart.turret.2"],Passengers:[{id:"minecraft:item_display",teleport_duration: 1,item_display:"head",item:{id:"minecraft:carved_pumpkin",count:1b,components:{"custom_model_data":3}}}]}
summon interaction ~ ~4.8 ~ {UUID:[I;127,127,132,1],width:2,height:1.2f,Tags:["collision","shifter","cart","cart.shipload","cart.gun","cart.turret.3"],Passengers:[{id:"minecraft:item_display",teleport_duration: 1,item_display:"head",item:{id:"minecraft:carved_pumpkin",count:1b,components:{"custom_model_data":3}}}]}

## Set Mask
scoreboard players set $mask cart_vars 1
execute if entity @s[tag=transform] run function snc:shifters/mobs/cart/abilities/give

return 0