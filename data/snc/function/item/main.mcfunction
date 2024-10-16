## Replace name with custom name
# Comment this line if everything starts lagging. Bomb's fault
data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"

execute if data entity @s {Item:{id:"minecraft:barrier"}} run kill

execute if data entity @s Item.components."minecraft:custom_data".gene unless data entity @s Item.components."minecraft:custom_data".inv run function snc:item/return/sex
execute if data entity @s Item.components."minecraft:custom_data".handcuffs_inv run kill

execute if data entity @s Item.components."minecraft:custom_data".atk_shifter run function snc:item/return/atk_shifter
execute if data entity @s Item.components."minecraft:custom_data".gun run function snc:item/return/flare

## If is infected
execute if score @s atk matches 240 run function snc:player/titan/infect/food

# Read just once
tag @s add snc.item