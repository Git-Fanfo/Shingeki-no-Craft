##### HOW TO CREATE A SHIFTER #####
clear @s[tag=!titan] carrot_on_a_stick[custom_data~{atk_shifter:1b}]
clear @s spyglass[custom_data~{atk_shifter:1b}]
clear @s carved_pumpkin[custom_data~{atk_shifter:1b}]
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute if score @s[tag=transform] shifter_vars matches 1 run function snc:shifters/mobs/cart/abilities/give
execute if score @s[tag=transform] shifter_vars matches 2 run function snc:shifters/mobs/colossal/abilities/give
execute if score @s[tag=transform] shifter_vars matches 3 run function snc:shifters/mobs/attack/abilities/give
execute if score @s[tag=transform] shifter_vars matches 4 run function snc:shifters/mobs/beast/abilities/give
execute if score @s[tag=transform] shifter_vars matches 5 run function snc:shifters/mobs/armor/abilities/give

# advancement revoke @s only snc:shifters/inventory_changed
advancement revoke @s only snc:shifters/player_armor