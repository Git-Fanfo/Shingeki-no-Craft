execute if entity @s[scores={walk=58}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":119}}}
execute if entity @s[scores={walk=53}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":120}}}
execute if entity @s[scores={walk=47}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":121}}}
execute if entity @s[scores={walk=41}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":122}}}

execute if entity @s[scores={walk=49}] run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if entity @s[scores={walk=42}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if entity @s[scores={walk=35}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":123}}}

execute if entity @s[scores={walk=29}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":124}}}
execute if entity @s[scores={walk=24}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":125}}}
execute if entity @s[scores={walk=18}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":126}}}
execute if entity @s[scores={walk=12}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":127}}}

execute if entity @s[scores={walk=18}] run execute as @a[distance=..12] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if entity @s[scores={walk=11}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 2 .7
execute if entity @s[scores={walk=6}] run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f]},item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":128}}}

execute if entity @s[scores={walk=1}] run tag @s remove walk
