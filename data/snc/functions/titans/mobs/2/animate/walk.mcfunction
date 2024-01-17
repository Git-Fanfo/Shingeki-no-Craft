execute if entity @s[scores={walk=58}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:31}}}
execute if entity @s[scores={walk=53}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:32}}}
execute if entity @s[scores={walk=47}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:33}}}
execute if entity @s[scores={walk=41}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:34}}}

execute if entity @s[scores={walk=49}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 39, Ex 1 - 0.7 means 0.3 * 10 + 39 = 42
execute if entity @s[scores={walk=36}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.2 1.3
execute if entity @s[scores={walk=35}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:35}}}

execute if entity @s[scores={walk=29}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:36}}}
execute if entity @s[scores={walk=24}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:37}}}
execute if entity @s[scores={walk=18}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:38}}}
execute if entity @s[scores={walk=12}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:39}}}

execute if entity @s[scores={walk=18}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
# 1 -> 8, Ex 1 - 0.7 means 0.3 * 10 + 8 = 11
execute if entity @s[scores={walk=5}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.2 1.3
execute if entity @s[scores={walk=6}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,tag:{CustomModelData:40}}}

execute if entity @s[scores={walk=1}] run tag @s remove walk
