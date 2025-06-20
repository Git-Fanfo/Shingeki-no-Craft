execute unless score @s beast_vars matches ..1200 if score $vanish beast_vars matches 1 run scoreboard players set @s beast_vars 2
execute unless score @s beast_vars matches ..1200 if score $vanish beast_vars matches 1 run scoreboard players reset $vanish beast_vars

execute unless score @s beast_vars matches ..1200 run scoreboard players set @s beast_vars 1200
## Prevent 2 corpses at the same time
scoreboard players set $corpses beast_vars 0
execute if score @s beast_vars matches 1200 as @e[tag=shifter,tag=beast,tag=dead] run scoreboard players add $corpses beast_vars 1
execute if score $corpses beast_vars matches 2.. as @e[tag=shifter,tag=beast,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill {"shifter":"beast"}
attribute @s scale base set 6.4


execute if score @s beast_vars matches 1000.. run particle campfire_signal_smoke ^1.5 ^2 ^-6 2 3 2 .01 1 force

## Change variant
execute if score @s beast_vars matches 1150 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 1100 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 1050 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 1000 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 950 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 900 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 850 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 800 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 700 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 600 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 500 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 4000 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 300 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 200 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay
execute if score @s beast_vars matches 100 on passengers if entity @s[tag=aj.beast.root] run function snc:shifters/mobs/beast/action/death/decay

execute if score @s beast_vars matches 0 run particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
execute if score @s beast_vars matches 0 run playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s beast_vars matches 0 run function snc:shifters/mobs/kill {"shifter":"beast"}