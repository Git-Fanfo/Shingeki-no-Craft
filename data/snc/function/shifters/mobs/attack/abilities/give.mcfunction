## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:attack
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:attack
function snc:shifters/transfer/spaces

## Gamemode
# Combat
execute if score $gamemode attack_vars matches 1 run function snc:shifters/mobs/attack/abilities/atk_1 with storage minecraft:attack
execute if score $gamemode attack_vars matches 1 run function snc:shifters/mobs/attack/abilities/atk_2 with storage minecraft:attack
execute if score $gamemode attack_vars matches 1 run function snc:shifters/mobs/attack/abilities/atk_3 with storage minecraft:attack
execute if score $gamemode attack_vars matches 1 run function snc:shifters/mobs/attack/abilities/atk_4 with storage minecraft:attack

# Utility
execute if score $gamemode attack_vars matches -1 run function snc:shifters/abilities/destroy with storage minecraft:attack
execute if score $gamemode attack_vars matches -1 run function snc:shifters/abilities/harvest with storage minecraft:cart

item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=28]

## Gamemode
# execute if score $gamemode attack_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:attack
# execute if score $gamemode attack_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:attack

function snc:shifters/transfer/actions with storage minecraft:attack