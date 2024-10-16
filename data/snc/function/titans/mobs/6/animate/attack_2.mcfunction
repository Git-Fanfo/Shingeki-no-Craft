execute if score @s atk matches 140 run data modify entity @s item.components.minecraft:custom_model_data set value 179
execute if score @s atk matches 138 run data modify entity @s item.components.minecraft:custom_model_data set value 180

execute if score @s atk matches 138 as @a[distance=..7] run scoreboard players add @s earthquake 4
execute if score @s atk matches 138 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s atk matches 138 on vehicle at @s run particle block{block_state:"dirt"} ~ ~.1 ~ 1 0 1 0 30 force

execute if score @s atk matches 136 run data modify entity @s item.components.minecraft:custom_model_data set value 181
execute if score @s atk matches 134 run data modify entity @s item.components.minecraft:custom_model_data set value 182
execute if score @s atk matches 132 run data modify entity @s item.components.minecraft:custom_model_data set value 183

execute if score @s atk matches 130 run data modify entity @s item.components.minecraft:custom_model_data set value 184
execute if score @s atk matches 128 run data modify entity @s item.components.minecraft:custom_model_data set value 185

execute if score @s atk matches 128 as @a[distance=..7] run scoreboard players add @s earthquake 4
execute if score @s atk matches 128 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s atk matches 128 on vehicle at @s run particle block{block_state:"dirt"} ~ ~.1 ~ 1 0 1 0 30 force

execute if score @s atk matches 126 run data modify entity @s item.components.minecraft:custom_model_data set value 186
execute if score @s atk matches 124 run data modify entity @s item.components.minecraft:custom_model_data set value 187
execute if score @s atk matches 122 run data modify entity @s item.components.minecraft:custom_model_data set value 188
execute if score @s atk matches 120 run data modify entity @s item.components.minecraft:custom_model_data set value 179
execute if score @s atk matches 118 run data modify entity @s item.components.minecraft:custom_model_data set value 180

execute if score @s atk matches 118 as @a[distance=..7] run scoreboard players add @s earthquake 4
execute if score @s atk matches 118 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s atk matches 118 on vehicle at @s run particle block{block_state:"dirt"} ~ ~.1 ~ 1 0 1 0 30 force

execute if score @s atk matches 116 run data modify entity @s item.components.minecraft:custom_model_data set value 181
execute if score @s atk matches 114 run data modify entity @s item.components.minecraft:custom_model_data set value 182
execute if score @s atk matches 112 run data modify entity @s item.components.minecraft:custom_model_data set value 183

execute if score @s atk matches 110 run data modify entity @s item.components.minecraft:custom_model_data set value 184
execute if score @s atk matches 108 run data modify entity @s item.components.minecraft:custom_model_data set value 185

execute if score @s atk matches 108 as @a[distance=..7] run scoreboard players add @s earthquake 4
execute if score @s atk matches 108 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s atk matches 108 on vehicle at @s run particle block{block_state:"dirt"} ~ ~.1 ~ 1 0 1 0 30 force

execute if score @s atk matches 106 run data modify entity @s item.components.minecraft:custom_model_data set value 186
execute if score @s atk matches 104 run data modify entity @s item.components.minecraft:custom_model_data set value 187
execute if score @s atk matches 102 run data modify entity @s item.components.minecraft:custom_model_data set value 188

execute if score @s atk matches 100 run data modify entity @s item.components.minecraft:custom_model_data set value 179
execute if score @s atk matches 98 run data modify entity @s item.components.minecraft:custom_model_data set value 180

execute if score @s atk matches 98 as @a[distance=..7] run scoreboard players add @s earthquake 4
execute if score @s atk matches 98 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s atk matches 98 on vehicle at @s run particle block{block_state:"dirt"} ~ ~.1 ~ 1 0 1 0 30 force

execute if score @s atk matches 96 run data modify entity @s item.components.minecraft:custom_model_data set value 181
execute if score @s atk matches 94 run data modify entity @s item.components.minecraft:custom_model_data set value 182
execute if score @s atk matches 92 run data modify entity @s item.components.minecraft:custom_model_data set value 183

execute if score @s atk matches 90 run data modify entity @s item.components.minecraft:custom_model_data set value 184
execute if score @s atk matches 88 run data modify entity @s item.components.minecraft:custom_model_data set value 185

execute if score @s atk matches 88 as @a[distance=..7] run scoreboard players add @s earthquake 4
execute if score @s atk matches 88 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s atk matches 88 on vehicle at @s run particle block{block_state:"dirt"} ~ ~.1 ~ 1 0 1 0 30 force

execute if score @s atk matches 86 run data modify entity @s item.components.minecraft:custom_model_data set value 186
execute if score @s atk matches 84 run data modify entity @s item.components.minecraft:custom_model_data set value 187
execute if score @s atk matches 82 run data modify entity @s item.components.minecraft:custom_model_data set value 188

execute if score @s atk matches 80 run data modify entity @s item.components.minecraft:custom_model_data set value 179
execute if score @s atk matches 78 run data modify entity @s item.components.minecraft:custom_model_data set value 180

execute if score @s atk matches 78 as @a[distance=..7] run scoreboard players add @s earthquake 4
execute if score @s atk matches 78 run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if score @s atk matches 78 on vehicle at @s run particle block{block_state:"dirt"} ~ ~.1 ~ 1 0 1 0 30 force

execute if score @s atk matches 76 run data modify entity @s item.components.minecraft:custom_model_data set value 181
execute if score @s atk matches 74 run data modify entity @s item.components.minecraft:custom_model_data set value 182
execute if score @s atk matches 72 run data modify entity @s item.components.minecraft:custom_model_data set value 183

execute if score @s atk matches ..72 run tag @s remove attack
## PURE_DESTROY
execute if score $pure_destroy config matches 1 on vehicle at @s rotated ~ 0 positioned ^ ^.5 ^2 run function snc:titans/ai/destroy/check
execute if score $pure_destroy config matches 1 rotated ~ 0 positioned ^ ^-3.5 ^2 run function snc:titans/ai/destroy/check