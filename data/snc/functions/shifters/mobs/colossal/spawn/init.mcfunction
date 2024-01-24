# Save the current position to #posy0
execute store result score #posy0 colossal_vars run data get entity @s Pos[1] 1

execute summon skeleton_horse run function snc:shifters/mobs/colossal/spawn/add_scores

#bossbar add colossal_health {"translate":"aot.titan.colossal","color": "aqua"}
bossbar add colossal_health {"text":"\uFFF0"}
bossbar set colossal_health color blue
bossbar set colossal_health max 72
bossbar set minecraft:colossal_health style notched_12

scoreboard players set state colossal_vars 100
effect give @s resistance 5 4 true

execute store result score @s gamemode run data get entity @s playerGameType
gamemode survival