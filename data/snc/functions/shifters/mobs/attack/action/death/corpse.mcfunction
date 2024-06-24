execute if score $vanish attack_vars matches 1 run scoreboard players set @s attack_vars 0
execute if score $vanish attack_vars matches 1 run scoreboard players reset $vanish attack_vars

execute unless score @s attack_vars matches ..1200 run scoreboard players set @s attack_vars 1200
## Prevent 2 corpses at the same time
scoreboard players set $corpses attack_vars 0
execute if score @s attack_vars matches 1200 as @e[tag=shifter,tag=attack,tag=dead] run scoreboard players add $corpses attack_vars 1
execute if score $corpses attack_vars matches 2.. as @e[tag=shifter,tag=attack,tag=dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill {"shifter":"attack"}
attribute @s generic.scale base set 4.5

## Reset
execute if score @s attack_vars matches 1200 run bossbar remove minecraft:attack_health

execute if score @s attack_vars matches 200.. run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force

## Change variant
execute if score @s attack_vars matches 1100 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 1000 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 900 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 800 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 700 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 600 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 500 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 400 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 300 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay
execute if score @s attack_vars matches 200 on passengers if entity @s[tag=aj.attack.root] run function snc:shifters/mobs/attack/action/death/decay

execute if score @s attack_vars matches 0 run particle minecraft:cloud ~ ~4 ~ 2 2 2 .2 500 force
execute if score @s attack_vars matches 0 run playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s attack_vars matches 0 run function snc:shifters/mobs/kill {"shifter":"attack"}