## Walking
# get the current position to #posx1
$execute store result score #posx1 $(shifter)_vars run data get entity @s Pos[0] 1000
# Find the mov direction and store in #posx1
$scoreboard players operation #posx1 $(shifter)_vars -= #posx0 $(shifter)_vars
$execute if score #posx1 $(shifter)_vars matches ..-1 run scoreboard players operation #posx1 $(shifter)_vars *= #-1 constant
# Save the current position to #posx0
$execute store result score #posx0 $(shifter)_vars run data get entity @s Pos[0] 1000

# get the current position to #posz1
$execute store result score #posz1 $(shifter)_vars run data get entity @s Pos[2] 1000
# Find the mov direction and store in #posz1
$scoreboard players operation #posz1 $(shifter)_vars -= #posz0 $(shifter)_vars
$execute if score #posz1 $(shifter)_vars matches ..-1 run scoreboard players operation #posz1 $(shifter)_vars *= #-1 constant
# Save the current position to #posx0
$execute store result score #posz0 $(shifter)_vars run data get entity @s Pos[2] 1000

## Add movement from both axis
$scoreboard players operation #posx1 $(shifter)_vars += #posz1 $(shifter)_vars

## Running
$execute \
    if score $gamemode $(shifter)_vars matches 1 \
    if score #posx1 $(shifter)_vars matches 1.. \
    unless score mov $(shifter)_vars matches 80.. run \
        scoreboard players add mov $(shifter)_vars 2

#$tellraw @p ["",{"text":"mov: "},{"score":{"name":"mov","objective":"$(shifter)_vars"}}]
$execute if score mov $(shifter)_vars matches 1.. run \
    scoreboard players remove mov $(shifter)_vars 1

# Set state to idle unless is sneaking
$execute \
    unless score state $(shifter)_vars matches 2 \
    if score #posx1 $(shifter)_vars matches 0 \
    if score mov $(shifter)_vars matches 0..73 run \
        scoreboard players set state $(shifter)_vars 3

# Set state to walk
$execute \
    if score #posx1 $(shifter)_vars matches 1.. \
    if score mov $(shifter)_vars matches 0..70 run \
        scoreboard players set state $(shifter)_vars 4

# Set state to walk
$execute if score mov $(shifter)_vars matches 77.. run \
    scoreboard players set state $(shifter)_vars 5

## Change speed
$execute if score state $(shifter)_vars matches 4 run \
    data merge entity @s {Fire:0,Attributes:[{Name:generic.movement_speed,Base:$(walk_speed)}]}
$execute if score state $(shifter)_vars matches 5 run \
    data merge entity @s {Fire:0,Attributes:[{Name:generic.movement_speed,Base:$(run_speed)}]}