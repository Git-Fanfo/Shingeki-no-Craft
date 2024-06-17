## add_tags -> Only applies this shifter / select_shifter is a shared ability
$execute if predicate snc:shifters/has_gamemode run scoreboard players operation $gamemode $(shifter)_vars *= #-1 constant
## Roar
#$execute unless score consume $(shifter)_vars matches 1.. if predicate snc:chance/10 run scoreboard players set consume $(shifter)_vars 220

## Colossal
# Wallbreaker
execute as @s[predicate=snc:shifters/colossal/atk_2] run function snc:shifters/mobs/colossal/action/wallbreaker/init

# Heatwave
execute as @s[predicate=snc:shifters/colossal/atk_3] run function snc:shifters/mobs/colossal/action/steam/init

# Jaw
execute as @s[predicate=snc:shifters/colossal/atk_4] run function snc:shifters/mobs/colossal/action/jaw/init

## Cart

# Jaw
execute as @s[predicate=snc:shifters/cart/atk_5] unless score consume cart_vars matches 0.. run function snc:shifters/mobs/cart/action/jaw/add_tags

# Jumping Queen
execute as @s[predicate=snc:shifters/cart/atk_2] on vehicle unless predicate snc:is_riding run function snc:shifters/mobs/cart/action/jumping/init with storage minecraft:cart

# Light Load
execute as @s[predicate=snc:shifters/cart/atk_1] run function snc:shifters/mobs/cart/action/hold/init with storage minecraft:cart
execute as @s[predicate=snc:shifters/cart/atk_3] as @e[tag=aj.cart.locator.consume] run function snc:shifters/mobs/cart/action/hold/drop
# Shipload
execute if predicate snc:shifters/cart/shipload run function snc:shifters/mobs/cart/action/shipload/module

## Attack
# Block
execute as @s[predicate=snc:shifters/attack/atk_1] run function snc:shifters/mobs/attack/action/block/init

# Punch
execute as @s[predicate=snc:shifters/attack/atk_2] run scoreboard players set state attack_vars 12

# Knee
execute as @s[predicate=snc:shifters/attack/atk_3] run scoreboard players set state attack_vars 16

# Jaw
execute as @s[predicate=snc:shifters/attack/atk_4] unless score consume attack_vars matches 0.. run function snc:shifters/mobs/attack/action/jaw/add_tags

## Beast
# Grab
execute as @s[predicate=snc:shifters/beast/atk_1] run scoreboard players set state beast_vars 12
# Release Grab
execute as @s[predicate=snc:shifters/beast/atk_2] run function snc:shifters/mobs/beast/action/grab/end
# Big
execute as @s[predicate=snc:shifters/beast/atk_3] run scoreboard players set state beast_vars 13
# Area
execute as @s[predicate=snc:shifters/beast/atk_4] run scoreboard players set state beast_vars 14
# Jaw
execute as @s[predicate=snc:shifters/beast/atk_5] unless score consume beast_vars matches 0.. run function snc:shifters/mobs/beast/action/jaw/add_tags
# Jaw
execute as @s[predicate=snc:shifters/beast/atk_7] run scoreboard players set state beast_vars 15

## Armor
# Charge
execute as @s[predicate=snc:shifters/armor/atk_1] run scoreboard players set state armor_vars 11
# Punch
execute as @s[predicate=snc:shifters/armor/atk_2] run scoreboard players set state armor_vars 13
# Jaw
execute as @s[predicate=snc:shifters/armor/atk_3] unless score consume armor_vars matches 0.. run function snc:shifters/mobs/armor/action/jaw/add_tags
# Hardening
execute as @s[predicate=snc:shifters/armor/atk_4] run scoreboard players set state armor_vars 17

## Update Abilities
$function snc:shifters/mobs/$(shifter)/abilities/give