execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/beast/head {"frame":1}
execute on vehicle on passengers if entity @s[tag=transform] run effect give @s absorption 20 12
scoreboard players set state beast_vars 3

execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/beast/abilities/give