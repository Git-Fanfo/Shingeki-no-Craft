## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:armor
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:armor
function snc:shifters/transfer/spaces

## Gamemode
# Combat
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_1 with storage minecraft:armor
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_2 with storage minecraft:armor
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_3 with storage minecraft:armor
execute if score $gamemode armor_vars matches 1 run function snc:shifters/mobs/armor/abilities/atk_4 with storage minecraft:armor

# Utility
execute if score $gamemode armor_vars matches -1 run function snc:shifters/abilities/harden with storage minecraft:armor
# execute if score $gamemode armor_vars matches -1 run function snc:shifters/abilities/destroy with storage minecraft:armor

execute if entity @s[tag=transform] run function snc:shifters/mobs/armor/head {"frame":1}
execute if entity @s[tag=transform] if score state armor_vars matches 11.. run function snc:shifters/mobs/armor/head {"frame":3}

## Gamemode
execute if score $gamemode armor_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:armor
execute if score $gamemode armor_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:armor

function snc:shifters/transfer/actions with storage minecraft:armor