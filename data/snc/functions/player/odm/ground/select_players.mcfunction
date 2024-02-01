execute if score @s id_detect_R matches 0 at @s run function snc:player/odm/ground/player_landed
execute if score @s id_detect_L matches 0 at @s run function snc:player/odm/ground/player_landed

playsound minecraft:block.iron_door.close player @a ~ ~ ~ 2 1.45

# Reset id
execute store result score @s id_detect_R run data get entity @s UUID[0]
execute store result score @s id_detect_L run data get entity @s UUID[0]