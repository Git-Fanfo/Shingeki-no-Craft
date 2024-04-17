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
        "entity_range":$(entity_range) \
        }

effect give @s invisibility 2 0 true
$effect give @s resistance 3 $(resistance) true
effect give @s saturation 1 0 true
effect clear @s darkness

## Detect If is not attacking
$execute \
    unless score state $(shifter)_vars matches 10.. \
    if score @s using_carrot matches 1.. run \
        function snc:shifters/human/check_action

$execute if score $gamemode $(shifter)_vars matches 1 run function snc:shifters/mobs/combat {"shifter":$(shifter)}
$execute if score $gamemode $(shifter)_vars matches -1 run function snc:shifters/utility/main {"shifter":$(shifter), "block_range":$(block_range)}

## Check health
# Apply damage then carrier is hurt
$execute if predicate snc:is_hurt unless score state $(shifter)_vars matches 9 run function snc:shifters/mobs/parry {"shifter":$(shifter)}

## Health system
# When doesn't have absortion then add tag 'injured'
$execute store result score health $(shifter)_vars run data get entity @s AbsorptionAmount
$execute store result bossbar $(shifter)_health value run scoreboard players get health $(shifter)_vars
# Kill when energy runs out
$execute if score $energy $(shifter)_vars matches ..0 if score state $(shifter)_vars matches 2.. run function snc:shifters/human/timer/cd {"shifter":"$(shifter)"}
# Kill when life is 0
$execute if score health $(shifter)_vars matches ..0 if score state $(shifter)_vars matches 2.. run function snc:shifters/human/timer/cd_hurt {"shifter":$(shifter)}
# Ride when is not dead
$execute unless score state $(shifter)_vars matches 9 unless predicate snc:shifters/is_riding run function snc:shifters/mobs/$(shifter)/animate/sneak
# Rotation
$execute store result score player_rotation $(shifter)_vars run data get entity @s Rotation[0]

## Prevent Moving Inventory (Almost)
$execute if items entity @s player.cursor *[minecraft:custom_data~{atk_shifter:1b}] run function snc:shifters/mobs/$(shifter)/abilities/give
# Prevent using armor
$execute unless score state $(shifter)_vars matches 1 unless items entity @s armor.head minecraft:carved_pumpkin run function snc:shifters/human/restart_abilities
execute if items entity @s armor.chest #minecraft:chest_armor run function snc:shifters/human/restart_abilities
execute if items entity @s armor.legs #minecraft:leg_armor run function snc:shifters/human/restart_abilities
execute if items entity @s armor.feet #minecraft:foot_armor run function snc:shifters/human/restart_abilities