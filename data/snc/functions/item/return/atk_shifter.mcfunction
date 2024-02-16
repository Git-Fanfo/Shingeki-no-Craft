execute if data entity @s Item.tag.pure_titan as @a[distance=..5,tag=titan] unless score @s shifter_vars matches 1.. run function snc:give/item/shifters/pure/main
##### HOW TO CREATE A SHIFTER #####
execute if data entity @s Item.tag.1_titan as @p[scores={cart_vars=1},tag=transform] run function snc:give/item/cart/primary
execute if data entity @s Item.tag.2_titan as @p[scores={colossal_vars=1},tag=transform] run function snc:give/item/colossal/primary
execute if data entity @s Item.tag.3_titan as @p[scores={attack_vars=1},tag=transform] run function snc:give/item/attack/primary
execute if data entity @s Item.tag.4_titan as @p[scores={beast_vars=1},tag=transform] run function snc:give/item/beast/primary
execute if data entity @s Item.tag.5_titan as @p[scores={armor_vars=1},tag=transform] run function snc:give/item/armor/primary

execute if data entity @s Item.tag.restart_cart run function snc:shifters/transfer/lose with storage minecraft:cart
execute if data entity @s Item.tag.restart_colossal run function snc:shifters/transfer/lose with storage minecraft:colossal
execute if data entity @s Item.tag.restart_attack run function snc:shifters/transfer/lose with storage minecraft:attack
execute if data entity @s Item.tag.restart_beast run function snc:shifters/transfer/lose with storage minecraft:beast
execute if data entity @s Item.tag.restart_armor run function snc:shifters/transfer/lose with storage minecraft:armor

kill @s