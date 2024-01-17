execute if data entity @s Item.tag.pure_titan as @a[distance=..5] unless score @s shifter_vars matches 1.. run function snc:give/item/shifters/pure/main
##### HOW TO CREATE A SHIFTER #####
execute if data entity @s Item.tag.1_titan as @p[scores={cart_vars=1},tag=transform] run function snc:give/item/cart/primary
execute if data entity @s Item.tag.2_titan as @p[scores={colossal_vars=1},tag=transform] run function snc:give/item/colossal/primary
execute if data entity @s Item.tag.3_titan as @p[scores={attack_vars=1},tag=transform] run function snc:give/item/attack/primary
execute if data entity @s Item.tag.4_titan as @p[scores={beast_vars=1},tag=transform] run function snc:give/item/beast/primary
kill @s