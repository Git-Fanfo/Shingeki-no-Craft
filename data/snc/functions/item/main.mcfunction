execute if data entity @s {Item:{id:"minecraft:lead"}} run kill
execute if data entity @s {Item:{id:"minecraft:barrier"}} run kill

execute if data entity @s Item.tag.gene unless data entity @s Item.tag.inv run function snc:item/return/gene
execute if data entity @s Item.tag.handcuffs_inv run kill

execute if data entity @s Item.tag.atk_shifter run function snc:item/return/atk_shifter
execute if data entity @s Item.tag.red if entity @p[distance=1.5..2] run function snc:item/return/red
execute if data entity @s Item.tag.black if entity @p[distance=1.5..2] run function snc:item/return/black
execute if data entity @s Item.tag.yellow if entity @p[distance=1.5..2] run function snc:item/return/yellow
execute if data entity @s Item.tag.green if entity @p[distance=1.5..2] run function snc:item/return/green
execute if data entity @s Item.tag.blue if entity @p[distance=1.5..2] run function snc:item/return/blue
execute if data entity @s Item.tag.purple if entity @p[distance=1.5..2] run function snc:item/return/purple

## If is infected
execute if score @s atk matches 240 run function snc:player/titan/infect/food
## Replace name with custom name
# Comment this line if everything starts lagging. Bomb's fault
execute if score ticks clock matches 3 run data modify entity @s CustomName set from entity @s Item.tag.display.Name