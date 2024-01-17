execute unless block ~ ~-7.5 ~ #snc:filter_shifter run data merge entity @s {NoGravity:1b}

execute unless score @s armor_vars matches ..7200 run scoreboard players set @s armor_vars 7200
## Prevent 2 corpses at the same time
scoreboard players set $corpses armor_vars 0
execute if score @s armor_vars matches 7200 as @e[tag=shifter,tag=armor,tag=dead] run scoreboard players add $corpses armor_vars 1

##DELETE
scale set pehkui:eye_height 1 @p
##DELETE

execute if score $corpses armor_vars matches 2.. as @e[tag=shifter,tag=armor,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill


## Reset
execute if score @s armor_vars matches 7200 run bossbar remove minecraft:armor_health
execute if score @s armor_vars matches 7200 run scoreboard players set state armor_vars 0

execute if score @s armor_vars matches 1000.. run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force
execute if score @s armor_vars matches 1000.. run fill ^-3 ^-1 ^-3 ^3 ^-1 ^3 minecraft:air replace barrier

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

execute if score @s armor_vars matches 7100 run function snc:shifters/mobs/kill