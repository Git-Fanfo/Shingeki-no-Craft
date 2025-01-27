## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:jaw
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:jaw
function snc:shifters/transfer/spaces

## Gamemode
# Combat
execute if score $gamemode jaw_vars matches 1 run function snc:shifters/mobs/jaw/abilities/atk_1 with storage minecraft:jaw
#execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_2 with storage minecraft:armor
#execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_3 with storage minecraft:armor
#execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_4 with storage minecraft:armor

# Utility
#execute if score $gamemode armor_vars matches -1 run function snc:shifters/abilities/harden with storage minecraft:armor

# Head
execute if entity @s[tag=transform] run item replace entity @s armor.head with carved_pumpkin[item_model="shifters/jaw/1"]

## Gamemode
#execute if score $gamemode armor_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:armor
#execute if score $gamemode armor_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:armor

function snc:shifters/transfer/actions with storage minecraft:jaw