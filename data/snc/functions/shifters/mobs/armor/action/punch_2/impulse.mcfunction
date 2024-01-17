data merge entity @s {NoGravity:1b}
execute store result entity @s Motion[0] double 0.03 run scoreboard players get motion_x attack_vars
execute store result entity @s Motion[2] double 0.03 run scoreboard players get motion_z attack_vars
data merge entity @s {NoGravity:0b}

#tellraw @p ["",{"text":"motion_x: "},{"score":{"name":"motion_x","objective":"attack_vars"}}]
#tellraw @p ["",{"text":"motion_z: "},{"score":{"name":"motion_z","objective":"attack_vars"}},"\n"]