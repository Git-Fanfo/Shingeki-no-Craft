execute unless score @s jaw_vars matches ..1200 if score $vanish jaw_vars matches 1 run scoreboard players set @s jaw_vars 2
execute unless score @s jaw_vars matches ..1200 if score $vanish jaw_vars matches 1 run scoreboard players reset $vanish jaw_vars

execute unless score @s jaw_vars matches ..1200 run scoreboard players set @s jaw_vars 1200
## Prevent 2 corpses at the same time
scoreboard players set $corpses jaw_vars 0
execute if score @s jaw_vars matches 1200 as @e[tag=shifter,tag=jaw,tag=dead] run scoreboard players add $corpses jaw_vars 1
execute if score $corpses jaw_vars matches 2.. as @e[tag=shifter,tag=jaw,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill {"shifter":"jaw"}
attribute @s scale base set 2.1
#execute unless block ~ ~-3 ~ air rotated ~ 0 if block ~ ~ ~ air run tp ^ ^-.1 ^
execute if block ~ ~2 ~ air run tp ^ ^-.25 ^

execute if score @s jaw_vars matches 200.. run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force

## Change variant
execute if score @s jaw_vars matches 1200 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 1100 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 1000 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 900 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 800 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 700 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 600 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 500 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 400 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 300 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
execute if score @s jaw_vars matches 200 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay

execute if score @s jaw_vars matches 0 run particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
execute if score @s jaw_vars matches 0 run playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s jaw_vars matches 0 run function snc:shifters/mobs/kill {"shifter":"jaw"}