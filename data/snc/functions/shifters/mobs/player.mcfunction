# Spawn
$execute unless score state $(shifter)_vars matches 1.. run \
    function snc:shifters/mobs/init {\
        "shifter":"$(shifter)", \
        "bossbar_display":"$(bossbar_display)", \
        "bossbar_color":$(bossbar_color), \
        "hp":$(hp), \
        "walk_speed":$(walk_speed), \
        "type":$(type), \
        "jump":$(jump), \
        "step_height":$(step_height), \
        "scale_vehicle":$(scale_vehicle), \
        "scale_player":$(scale_player), \
        "block_range":$(block_range), \
        "entity_range":$(entity_range) \
        }
## Health system
# When doesn't have absortion then add tag 'injured'
$execute store result score health $(shifter)_vars run data get entity @s AbsorptionAmount
$execute store result bossbar $(shifter)_health value run scoreboard players get health $(shifter)_vars
# Kill when life is 0
$execute if score health $(shifter)_vars matches ..0 if score state $(shifter)_vars matches 2.. run function snc:shifters/human/timer/cd_hurt {"shifter":$(shifter)}
# Kill when time runs out
$execute if score $energy $(shifter)_vars matches ..0 if score state $(shifter)_vars matches 2.. run function snc:shifters/human/timer/cd {"shifter":"$(shifter)"}
# Ride when is not dead
$execute unless score state $(shifter)_vars matches 9 unless predicate snc:shifters/is_riding run function snc:shifters/mobs/$(shifter)/animate/sneak
# Rotation
$execute store result score player_rotation $(shifter)_vars run data get entity @s Rotation[0]

effect give @s invisibility 2 0 true
$effect give @s resistance 3 $(resistance) true
effect give @s saturation 1 0 true

## Detect If is not attacking
$execute \
    unless score state $(shifter)_vars matches 10.. \
    if score @s using_carrot matches 1.. run \
        function snc:shifters/human/check_action
## Detect Roar
$execute \
    if score consume $(shifter)_vars matches ..20 \
    if predicate snc:shifters/has_roar run \
        function snc:shifters/mobs/roar {"shifter":"$(shifter)"}
## Bite and Roar
$execute \
    if score consume $(shifter)_vars matches 0..20 run \
        function snc:shifters/mobs/$(shifter)/animate/bite
$execute \
    if score consume $(shifter)_vars matches 61..220 run \
        function snc:shifters/mobs/$(shifter)/animate/roar
$execute \
    if score consume $(shifter)_vars matches 0.. run \
        scoreboard players remove consume $(shifter)_vars 1

## UNIQUE: ATTACK
# Combo!
# combo_punch: 1 = enabled, 2 = trigger, 3 = enabled, 4 = trigger
$execute \
    if score combo_punch $(shifter)_vars matches 1 \
    if score @s using_carrot matches 1.. if entity @s[predicate=snc:shifters/$(shifter)/atk_2] run \
        scoreboard players set combo_punch $(shifter)_vars 2

$execute \
    if score combo_punch $(shifter)_vars matches 3 \
    if score @s using_carrot matches 1.. if entity @s[predicate=snc:shifters/$(shifter)/atk_2] run \
        scoreboard players set combo_punch $(shifter)_vars 4

# combo_kick: 1 = enabled, 2 = trigger, 3 = enabled, 4 = trigger
execute \
    if score @s shifter_vars matches 3 if score combo_kick attack_vars matches 1 \
    if score @s using_carrot matches 1.. if entity @s[predicate=snc:shifters/attack/atk_3] run \
        scoreboard players set combo_kick attack_vars 2

execute \
    if score @s shifter_vars matches 3 if score combo_kick attack_vars matches 3 \
    if score @s using_carrot matches 1.. if entity @s[predicate=snc:shifters/attack/atk_3] run \
        scoreboard players set combo_kick attack_vars 4

## if shifter_vars[@s] == 3 and attack_vars[combo_kick] == 3 and \
##    using_carrot[@s] >= 1 and has_atk_4?(@s) :
##         attack_vars[combo_kick] = 4

## UNIQUE: BEAST
execute if score @s shifter_vars matches 4 positioned ^ ^ ^13 positioned over world_surface as @e[type=#snc:baseball,tag=!transform] run function snc:shifters/mobs/beast/action/grab/highlight