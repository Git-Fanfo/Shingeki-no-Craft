execute if entity @s[tag=!aj.armor.animation.charge] run function snc:shifters/mobs/armor/animate/charge

execute on vehicle run attribute @s generic.scale base set 5.2
fill ~4 ~1.5 ~4 ~-4 ~15 ~-4 air destroy
# Go to the point first, then rotate above y axis
execute rotated ~ 0 positioned ^ ^8 ^5 run function snc:shifters/mobs/armor/action/charge/wind
# execute unless score rotation armor_vars matches -1..1 on vehicle run function snc:shifters/mobs/armor/action/charge/angle

execute if score $moving armor_vars matches 1 unless score $mov armor_vars matches 80.. run scoreboard players add $mov armor_vars 2
execute if score $moving armor_vars matches 0 run scoreboard players remove $mov armor_vars 1
execute if score $mov armor_vars matches ..78 run function snc:shifters/mobs/armor/action/charge/slide
execute if score $charge.time armor_vars matches ..0 run function snc:shifters/mobs/armor/action/charge/slide

# tellraw @a ["",{"text":"mov: "},{"score":{"name":"$mov","objective":"armor_vars"}},{"text":" | moving: "},{"score":{"name":"$moving","objective":"armor_vars"}}]
scoreboard players remove $charge.time armor_vars 1