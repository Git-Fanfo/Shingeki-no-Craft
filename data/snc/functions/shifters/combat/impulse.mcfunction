data merge entity @s {NoGravity:1b}
$execute store result entity @s Motion[0] double 0.03 run scoreboard players get motion_x $(shifter)_vars
$execute store result entity @s Motion[1] double 0.01 run scoreboard players get motion_y $(shifter)_vars
$execute store result entity @s Motion[2] double 0.03 run scoreboard players get motion_z $(shifter)_vars
data merge entity @s {NoGravity:0b}

#$tellraw @p ["",{"text":"motion_x: "},{"score":{"name":"motion_x","objective":"$(shifter)_vars"}}]
#$tellraw @p ["",{"text":"motion_y: "},{"score":{"name":"motion_y","objective":"$(shifter)_vars"}}]
#$tellraw @p ["",{"text":"motion_z: "},{"score":{"name":"motion_z","objective":"$(shifter)_vars"}},"\n"]