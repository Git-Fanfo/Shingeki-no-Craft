## States
# 1 : Born : NOW
# 3 : Idle : OW, Always go back to Idle
# 4 : Walk : OW
## OW = Over Writable

## state_sp
# 0 : Normal
# 1 : Ground
# 2 : Explosion

# Spawn
execute unless score state colossal_vars matches 1.. run function snc:shifters/mobs/colossal/spawn/init 

## Health system
# When doesn't have absortion then add tag 'injured'
execute store result score health colossal_vars run data get entity @s AbsorptionAmount
execute store result bossbar colossal_health value run scoreboard players get health colossal_vars
execute if score terrain colossal_vars matches 9.. run damage @s 20 minecraft:outside_border
execute if score terrain colossal_vars matches 9.. if score ticks clock matches 19 run tellraw @s [{"translate":"aot.warning","color":"yellow"},{"translate":"aot.warning.narrow","color":"white"}]
# Kill when life goes to 0
$execute if score health colossal_vars matches ..0 if entity @s[tag=transform] run function snc:shifters/human/timer/cd_hurt {"shifter":$(shifter),"cd_time_hurt":$(cd_time_hurt)}
# Kill when time runs out
$execute if score minutes colossal_vars matches ..0 if score seconds colossal_vars matches ..0 if entity @s[tag=transform] run function snc:shifters/human/timer/cd {"shifter":$(shifter),"cd_time":$(cd_time)}
execute unless predicate snc:is_riding run ride @s mount @e[type=skeleton_horse,tag=colossal,limit=1,sort=nearest]
#execute if predicate snc:is_sneaking run say a

## Enable Walking
# get the current position to #posx1
execute store result score #posx1 colossal_vars run data get entity @s Pos[0] 1000
# Find the mov direction and store in #posy1
scoreboard players operation #posx1 colossal_vars -= #posx0 colossal_vars
execute if score #posx1 colossal_vars matches ..-1 run scoreboard players operation #posx1 colossal_vars *= #-1 constant
# Save the current position to #posx0
execute store result score #posx0 colossal_vars run data get entity @s Pos[0] 1000

# get the current position to #posz1
execute store result score #posz1 colossal_vars run data get entity @s Pos[2] 1000
# Find the mov direction and store in #posz1
scoreboard players operation #posz1 colossal_vars -= #posz0 colossal_vars
execute if score #posz1 colossal_vars matches ..-1 run scoreboard players operation #posz1 colossal_vars *= #-1 constant
# Save the current position to #posx0
execute store result score #posz0 colossal_vars run data get entity @s Pos[2] 1000

scoreboard players operation #posx1 colossal_vars += #posz1 colossal_vars
#tellraw @p ["",{"text":"mov_x: "},{"score":{"name":"#posx1","objective":"colossal_vars"}}]

execute unless score state colossal_vars matches 0 unless score state colossal_vars matches 5.. if score #posx1 colossal_vars matches 1.. run scoreboard players set state colossal_vars 4

# Rotation
execute store result score player_rotation colossal_vars run data get entity @s Rotation[0]

effect give @s invisibility 2 0 true
effect give @s resistance 3 2 true
effect give @s saturation 1 0 true
tag @s add near

# Select Attack If is not attacking
execute unless score state colossal_vars matches 10.. if score action colossal_vars matches ..0 if score @s using_carrot matches 1.. run function snc:shifters/human/action

## Depends on the Shifter
execute if score ticks clock matches 19 rotated ~ 0 run particle campfire_signal_smoke ^1.5 ^1 ^1.1 ^ ^1000000 ^ 0.00000002 0 force
execute if score ticks clock matches 19 rotated ~ 0 run particle campfire_signal_smoke ^-1.5 ^1 ^1.1 ^ ^1000000 ^ 0.00000002 0 force