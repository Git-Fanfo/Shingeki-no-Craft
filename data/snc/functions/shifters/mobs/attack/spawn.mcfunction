#summon slime ~ ~ ~ {NoAI:1b,Health:1024f,Silent:1b,Size:5,Tags:["collision","shifter","attack"],Attributes:[{Name:generic.max_health,Base:1024}]}
#summon shulker ~ ~ ~ {NoAI:1b,Health:1024f,Silent:1b,Size:5,Tags:["collision","shifter","attack"],Attributes:[{Name:generic.max_health,Base:1024},{Name:generic.scale,Base:3}]}
function animated_java:attack/summon
execute as @e[tag=aj.attack.rig_entity] run data merge entity @s {teleport_duration: 2}