execute if data entity @s Item.components."minecraft:custom_data".pure_titan as @a[distance=..5,tag=titan] unless score @s shifter_vars matches 1.. run function snc:titans/abilities/give
##### HOW TO CREATE A SHIFTER #####
# tellraw @a {"selector":"@s"}
#say ?
execute if data entity @s Item.components."minecraft:custom_data".1_titan as @p[scores={cart_vars=1},tag=transform] run function snc:shifters/mobs/cart/abilities/give
execute if data entity @s Item.components."minecraft:custom_data".2_titan as @p[scores={colossal_vars=1},tag=transform] run function snc:shifters/mobs/colossal/abilities/give
execute if data entity @s Item.components."minecraft:custom_data".3_titan as @p[scores={attack_vars=1},tag=transform] run function snc:shifters/mobs/attack/abilities/give
execute if data entity @s Item.components."minecraft:custom_data".4_titan as @p[scores={beast_vars=1},tag=transform] run function snc:shifters/mobs/beast/abilities/give
execute if data entity @s Item.components."minecraft:custom_data".5_titan as @p[scores={armor_vars=1},tag=transform] run function snc:shifters/mobs/armor/abilities/give
execute if data entity @s Item.components."minecraft:custom_data".6_titan as @p[scores={jaw_vars=1},tag=transform] run function snc:shifters/mobs/jaw/abilities/give

execute if data entity @s Item.components."minecraft:custom_data".restart_cart run function snc:shifters/transfer/lose with storage minecraft:cart
execute if data entity @s Item.components."minecraft:custom_data".restart_colossal run function snc:shifters/transfer/lose with storage minecraft:colossal
execute if data entity @s Item.components."minecraft:custom_data".restart_attack run function snc:shifters/transfer/lose with storage minecraft:attack
execute if data entity @s Item.components."minecraft:custom_data".restart_beast run function snc:shifters/transfer/lose with storage minecraft:beast
execute if data entity @s Item.components."minecraft:custom_data".restart_armor run function snc:shifters/transfer/lose with storage minecraft:armor
execute if data entity @s Item.components."minecraft:custom_data".restart_jaw run function snc:shifters/transfer/lose with storage minecraft:jaw

kill @s