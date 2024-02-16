##### HOW TO CREATE A SHIFTER #####
clear @s[tag=!titan] carrot_on_a_stick{atk_shifter:1b}
clear @s spyglass{atk_shifter:1b}
execute if score @s[tag=transform] shifter_vars matches 1 run function snc:give/item/cart/primary
execute if score @s[tag=transform] shifter_vars matches 2 run function snc:give/item/colossal/primary
execute if score @s[tag=transform] shifter_vars matches 3 run function snc:give/item/attack/primary
execute if score @s[tag=transform] shifter_vars matches 4 run function snc:give/item/beast/primary
execute if score @s[tag=transform] shifter_vars matches 5 run function snc:give/item/armor/primary

advancement revoke @s only snc:shifters/inventory_changed