playsound minecraft:aot.beast_throw_big player @a ~ ~ ~ 3
scoreboard players set $area beast_vars 1
execute if score $rock beast_vars matches 1 as @e[tag=big_rock] run function snc:shifters/mobs/beast/action/grab/dismount