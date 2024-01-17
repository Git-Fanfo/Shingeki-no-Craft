execute if entity @s[scores={walk=58}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:86}}}
execute if entity @s[scores={walk=53}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:87}}}
execute if entity @s[scores={walk=47}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:88}}}
execute if entity @s[scores={walk=41}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:89}}}

execute if entity @s[scores={walk=49}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if entity @s[scores={walk=39}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if entity @s[scores={walk=35}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:90}}}

execute if entity @s[scores={walk=29}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:91}}}
execute if entity @s[scores={walk=24}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:92}}}
execute if entity @s[scores={walk=18}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:93}}}
execute if entity @s[scores={walk=12}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:94}}}

execute if entity @s[scores={walk=18}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if entity @s[scores={walk=8}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1
execute if entity @s[scores={walk=6}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:95}}}

execute if entity @s[scores={walk=1}] run tag @s remove walk