data merge entity @s {NoGravity:1b}
data modify entity @s Motion[1] set value -2d
data merge entity @s {NoGravity:0b}
execute on vehicle run effect clear @s levitation

#tellraw @p ["",{"text":"motion_x: "},{"score":{"name":"motion_x","objective":"attack_vars"}}]
#tellraw @p ["",{"text":"motion_y: "},{"score":{"name":"motion_y","objective":"attack_vars"}}]
#tellraw @p ["",{"text":"motion_z: "},{"score":{"name":"motion_z","objective":"attack_vars"}},"\n"]