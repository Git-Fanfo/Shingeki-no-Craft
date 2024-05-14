# Deals with the physics mechanics
$execute as @s[tag=body] run \
    function snc:shifters/mobs/controller with storage minecraft:$(shifter)
$execute as @s[tag=collision] run \
    function snc:shifters/mobs/collision {"shifter":"$(shifter)"}

$execute if entity @s[tag=aj.$(shifter).locator.right_hand] if score consume $(shifter)_vars matches 20..60 run \
    ride @e[type=#snc:eldian,tag=!transform,distance=..5,sort=nearest,limit=1] mount @s
$execute if entity @s[tag=aj.$(shifter).locator.right_hand] if score consume $(shifter)_vars matches 19 run \
    ride @e[type=#snc:eldian,tag=!transform,sort=nearest,limit=1] dismount
$execute if entity @s[tag=aj.$(shifter).locator.right_hand] if score state $(shifter)_vars matches 2 run \
    function snc:shifters/mobs/highlight

## Model
$execute on passengers if entity @s[tag=aj.$(shifter).root] run function snc:shifters/mobs/$(shifter)/model

## UNIQUE: BEAST
execute if entity @s[tag=aj.beast.locator.right_hand] unless score state beast_vars matches 2 run function snc:shifters/mobs/beast/action/grab/pivot

return 0