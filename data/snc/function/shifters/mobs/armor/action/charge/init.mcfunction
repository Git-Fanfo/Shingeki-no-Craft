scoreboard players set state armor_vars 12
# Don't remove this one, set to run
execute on vehicle run data merge entity @s {Fire:0,attributes:[{id:"minecraft:movement_speed",base:0.31}]}

execute on vehicle run effect clear @s slowness
execute on vehicle run effect give @s speed 4 4 true
execute on vehicle on passengers if entity @s[type=player] run effect give @s speed 4 12 true

scoreboard players set $charge.time armor_vars 80

# Spawn charge
summon item_display ~ ~ ~ {teleport_duration: 1,item_display:"head",Tags:["collision","shifter","armor","armor.charge"]}
scoreboard players set #grab armor_vars 1