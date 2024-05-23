scoreboard players set state armor_vars 12
scoreboard players set $mov armor_vars 86
# Don't remove this one, set to run
execute on vehicle run data merge entity @s {Fire:0,Attributes:[{Name:generic.movement_speed,Base:0.31}]}

execute on vehicle run effect clear @s slowness
execute on vehicle run effect give @s speed 4 4 true
execute on vehicle on passengers if entity @s[type=player] run effect give @s speed 4 12 true

scoreboard players set $charge.time armor_vars 80
function snc:shifters/mobs/armor/action/charge/spawn