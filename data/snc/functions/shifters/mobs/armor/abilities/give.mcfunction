## Drop current items before replace
function snc:shifters/human/inventory/drop/hotbar
function snc:shifters/human/inventory/drop/armor

function snc:shifters/abilities/clear

## Gamemode
# Combat
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_1 with storage minecraft:armor
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_2 with storage minecraft:armor
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_3 with storage minecraft:armor
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_4 with storage minecraft:armor

# Utility
execute if score $gamemode armor_vars matches -1 run function snc:shifters/abilities/destroy with storage minecraft:armor

execute unless score consume armor_vars matches 61.. run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=64]
execute if score consume armor_vars matches 61.. run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=66]

## Gamemode
# execute if score $gamemode armor_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:armor
# execute if score $gamemode armor_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:armor

function snc:shifters/transfer/actions with storage minecraft:armor