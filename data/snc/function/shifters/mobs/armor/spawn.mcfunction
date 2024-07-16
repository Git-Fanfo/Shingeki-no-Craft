function animated_java:armor/summon
execute as @e[tag=aj.armor.rig_entity] run data merge entity @s {teleport_duration: 2}
