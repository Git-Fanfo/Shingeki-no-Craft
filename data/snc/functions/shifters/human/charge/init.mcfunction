scoreboard players set state armor_vars 5
execute on vehicle run effect clear @s slowness
scoreboard players set mov armor_vars 80

scoreboard players set $charge.time armor_vars 100
execute on vehicle on passengers if entity @s[type=player] run effect give @s speed 5 5 true