damage @s 7 out_of_world
playsound minecraft:entity.breeze.wind_burst
playsound minecraft:entity.dragon_fireball.explode
particle minecraft:gust_emitter_large ~ ~3 ~ 1 0 1 1 1 force
particle minecraft:cloud ~ ~1 ~ 0 0 0 .3 50 force
function snc:player/odm/impulse/push {"power":1, "x":"~", "y":"~-1", "z":"~"}