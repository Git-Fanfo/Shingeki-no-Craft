# get the current position to #posy1
execute store result score #posy1 colossal_vars run data get entity @s Pos[1] 1
# Find the mov direction and store in #posy1
scoreboard players operation #posy1 colossal_vars -= #posy0 colossal_vars
#execute if score #posy1 colossal_vars matches ..-1 run scoreboard players operation #posy1 colossal_vars *= #-1 constant

execute unless score state_sp colossal_vars matches 1 if score #posy1 colossal_vars matches 61.. run tag @s add height
execute unless score state_sp colossal_vars matches 1 unless score #posy1 colossal_vars matches 61.. on passengers if entity @s[type=player] run function snc:shifters/mobs/colossal/action/movement/mojang
execute unless score state_sp colossal_vars matches 1 unless score #posy1 colossal_vars matches 61.. on passengers if entity @s[type=player] run tp @s ~ ~1.1 ~
execute unless score state_sp colossal_vars matches 1 unless score #posy1 colossal_vars matches 61.. run tp @s ~ ~1.1 ~

execute if score state_sp colossal_vars matches 1 if score #posy1 colossal_vars matches 19.. run tag @s add height
execute if score state_sp colossal_vars matches 1 unless score #posy1 colossal_vars matches 19.. on passengers if entity @s[type=player] run function snc:shifters/mobs/colossal/action/movement/mojang
execute if score state_sp colossal_vars matches 1 unless score #posy1 colossal_vars matches 19.. on passengers if entity @s[type=player] run tp @s ~ ~1.1 ~
execute if score state_sp colossal_vars matches 1 unless score #posy1 colossal_vars matches 19.. run tp @s ~ ~1.1 ~

#tellraw @a ["",{"text":"pos_y1 "},{"score":{"name":"#posy1","objective":"colossal_vars"}}]