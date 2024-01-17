scoreboard players set $hold beast_vars 0
scoreboard players set $area beast_vars 0
execute as @e[tag=big_rock] run function snc:shifters/mobs/beast/action/grab/dismount
execute on vehicle on passengers if entity @s[type=player] run function snc:give/item/beast/primary