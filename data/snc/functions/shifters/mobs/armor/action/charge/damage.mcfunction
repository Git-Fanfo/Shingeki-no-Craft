fill ~4 ~1.5 ~4 ~-4 ~15 ~-4 air destroy
# Go to the point first, then rotate above y axis
execute rotated ~ 0 positioned ^ ^8 ^5 run function snc:shifters/mobs/armor/action/charge/wind
execute unless score rotation armor_vars matches -1..1 on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/armor/action/charge/angle
execute unless score rotation armor_vars matches -1..1 store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]

## Remove
execute if score $charge.time armor_vars matches ..80 if score #posx1 armor_vars matches ..1500 run function snc:shifters/mobs/armor/action/charge/slide
execute if score $charge.time armor_vars matches ..0 run function snc:shifters/mobs/armor/action/charge/slide
# tellraw @p ["",{"text":"mov: "},{"score":{"name":"#posx1","objective":"armor_vars"}}]

scoreboard players remove $charge.time armor_vars 1