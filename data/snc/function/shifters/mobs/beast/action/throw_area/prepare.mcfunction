playsound minecraft:aot.beast_throw_big player @a ~ ~ ~ 3
scoreboard players set $area beast_vars 1
execute if score $rock beast_vars matches 1 as @e[tag=snc.boulder] run function snc:shifters/mobs/beast/action/throw_big/kill
## Remove Energy
$scoreboard players remove $energy beast_vars $(energy_area)