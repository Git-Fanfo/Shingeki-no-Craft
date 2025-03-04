advancement grant @s only snc:shifters/cart/turrets

clear @s quartz[custom_data~{turrets:1b}] 1
## Remove shipload
function snc:shifters/mobs/cart/action/shipload/remove
## Spawn
summon item_display ~ ~2 ~ {UUID:[I;127,127,129,1],teleport_duration: 1,item_display:"head",Tags:["collision","shifter","cart","cart.shipload","cart.case","cart.case.turrets"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:iron_ingot",count:1b,components:{"item_model":"shifters/cart/shipload/triple"}}}

summon item_display ~ ~5.7 ~ {UUID:[I;127,127,130,1],Tags:["collision","shifter","cart","cart.shipload","cart.turret.1"],teleport_duration: 1,item_display:"head",item:{id:"minecraft:flint",count:1b,components:{"item_model":"shifters/cart/guns"}},Passengers:[{id:"minecraft:interaction",width:2,height:1.2f}]}
summon item_display ~ ~5.7 ~ {UUID:[I;127,127,131,1],Tags:["collision","shifter","cart","cart.shipload","cart.turret.2"],teleport_duration: 1,item_display:"head",item:{id:"minecraft:flint",count:1b,components:{"item_model":"shifters/cart/guns"}},Passengers:[{id:"minecraft:interaction",width:2,height:1.2f}]}
summon item_display ~ ~4.8 ~ {UUID:[I;127,127,132,1],Tags:["collision","shifter","cart","cart.shipload","cart.turret.3"],teleport_duration: 1,item_display:"head",item:{id:"minecraft:flint",count:1b,components:{"item_model":"shifters/cart/guns"}},Passengers:[{id:"minecraft:interaction",width:2,height:1.2f}]}

## Set Mask
scoreboard players set $mask cart_vars 1
execute if entity @s[tag=transform] run function snc:shifters/mobs/cart/abilities/give

return 0