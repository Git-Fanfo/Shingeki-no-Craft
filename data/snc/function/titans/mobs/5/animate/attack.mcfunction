# ATTACK
execute if score @s atk matches 140 run data modify entity @s item.components.minecraft:custom_model_data set value 129
execute if score @s atk matches 138 run data modify entity @s item.components.minecraft:custom_model_data set value 130
execute if score @s atk matches 136 run data modify entity @s item.components.minecraft:custom_model_data set value 131
execute if score @s atk matches 134 run data modify entity @s item.components.minecraft:custom_model_data set value 132
execute if score @s atk matches 132 run data modify entity @s item.components.minecraft:custom_model_data set value 133
execute if score @s atk matches 130 run data modify entity @s item.components.minecraft:custom_model_data set value 134
execute if score @s atk matches 128 run data modify entity @s item.components.minecraft:custom_model_data set value 135
execute if score @s atk matches 126 run data modify entity @s item.components.minecraft:custom_model_data set value 136
execute if score @s atk matches 124 run data modify entity @s item.components.minecraft:custom_model_data set value 137
execute if score @s atk matches 122 run data modify entity @s item.components.minecraft:custom_model_data set value 138
execute if score @s atk matches 120 run data modify entity @s item.components.minecraft:custom_model_data set value 139
execute if score @s atk matches 118 run data modify entity @s item.components.minecraft:custom_model_data set value 140

execute if score @s atk matches 118 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 2 .75
execute if score @s atk matches 118 on vehicle at @s run particle minecraft:cloud ~ ~.5 ~ 2 0 2 .05 20

execute if score @s atk matches 116 run data modify entity @s item.components.minecraft:custom_model_data set value 141
execute if score @s atk matches 113 run data modify entity @s item.components.minecraft:custom_model_data set value 142
execute if score @s atk matches 109 run data modify entity @s item.components.minecraft:custom_model_data set value 143
execute if score @s atk matches 105 run data modify entity @s item.components.minecraft:custom_model_data set value 144
execute if score @s atk matches 108 run data modify entity @s item.components.minecraft:custom_model_data set value 145
execute if score @s atk matches 104 run data modify entity @s item.components.minecraft:custom_model_data set value 146
execute if score @s atk matches 99 run data modify entity @s item.components.minecraft:custom_model_data set value 147
execute if score @s atk matches 95 run data modify entity @s item.components.minecraft:custom_model_data set value 148

execute if score @s atk matches 92 run data modify entity @s item.components.minecraft:custom_model_data set value 149

# I made a system to generalize it
execute if score @s atk matches 99 run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 8

execute if score @s atk matches 90 run data modify entity @s item.components.minecraft:custom_model_data set value 150
execute if score @s atk matches 88 run data modify entity @s item.components.minecraft:custom_model_data set value 151
execute if score @s atk matches 86 run data modify entity @s item.components.minecraft:custom_model_data set value 152
execute if score @s atk matches 84 run data modify entity @s item.components.minecraft:custom_model_data set value 153

execute if score @s atk matches ..80 run tag @s remove attack