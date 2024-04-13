# data merge entity @s {Particle:"block barrier",ReapplicationDelay:0,Radius:3f,Duration:60,effects:[{id:"minecraft:water_breathing",amplifier:1b,duration:20,show_particles:0b}]}
data merge entity @s {Particle:{"type":"crit"},ReapplicationDelay:0,Radius:3f,Duration:60,potion_contents:{potion:"minecraft:water_breathing"}}


ride @s mount @e[tag=head,tag=soldier,sort=nearest,limit=1]