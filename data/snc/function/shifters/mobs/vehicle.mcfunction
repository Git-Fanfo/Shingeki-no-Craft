## Effects
execute if block ~ ~ ~ water run attribute @s minecraft:gravity base set -0.1
execute unless block ~ ~ ~ water run attribute @s minecraft:gravity base set 0.08

$execute if score state $(shifter)_vars matches 2 run effect give @s slowness 1 6 true
# Health System
$execute if score $bossbar config matches 1 if score ticks clock matches 6 run bossbar set minecraft:$(shifter)_health players @a[distance=..128]

## Move!
$execute if score state $(shifter)_vars matches 2..5 run \
    function snc:shifters/mobs/move {\
        "shifter":"$(shifter)", "walk_speed":$(walk_speed), "run_speed":$(run_speed) \
    }

## Stepping on
$scoreboard players set $air $(shifter)_vars 0
$execute if predicate snc:on_air run scoreboard players set $air $(shifter)_vars 1


## Prevent shifter leaved the world
$execute on passengers if entity @s[tag=transform] on vehicle run scoreboard players set @s $(shifter)_vars 20
$scoreboard players remove @s $(shifter)_vars 1

$execute if score @s $(shifter)_vars matches ..0 on passengers if entity @s[tag=aj.$(shifter).root] run function snc:shifters/mobs/$(shifter)/animate/death