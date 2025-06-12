scoreboard players set shift.regen jaw_vars 100000
scoreboard players set state jaw_vars 3
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/jaw/abilities/give