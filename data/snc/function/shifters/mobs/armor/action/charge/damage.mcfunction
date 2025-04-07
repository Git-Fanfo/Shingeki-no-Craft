execute if entity @s[tag=!aj.armor.animation.charge.playing] run function snc:shifters/mobs/armor/animate/charge

scoreboard players remove $energy armor_vars 1
execute on vehicle run scoreboard players reset @s snc.knockback

#execute on vehicle run attribute @s scale base set 5.2

## Destroy
execute if score $shifter_destroy config matches 1 run function snc:shifters/mobs/armor/action/charge/energy

## Particles
# Go to the point first, then rotate above y axis
execute rotated ~ 0 positioned ^ ^8 ^5 run function snc:shifters/mobs/armor/action/charge/wind
# Damage players on ground 
#execute positioned ^ ^ ^2 run function snc:shifters/combat/damage {"distance":8,"half_distance":3.5,"shifter":"armor","sound":"","damage":5,"knockback":"1","energy":0,"angle":7}

execute on vehicle on controller unless predicate snc:player/keybinds/forward run function snc:shifters/mobs/armor/action/charge/slide with storage minecraft:armor
execute if score $charge.time armor_vars matches ..0 run function snc:shifters/mobs/armor/action/charge/slide with storage minecraft:armor

# grab: 1 = empty > 2 = carrying a titan > 3 = impaled
execute rotated ~ 0 positioned ^ ^4 ^5 if score #grab armor_vars matches 2 unless block ~ ~ ~ air unless block ~ ~ ~ #snc:destroy/nature run scoreboard players set #grab armor_vars 3

execute if score #grab armor_vars matches 3 run function snc:shifters/mobs/armor/action/charge/slide with storage minecraft:armor

# tellraw @a ["",{"text":"#grab: "},{"score":{"name":"#grab","objective":"armor_vars"}}]
scoreboard players remove $charge.time armor_vars 1