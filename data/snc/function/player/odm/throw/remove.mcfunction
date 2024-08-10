clear @s *[custom_data~{snc.iceburst:1b}]
playsound minecraft:entity.breeze.wind_burst
playsound minecraft:entity.dragon_fireball.explode
particle minecraft:gust_emitter_large ~ ~3 ~ 1 0 1 1 1 force
particle minecraft:cloud ~ ~1 ~ 0 0 0 .3 50 force
function snc:player/odm/impulse/push {"power":2, "x":"~", "y":"~-1", "z":"~"}