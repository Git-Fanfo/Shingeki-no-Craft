# Spawn
execute unless score state cart_vars matches 1.. run function snc:shifters/mobs/cart/spawn/init
## Health system
# When doesn't have absortion then add tag 'injured'
execute store result score health cart_vars run data get entity @s AbsorptionAmount
execute store result bossbar cart_health value run scoreboard players get health cart_vars
# Kill when life is 0
$execute if score health cart_vars matches ..0 if entity @s[tag=transform] run function snc:shifters/human/timer/cd_hurt {"shifter":$(shifter),"cd_time_hurt":$(cd_time_hurt)}
# Kill when time runs out
$execute if score minutes cart_vars matches ..0 if score seconds cart_vars matches ..0 if entity @s[tag=transform] run function snc:shifters/human/timer/cd {"shifter":$(shifter),"cd_time":$(cd_time)}

execute unless predicate snc:is_riding run ride @s mount @e[type=skeleton_horse,tag=cart,limit=1,sort=nearest]
#execute if predicate snc:is_sneaking run say a

## Enable Walking
# get the current position to #posx1
execute store result score #posx1 cart_vars run data get entity @s Pos[0] 1000
# Find the mov direction and store in #posx1
scoreboard players operation #posx1 cart_vars -= #posx0 cart_vars
execute if score #posx1 cart_vars matches ..-1 run scoreboard players operation #posx1 cart_vars *= #-1 constant
# Save the current position to #posx0
execute store result score #posx0 cart_vars run data get entity @s Pos[0] 1000

# get the current position to #posz1
execute store result score #posz1 cart_vars run data get entity @s Pos[2] 1000
# Find the mov direction and store in #posz1
scoreboard players operation #posz1 cart_vars -= #posz0 cart_vars
execute if score #posz1 cart_vars matches ..-1 run scoreboard players operation #posz1 cart_vars *= #-1 constant
# Save the current position to #posx0
execute store result score #posz0 cart_vars run data get entity @s Pos[2] 1000

scoreboard players operation #posx1 cart_vars += #posz1 cart_vars
#tellraw @p ["",{"text":"mov_x: "},{"score":{"name":"#posx1","objective":"cart_vars"}}]

execute unless score state cart_vars matches 0 unless score state cart_vars matches 5.. if score #posx1 cart_vars matches 1.. run scoreboard players set state cart_vars 4

# Rotation
execute store result score player_rotation cart_vars run data get entity @s Rotation[0]

effect give @s invisibility 2 0 true
effect give @s resistance 3 2 true
effect give @s saturation 1 0 true

# Select Attack If is not attacking
execute unless score state cart_vars matches 10.. if score action cart_vars matches ..0 if score @s using_carrot matches 1.. run function snc:shifters/human/action

## Detect Roar
execute \
    if score consume cart_vars matches ..20 \
    if predicate snc:shifters/has_roar run \
        function snc:shifters/mobs/roar {"shifter":"cart"}
## Bite and Roar
execute \
    if score consume cart_vars matches 0..20 run \
        function snc:shifters/mobs/cart/action/jaw/main
execute \
    if score consume cart_vars matches 61..220 run \
        function snc:shifters/mobs/cart/action/jaw/roar
execute \
    if score consume cart_vars matches 0.. run \
        scoreboard players remove consume cart_vars 1

## Depends on the Shifter
# Set turret_state
function snc:shifters/mobs/cart/action/movement/select_state