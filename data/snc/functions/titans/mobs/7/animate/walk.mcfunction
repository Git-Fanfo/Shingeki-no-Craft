#say walk
execute if entity @s[scores={walk=58}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":202}}}
execute if entity @s[scores={walk=55}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":203}}}
execute if entity @s[scores={walk=53}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":204}}}
execute if entity @s[scores={walk=51}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":205}}}
execute if entity @s[scores={walk=49}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":206}}}
execute if entity @s[scores={walk=47}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":207}}}
execute if entity @s[scores={walk=44}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":208}}}


execute if entity @s[scores={walk=51}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
execute if entity @s[scores={walk=41}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if entity @s[scores={walk=41}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":209}}}
execute if entity @s[scores={walk=39}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":210}}}
execute if entity @s[scores={walk=37}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":211}}}
execute if entity @s[scores={walk=35}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":212}}}
execute if entity @s[scores={walk=33}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":213}}}
execute if entity @s[scores={walk=31}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":214}}}
execute if entity @s[scores={walk=29}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":215}}}

execute if entity @s[scores={walk=35}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
execute if entity @s[scores={walk=25}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1


execute if entity @s[scores={walk=27}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":202}}}
execute if entity @s[scores={walk=25}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":203}}}
execute if entity @s[scores={walk=23}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":204}}}
execute if entity @s[scores={walk=21}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":205}}}
execute if entity @s[scores={walk=19}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":206}}}
execute if entity @s[scores={walk=17}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":207}}}
execute if entity @s[scores={walk=15}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":208}}}

execute if entity @s[scores={walk=21}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
execute if entity @s[scores={walk=11}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if entity @s[scores={walk=13}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":209}}}
execute if entity @s[scores={walk=11}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":210}}}
execute if entity @s[scores={walk=9}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":211}}}
execute if entity @s[scores={walk=7}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":212}}}
execute if entity @s[scores={walk=5}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":213}}}
execute if entity @s[scores={walk=3}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":214}}}
execute if entity @s[scores={walk=1}] run data merge entity @s {item:{id:'minecraft:flint',Count:1b,components:{"custom_model_data":215}}}

execute if entity @s[scores={walk=7}] run execute as @a[distance=..8] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 4
execute if entity @s[scores={walk=56}] run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1.6 1

execute if entity @s[scores={walk=1}] run tag @s remove walk
