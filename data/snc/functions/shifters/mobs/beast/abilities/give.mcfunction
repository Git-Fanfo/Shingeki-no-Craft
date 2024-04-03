## Drop current items before replace
function snc:shifters/human/inventory/drop/hotbar
function snc:shifters/human/inventory/drop/armor

function snc:shifters/abilities/clear

## Gamemode
# Combat
execute if score $gamemode attack_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_5 with storage minecraft:beast
execute if score $gamemode attack_vars matches 1 unless score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_1 with storage minecraft:beast
execute if score $gamemode attack_vars matches 1 if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_2 with storage minecraft:beast
execute if score $gamemode attack_vars matches 1 if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_3 with storage minecraft:beast
execute if score $gamemode attack_vars matches 1 if score $hold beast_vars matches 1 run function snc:shifters/mobs/beast/abilities/atk_4 with storage minecraft:beast

# Utility
execute if score $gamemode attack_vars matches -1 run function snc:shifters/abilities/destroy with storage minecraft:attack

item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=60]

## Gamemode
# execute if score $gamemode attack_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:attack
# execute if score $gamemode attack_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:attack

function snc:shifters/transfer/actions with storage minecraft:beast