## Effects
effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true
effect give @s resistance infinite 127 true
execute if block ~ ~ ~ water run attribute @s minecraft:generic.gravity base set -0.1
execute unless block ~ ~ ~ water run attribute @s minecraft:generic.gravity base set 0.08

$execute if score state $(shifter)_vars matches 2 run effect give @s slowness 1 6 true
# Health System
$execute if score $bossbar config matches 1 run bossbar set minecraft:$(shifter)_health players @a[distance=..50]

## Move!
$execute if score state $(shifter)_vars matches 2..5 run \
    function snc:shifters/mobs/move {\
        "shifter":"$(shifter)", "walk_speed":$(walk_speed), "run_speed":$(run_speed) \
    }

## Height
execute on controller if score @s shifter_vars matches 2 on vehicle run function snc:shifters/mobs/colossal/action/movement/height

## Prevent shifter leaved the world
$execute on passengers if entity @s[tag=transform] on vehicle run scoreboard players set @s $(shifter)_vars 20
$scoreboard players remove @s $(shifter)_vars 1
$execute if score @s $(shifter)_vars matches ..0 run scoreboard players set state $(shifter)_vars 9
#$execute if score @s $(shifter)_vars matches ..0 on passengers if entity @s[tag=aj.$(shifter).root] run function snc:shifters/mobs/$(shifter)/animate/death