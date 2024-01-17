# get the current position to #posy1
execute store result score #posy1 cart_vars run data get entity @s Pos[1] 1
# Find the mov direction and store in #posy1
scoreboard players operation #posy1 cart_vars -= #posy0 cart_vars
#execute if score #posy1 cart_vars matches ..-1 run scoreboard players operation #posy1 cart_vars *= #-1 constant

execute if score #posy1 cart_vars matches 5.. run tag @s add height
execute unless score #posy1 cart_vars matches 5.. on passengers if entity @s[type=player] run function snc:shifters/mobs/cart/action/movement/mojang
execute unless score #posy1 cart_vars matches 5.. on passengers if entity @s[type=player] run tp @s ~ ~.4 ~
execute unless score #posy1 cart_vars matches 5.. run tp @s ~ ~.4 ~
#tellraw @a ["",{"text":"pos_y1 "},{"score":{"name":"#posy1","objective":"cart_vars"}}]