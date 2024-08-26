## Move the pivot between frames
## Always do the animation first
# Set distance at the end
# Use the heart particle to know there the pivot is
execute if score @s atk matches 70 if predicate snc:chance/10 positioned ^ ^6.5 ^-.5 run function snc:titans/mobs/1/attack/1
execute if score @s atk matches 62 if entity @s[tag=attack] run summon snowball ^ ^6.5 ^-.5 {Tags:["snc.projectile","not_mov","motion_vom"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:nether_wart_block"}, Tags: ["snc.projectile","snc.vomit","snc.sticky"]}],Item:{id:"minecraft:arrow",count:1b,components:{"custom_model_data":1}}}

execute if score @s atk matches 139..140 positioned ^ ^6 ^1.5 run function snc:titans/mobs/1/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 137..138 if entity @s[tag=attack] positioned ^ ^6.8 ^.4 run function snc:titans/mobs/1/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 135..136 if entity @s[tag=attack] positioned ^ ^6.5 ^-.2 run function snc:titans/mobs/1/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 133..134 if entity @s[tag=attack] positioned ^ ^6.4 ^-1 run function snc:titans/mobs/1/attack/2 with entity @s item.components."minecraft:custom_data"
execute if score @s atk matches 132 if entity @s[tag=attack] positioned ^ ^6.4 ^-1 run function snc:titans/mobs/1/attack/2 with entity @s item.components."minecraft:custom_data"