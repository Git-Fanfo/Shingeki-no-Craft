##### HOW TO CREATE A SHIFTER #####
clear @s[tag=!titan] carrot_on_a_stick[custom_data~{atk_shifter:1}]
clear @s spyglass[custom_data~{atk_shifter:1}]
clear @s carved_pumpkin[custom_data~{atk_shifter:1}]
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute if score @s[tag=transform] shifter_vars matches 1 run function snc:give/item/cart/primary
execute if score @s[tag=transform] shifter_vars matches 2 run function snc:give/item/colossal/primary
execute if score @s[tag=transform] shifter_vars matches 3 run function snc:shifters/mobs/attack/abilities/give
execute if score @s[tag=transform] shifter_vars matches 4 run function snc:give/item/beast/primary
execute if score @s[tag=transform] shifter_vars matches 5 run function snc:give/item/armor/primary

advancement revoke @s only snc:shifters/inventory_changed
advancement revoke @s only snc:shifters/player_armor