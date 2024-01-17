## JUMP Variables
# state 5 : is jumping
# on_floor : is on floor
# posy0 : the position_y on the last frame
# posy1 : the current position_y

# get the current position to#posy1
execute store result score #posy1 cart_vars run data get entity @s Pos[1] 10000
# Find the mov direction and store in#posy1
scoreboard players operation #posy1 cart_vars -= #posy0 cart_vars
# Save the current position to#posy0
execute store result score #posy0 cart_vars run data get entity @s Pos[1] 10000
# If the direction is up then is jumping
# tellraw @p ["",{"text":"posy1: "},{"score":{"name":"posy1","objective":"cart_vars"}}]
execute unless score state cart_vars matches 6.. if score on_floor cart_vars matches 1 if score #posy1 cart_vars matches 12000.. run function snc:shifters/mobs/cart/action/movement/init