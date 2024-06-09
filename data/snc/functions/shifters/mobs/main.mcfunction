$execute if entity @s[tag=aj.$(shifter).locator.consume] if score state $(shifter)_vars matches 9 run function snc:shifters/mobs/drop
$execute if entity @s[tag=aj.$(shifter).locator.consume] if score state $(shifter)_vars matches 9 run kill
$execute if entity @s[tag=aj.$(shifter).locator.consume] if score $hold $(shifter)_vars matches 1 unless data entity @s Passengers run ride @e[type=#snc:eldian,tag=!transform,distance=..5,sort=nearest,limit=1] mount @s
$execute if entity @s[tag=aj.$(shifter).locator.consume] unless score $hold $(shifter)_vars matches 1 on passengers run ride @s dismount

# Deals with the physics mechanics
$execute as @s[tag=body] run \
    function snc:shifters/mobs/vehicle with storage minecraft:$(shifter)
$execute as @s[tag=collision] run \
    function snc:shifters/mobs/collision {"shifter":"$(shifter)"}

# If it transforms
$execute if entity @s[tag=aj.$(shifter).locator.consume] on passengers run ride @s[tag=transform] dismount

## Model
$execute on passengers if entity @s[tag=aj.$(shifter).root] run function snc:shifters/mobs/$(shifter)/model

return 0