#> snc:ent/main
# Manages entities functions in every tick
#
# @input
#   Any entity
#
# @output
#   Behavior for each entity

## Seconds functions
execute if score ticks clock matches 19 run function snc:ent/seconds

## Titans
# Pure
execute if entity @s[tag=titan] if function snc:titans/main run return -1

## Apply Motion to not moving projectiles
execute if entity @s[tag=not_mov] rotated as @p run function snc:logic/apply_motion/main

## Projectiles
execute if entity @s[tag=snc.projectile] if function snc:player/gun/main run return -1
## Shifter
execute if entity @s[tag=shifter,type=!villager] if function snc:shifters/mobs/check_dead run return -1

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