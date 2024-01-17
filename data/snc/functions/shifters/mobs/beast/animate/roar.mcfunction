tag @s remove consume
execute if score consume beast_vars matches 220 at @s run playsound minecraft:aot.beast_roar player @a ~ ~ ~ 5 1
execute if score consume beast_vars matches 217 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:59}
execute if score consume beast_vars matches 215 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:58}
execute if score consume beast_vars matches 105 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:59}
execute if score consume beast_vars matches 102 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:60}
execute if score consume beast_vars matches 102 run scoreboard players set consume beast_vars 0