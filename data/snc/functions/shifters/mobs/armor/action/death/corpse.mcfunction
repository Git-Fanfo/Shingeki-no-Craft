execute if score $vanish armor_vars matches 1 run particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
execute if score $vanish armor_vars matches 1 run playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score $vanish armor_vars matches 1 run function snc:shifters/mobs/kill {"shifter":"armor"}

execute unless score @s armor_vars matches ..1200 run scoreboard players set @s armor_vars 1200
## Prevent 2 corpses at the same time
scoreboard players set $corpses armor_vars 0
execute if score @s armor_vars matches 1200 as @e[tag=shifter,tag=armor,tag=dead] run scoreboard players add $corpses armor_vars 1
execute if score $corpses armor_vars matches 2.. as @e[tag=shifter,tag=armor,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill {"shifter":"armor"}
attribute @s generic.scale base set 5.2
execute unless block ~ ~-1 ~ air rotated ~ 0 if block ~ ~ ~ air run tp ^ ^-.1 ^
## Reset
execute if score @s armor_vars matches 1200 run bossbar remove minecraft:armor_health

execute if score @s armor_vars matches 200.. run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force

## Change variant
#execute if score @s armor_vars matches 7100 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 7000 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6900 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6800 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6700 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6600 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6500 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6400 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6300 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay
#execute if score @s armor_vars matches 6200 on passengers if entity @s[tag=aj.armor.root] run function snc:shifters/mobs/armor/action/death/decay

execute if score @s armor_vars matches 0 run particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
execute if score @s armor_vars matches 0 run playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s armor_vars matches 0 run function snc:shifters/mobs/kill {"shifter":"armor"}