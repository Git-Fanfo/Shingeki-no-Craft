scoreboard players set state armor_vars 5
execute on vehicle run effect clear @s slowness
execute on vehicle run attribute @s minecraft:scale base set 6.6

execute on vehicle on controller run function snc:shifters/mobs/armor/abilities/atk_2 with storage minecraft:armor