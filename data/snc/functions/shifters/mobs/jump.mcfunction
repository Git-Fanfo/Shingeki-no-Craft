## JUMP Variables
# state 5 : is jumping
# on_floor : is on floor
# posy0 : the position_y on the last frame
# posy1 : the current position_y

# get the current position to #posy1
$execute store result score #posy1 $(shifter)_vars run data get entity @s Pos[1] 10000
# Find the mov direction and store in #posy1
$scoreboard players operation #posy1 $(shifter)_vars -= #posy0 $(shifter)_vars
# Save the current position to #posy0
$execute store result score #posy0 $(shifter)_vars run data get entity @s Pos[1] 10000
# If the direction is up then is jumping
##$execute if score #posy1 $(shifter)_vars matches 1..9999 run function snc:shifters/mobs/$(shifter)/action/movement/init

#$execute if score #posy1 $(shifter)_vars matches 1..9999 run tellraw @p ["",{"text":"jump: ","color":"yellow"},{"score":{"name":"#posy1","objective":"$(shifter)_vars"}}]
#$execute if score #posy1 $(shifter)_vars matches 10000.. run tellraw @p ["",{"text":"jump: ","color":"green"},{"score":{"name":"#posy1","objective":"$(shifter)_vars"}}]

##$execute if score #posy1 $(shifter)_vars matches 8000..9999 run tellraw @p ["",{"text":"jump: ","color":"yellow"},{"score":{"name":"#posy1","objective":"$(shifter)_vars"}}]