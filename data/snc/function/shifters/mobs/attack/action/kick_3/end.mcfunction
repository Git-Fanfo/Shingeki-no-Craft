scoreboard players set state attack_vars 5
execute on vehicle run effect clear @s slowness
scoreboard players set combo_kick attack_vars 0

execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/attack/abilities/atk_3 with storage minecraft:attack