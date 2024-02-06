## add_tags -> Only applies this shifter / select_shifter is a shared ability
execute unless predicate snc:has_remove run playsound block.beacon.power_select player @s ~ ~ ~ 1 2
execute if predicate snc:has_remove run playsound block.beacon.deactivate player @s ~ ~ ~ 1 2

$scoreboard players remove $energy $(shifter)_vars $(energy_attack)

## Colossal
# Wallbreaker
execute as @s[predicate=snc:has_colossal_atk_2] run function snc:shifters/mobs/colossal/action/wallbreaker/init

# Heatwave
execute as @s[predicate=snc:has_colossal_atk_3] run function snc:shifters/mobs/colossal/action/steam/select_shifter

# Jaw
execute as @s[predicate=snc:has_colossal_atk_4] run function snc:shifters/mobs/colossal/action/jaw/init

## Cart
# Slam
execute as @s[predicate=snc:cart/has_atk_3] run function snc:shifters/mobs/cart/action/slam/init

# Jaw
execute as @s[predicate=snc:cart/has_atk_5] unless score consume cart_vars matches 0.. run function snc:shifters/mobs/cart/action/jaw/init

# Metal
execute as @s[predicate=snc:cart/has_atk_6] run function snc:shifters/mobs/cart/action/metal/select_shifter

## Attack
# Block
execute as @s[predicate=snc:attack/has_atk_1] run scoreboard players set state attack_vars 19

# Punch
execute as @s[predicate=snc:attack/has_atk_2] run scoreboard players set state attack_vars 12

# Knee
execute as @s[predicate=snc:attack/has_atk_3] run scoreboard players set state attack_vars 16

# Jaw
execute as @s[predicate=snc:attack/has_atk_4] unless score consume attack_vars matches 0.. run function snc:shifters/mobs/attack/action/jaw/add_tags

## Beast
# Grab
execute as @s[predicate=snc:beast/has_atk_1] run scoreboard players set state beast_vars 12
# Release Grab
execute as @s[predicate=snc:beast/has_atk_2] run function snc:shifters/mobs/beast/action/grab/end
# Big
execute as @s[predicate=snc:beast/has_atk_3] run scoreboard players set state beast_vars 13
# Area
execute as @s[predicate=snc:beast/has_atk_4] run scoreboard players set state beast_vars 14
# Jaw
execute as @s[predicate=snc:beast/has_atk_5] unless score consume beast_vars matches 0.. run function snc:shifters/mobs/beast/action/jaw/add_tags