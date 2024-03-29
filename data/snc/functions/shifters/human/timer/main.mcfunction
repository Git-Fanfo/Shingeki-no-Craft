#> snc:shifters/human/timer/main
# Controlls the player who has the shifter, tracking attributes such as health, if it disconnects, if its hurt.
#
# @Input:
#   Detects if player with shifter is doing an action.
#
# @Output:
#   Based on the action triggers other functions.

$execute as @s[tag=!transform] run \
    function snc:shifters/human/timer/time_up {"shifter":$(shifter),"time":$(time)}
$execute as @s[tag=transform] run function snc:shifters/human/timer/time_down {"shifter":$(shifter),"color":$(color)}

## Remove transform
execute if entity @s[tag=injured] if predicate snc:is_hurt run function snc:shifters/transfer/hit

$execute store result score #x_$(shifter) shifter_vars run data get entity @s Pos[0]
$execute store result score #z_$(shifter) shifter_vars run data get entity @s Pos[2]

# Set titan's current health to the corresponding scoreboard.
$execute store result score titan.health.bar $(shifter)_vars run data get entity @s AbsorptionAmount
$execute if score titan.health.bar $(shifter)_vars matches 0 run tag @s[tag=!first] add injured
$execute if score titan.health.bar $(shifter)_vars matches 20.. run tag @s remove injured

## Regeneration
# Human
$scoreboard players add human.regen $(shifter)_vars 1
$execute if score human.regen $(shifter)_vars matches 40.. run scoreboard players set human.regen $(shifter)_vars 0
$execute if entity @s[tag=!first,tag=!transform] if score human.regen $(shifter)_vars matches 0 run function snc:shifters/human/regeneration {"shifter":$(shifter)}
# Shifter
$scoreboard players add shift.regen $(shifter)_vars 1
$execute if score shift.regen $(shifter)_vars matches $(regen_ticks).. run scoreboard players set shift.regen $(shifter)_vars 0
$execute if entity @s[tag=!first,tag=transform] if score shift.regen $(shifter)_vars matches 0 run function snc:shifters/mobs/regeneration {"shifter":$(shifter),"hp":$(hp)}

## Injured
execute if score ticks clock matches 19 if entity @s[tag=injured] run function snc:player/titan/effects/injured

# Set player's current health to the corresponding scoreboard.
$execute if entity @s[tag=first] store result score player_health_bar $(shifter)_vars run data get entity @s Health
$execute if entity @s[tag=first] if score player_health_bar $(shifter)_vars matches ..10 run function snc:shifters/trigger

# Effects on curse
$execute if score curse config matches 0 run function snc:shifters/sick/short {"shifter":"$(shifter)"}
$execute if score curse config matches 1 run function snc:shifters/sick/large {"shifter":"$(shifter)"}
$execute if score curse config matches 2 run function snc:shifters/sick/normal {"shifter":"$(shifter)"}

## UNIQUE: ATTACK
execute if score @s[tag=!transform] attack_vars matches 1.. if predicate snc:is_sneaking if entity @e[type=#snc:eldian,scores={koniglich=1},sort=nearest,limit=1,distance=.5..2] unless score koniglich attack_vars matches 1.. run scoreboard players set koniglich attack_vars 300
execute if score @s attack_vars matches 1.. if score koniglich attack_vars matches 1.. run function snc:shifters/mobs/attack/action/koniglich

## UNIQUE: COLOSSAL
execute if score @s shifter_vars matches 2 as @s[tag=!transform] if score ticks clock matches 1 if predicate snc:has_add if predicate snc:is_sneaking run function snc:shifters/mobs/colossal/display_trigger
execute if score @s shifter_vars matches 2 as @s[tag=!transform] if score ticks clock matches 11 if predicate snc:has_add if predicate snc:is_sneaking run function snc:shifters/mobs/colossal/display_trigger

## UNIQUE: BEAST
execute if entity @s[tag=transform] if predicate snc:beast/has_atk_6 at @e[type=#snc:target] rotated ~ 0 run function snc:shifters/mobs/beast/action/sense/particle