## Bleed
execute if predicate snc:is_hurt if entity @s[tag=!killed] run \
    particle minecraft:block minecraft:redstone_block ^ ^1 ^-.45 0 0 0 1 30
## ## SHIFTER FUNCTIONS ## ##
execute if score @s shifter_vars matches 1.. run function snc:shifters/human/main

# Turn into pure titan
execute if score @s atk matches 1.. run function snc:player/titan/transformation
# Particles
execute if score @s koniglich matches 1 run function snc:eldia/koniglich
## Player
execute as @s[type=player] run function snc:player/main
## Villager
execute as @s[type=#snc:villager] run function snc:eldia/main