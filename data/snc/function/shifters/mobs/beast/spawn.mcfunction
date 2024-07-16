# summon slime ~ ~ ~ {NoAI:1b,Health:1024f,Silent:1b,Size:5,Tags:["collision","shifter","beast"],Attributes:[{Name:generic.max_health,Base:1024}]}

function animated_java:beast/summon
execute as @e[tag=aj.beast.rig_entity] run data merge entity @s {teleport_duration: 2}