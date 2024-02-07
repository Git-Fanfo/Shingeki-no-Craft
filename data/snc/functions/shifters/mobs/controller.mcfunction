## Effects
effect give @s invisibility infinite 0 true
effect give @s fire_resistance infinite 0 true
effect give @s resistance infinite 5 true

# Health System
$execute if score $bossbar config matches 1 run bossbar set minecraft:$(shifter)_health players @a[distance=..50]

# Stop when $(shifter)
$execute if score state $(shifter)_vars matches 10.. run effect give @s slowness 1 6 true

## Move!
$execute if score state $(shifter)_vars matches 2..5 run \
    function snc:shifters/mobs/move {\
        "shifter":"$(shifter)", \
        "walk_speed":$(walk_speed), \
        "run_speed":$(run_speed) \
    }

## Height
$execute if score @s colossal_vars matches 1 run function snc:shifters/mobs/$(shifter)/action/movement/height

## If nothing is riding then kill
$execute \
    if score state $(shifter)_vars matches 9 \
    on passengers if entity @s[type=player] run \
        ride @s dismount
        
execute unless data entity @s Passengers run function snc:logic/kill_mob