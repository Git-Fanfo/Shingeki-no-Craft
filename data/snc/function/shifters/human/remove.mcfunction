## Removes shifter and kills the user, generally used when the player was offline during the Curse of Ymir
execute if entity @s[tag=transform] run clear @s
execute if entity @s[tag=transform] run gamemode survival
tag @s remove shifter
tag @s remove transform
tag @s remove snc.injured
#attribute @s max_health base set 20

scoreboard players reset @s shifter_vars

# tellraw @a ["Warning: ",{"text":"Server found shifter but not type!","color":"yellow"}]
execute unless score @s death matches 1.. run kill