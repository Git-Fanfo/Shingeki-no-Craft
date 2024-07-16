## Start running after some time
$execute \
    if score $gamemode $(shifter)_vars matches 1 \
    if score $moving $(shifter)_vars matches 1 \
    unless score $mov $(shifter)_vars matches 80.. run \
        scoreboard players add $mov $(shifter)_vars 2

# $tellraw @p ["",{"text":"$mov: "},{"score":{"name":"$mov","objective":"$(shifter)_vars"}}]
$execute if score $mov $(shifter)_vars matches 1.. run \
    scoreboard players remove $mov $(shifter)_vars 1

# Set state to idle unless is sneaking
$execute \
    unless score state $(shifter)_vars matches 2 \
    if score $moving $(shifter)_vars matches 0 \
    if score $mov $(shifter)_vars matches 0..73 run \
        scoreboard players set state $(shifter)_vars 3

# Set state to walk
$execute \
    if score $moving $(shifter)_vars matches 1 \
    if score $mov $(shifter)_vars matches 0..70 run \
        scoreboard players set state $(shifter)_vars 4

# Set state to walk
$execute if score $mov $(shifter)_vars matches 77.. run \
    scoreboard players set state $(shifter)_vars 5

## Change speed
$execute if score state $(shifter)_vars matches 4 run \
    data merge entity @s {Fire:0,Attributes:[{Name:generic.movement_speed,Base:$(walk_speed)}]}
$execute if score state $(shifter)_vars matches 5 run \
    data merge entity @s {Fire:0,Attributes:[{Name:generic.movement_speed,Base:$(run_speed)}]}