# Range
execute if score @s atk matches 70 on vehicle unless function snc:titans/mobs/4/attack/1_trigger run return -1
execute if score @s atk matches 70 run tag @s add attack

execute if score @s atk matches 70 on vehicle run effect give @s slowness 2 6 true

# Apply dmg
execute if score @s atk matches 64 as @e[type=!item,tag=!titan,distance=..4] at @s run function snc:titans/ai/damage_2 with storage minecraft:titan_4
execute if score @s atk matches 64 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 .7
execute if score @s atk matches 64 run particle block{block_state:"dirt"} ~ ~.5 ~ 1 0 1 0 30 force