#summon slime ~ ~ ~ {NoAI:1b,Health:1024f,Silent:1b,Size:5,Tags:["collision","shifter","attack"],Attributes:[{Name:generic.max_health,Base:1024}]}
function animated_java:armor/summon
execute as @e[tag=aj.armor.rig_entity] run data merge entity @s {teleport_duration: 2}
