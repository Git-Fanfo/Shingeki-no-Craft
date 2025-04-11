# Controller
execute if score @s idle matches ..0 run scoreboard players set @s idle 41
execute if score @s atk matches ..0 run scoreboard players set @s atk 141
execute if score @s walk matches ..0 run scoreboard players set @s walk 59

# Idle: 0..40
scoreboard players remove @s idle 1
# Attacks: 0..70 - 71..140
scoreboard players remove @s atk 1
# Walk: 0..58
scoreboard players remove @s walk 1
# Sounds
execute if score ticks clock matches 19 store result score @s random run random value 1..8
execute if score ticks clock matches 19 if score @s random matches 1 run playsound minecraft:entity.zombie_villager.ambient master @a ~ ~ ~ 2 .2

#execute store result entity @s item.components."minecraft:custom_data".model int 1 run scoreboard players get @s idle
#function snc:titans/mobs/guido/animate/model with entity @s item.components."minecraft:custom_data"

$execute if entity @s[tag=attack] if score @s atk matches 0..70 run function snc:titans/mobs/$(id)/animate/attack
$execute if entity @s[tag=attack] if score @s atk matches 71..140 run function snc:titans/mobs/$(id)/animate/attack_2
$execute if entity @s[tag=!attack,tag=walk] run function snc:titans/mobs/$(id)/animate/walk
#$say function snc:titans/mobs/$(id)/animate/walk

$execute if entity @s[tag=!attack,tag=!walk] run function snc:titans/mobs/$(id)/animate/idle
#$execute if entity @s run function snc:titans/mobs/$(id)/animate/idle

data modify entity @s item.components.minecraft:custom_model_data set value 100
execute on vehicle unless function snc:titans/ai/attack run return -1
$execute on vehicle at @s on passengers rotated ~ 0 positioned ^ ^ ^2 run function snc:titans/mobs/$(id)/attack/main