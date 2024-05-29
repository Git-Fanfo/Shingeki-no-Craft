execute if entity @s[tag=!aj.armor.animation.charge] run function snc:shifters/mobs/armor/animate/charge

scoreboard players remove $energy armor_vars 1
execute on vehicle run scoreboard players reset @s snc.knockback


execute on vehicle run attribute @s generic.scale base set 5.2

execute if score $shifter_destroy config matches 1 run fill ~3.5 ~ ~3.5 ~-3.5 ~15 ~-3.5 air destroy
execute if score $shifter_destroy config matches 1 run fill ~3.5 ~ ~4.5 ~-3.5 ~9 ~-4.5 air destroy
execute if score $shifter_destroy config matches 1 run fill ~4.5 ~ ~3.5 ~-4.5 ~9 ~-3.5 air destroy

## Destroy
execute if score $shifter_destroy config matches 1 run function snc:shifters/mobs/armor/action/charge/energy

## Particles
# Go to the point first, then rotate above y axis
execute rotated ~ 0 positioned ^ ^8 ^5 run function snc:shifters/mobs/armor/action/charge/wind

execute if score $moving armor_vars matches 1 unless score $mov armor_vars matches 80.. run scoreboard players add $mov armor_vars 2
execute if score $moving armor_vars matches 0 run scoreboard players remove $mov armor_vars 1
execute if score $mov armor_vars matches ..78 run function snc:shifters/mobs/armor/action/charge/slide with storage minecraft:armor
execute if score $charge.time armor_vars matches ..0 run function snc:shifters/mobs/armor/action/charge/slide with storage minecraft:armor

execute rotated ~ 0 positioned ^ ^5 ^5 if score #grab armor_vars matches 2 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #grab armor_vars 3

execute if score #grab armor_vars matches 3 run function snc:shifters/mobs/armor/action/charge/slide with storage minecraft:armor

# tellraw @a ["",{"text":"mov: "},{"score":{"name":"$mov","objective":"armor_vars"}},{"text":" | moving: "},{"score":{"name":"$moving","objective":"armor_vars"}}]
scoreboard players remove $charge.time armor_vars 1