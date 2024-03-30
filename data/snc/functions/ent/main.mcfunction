#> snc:ent/main
# Manages entities functions in every tick
#
# @input
#   Any entity
#
# @output
#   Behavior for each entity

## This first section handle almost everything related with players and shifters
## For this datapack, villagers are almost the same as a player
# execute if entity @s[type=#snc:eldian] run function snc:ent/human

## Seconds functions
execute if score ticks clock matches 19 run function snc:ent/seconds

## Titans
# Pure
execute if entity @s[tag=titan] run function snc:titans/main

## Apply Motion to not moving projectiles
execute if entity @s[tag=not_mov] rotated as @p run function snc:logic/apply_motion/main
# Projectile Effects
execute if entity @s[tag=projectile] run function snc:player/gun/select_effect
# Bullet Effects (If has bullet Ex: Spears, Canons, etc...)
execute if entity @s[tag=bullet] run function snc:player/gun/select_bullet
# ODM
execute if entity @s[tag=odm] run function snc:player/odm/main

## Shifter
execute if entity @s[tag=shifter,type=!villager] run function snc:shifters/mobs/check_dead

## Village
# Show blood
execute if entity @s[type=armor_stand,tag=body] unless predicate snc:is_riding run function snc:eldia/body
execute if entity @s[tag=marleyan] run function snc:ent/pill/select_marleyan

execute if entity @s[tag=volt] run function snc:titans/volt/main

execute if entity @s[tag=flare] run function snc:player/gun/flare/select_color

## Interact with stuff
execute if entity @s[type=interaction] run function snc:interact/main

# Detect Item
execute if entity @s[type=falling_block,tag=debris] run function snc:item/debris/main