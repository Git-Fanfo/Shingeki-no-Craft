function animated_java:armor/summon {args: {animation:born}}
execute as @e[tag=aj.armor.rig_entity] run data merge entity @s {teleport_duration: 2}
