## Drop current items before replace
function snc:shifters/human/inventory/drop/hotbar
function snc:shifters/human/inventory/drop/armor

function snc:shifters/abilities/clear

## Gamemode
# Combat
execute if score $gamemode cart_vars matches 1 run function snc:shifters/mobs/cart/abilities/atk_3 with storage minecraft:cart
execute if score $gamemode cart_vars matches 1 run function snc:shifters/mobs/cart/abilities/atk_5 with storage minecraft:cart

# Utility
execute if score $gamemode cart_vars matches -1 run function snc:shifters/abilities/farm with storage minecraft:cart
execute if score $gamemode cart_vars matches -1 run function snc:shifters/abilities/harvest with storage minecraft:cart

execute if score $mask cart_vars matches 1 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=4]
execute if score $mask cart_vars matches 0 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=7]
execute if score $gamemode cart_vars matches -1 run item replace entity @s[tag=transform] armor.head with carved_pumpkin[custom_model_data=63]

## Gamemode
execute if score $gamemode cart_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:cart
execute if score $gamemode cart_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:cart

function snc:shifters/transfer/actions with storage minecraft:cart