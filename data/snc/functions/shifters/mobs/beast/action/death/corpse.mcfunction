execute unless block ~ ~-1 ~ #snc:filter_shifter if block ~ ~ ~ #snc:filter_shifter run tp ~ ~-.1 ~

execute unless score @s beast_vars matches ..7200 run scoreboard players set @s beast_vars 7200
## Prevent 2 corpses at the same time
scoreboard players set $corpses beast_vars 0
execute if score @s beast_vars matches 7200 as @e[tag=shifter,tag=beast,tag=dead] run scoreboard players add $corpses beast_vars 1
execute if score $corpses beast_vars matches 2.. as @e[tag=shifter,tag=beast,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill

## Reset
execute if score @s beast_vars matches 7200 run bossbar remove minecraft:beast_health
execute if score @s beast_vars matches 7200 run scoreboard players set state beast_vars 0

execute if score @s beast_vars matches 1000.. run particle campfire_signal_smoke ^1.5 ^2 ^-6 2 3 2 .01 1 force
execute if score @s beast_vars matches 1000.. run fill ^-3 ^-1 ^-3 ^3 ^-1 ^3 minecraft:air replace barrier

## Fall with style
execute if score @s beast_vars matches 7190 run effect give @s slow_falling 1 0 true
execute if score @s beast_vars matches 7165 run effect give @s slow_falling 1 0 true
execute if score @s beast_vars matches 7160 run effect clear @s slow_falling
execute if score @s beast_vars matches 7190 run tag @s add not_mov
execute if score @s beast_vars matches 7180 run tag @s add not_mov
execute if score @s beast_vars matches 7175 run tag @s add not_mov

## Change variant
execute if score @s beast_vars matches 7100 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 7000 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6900 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6800 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6700 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6600 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6500 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6400 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6300 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6200 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6100 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 6000 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 5900 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 5800 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 5700 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay



execute if score @s beast_vars matches 0 on passengers if entity @s[tag=aj.beast.root] run function animated_java:beast/remove/this
execute if score @s beast_vars matches 0 run function snc:logic/kill_mob