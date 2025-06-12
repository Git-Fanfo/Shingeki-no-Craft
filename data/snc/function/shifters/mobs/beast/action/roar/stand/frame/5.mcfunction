# Each function represents aprox 0.25 seg
execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/beast/head {"frame":1}
scoreboard players set state beast_vars 3