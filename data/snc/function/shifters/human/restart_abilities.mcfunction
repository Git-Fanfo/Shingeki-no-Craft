clear @s carved_pumpkin
playsound minecraft:entity.villager.no
title @s times 0 20t 10t
title @s subtitle [{"translate":"aot.shifters.error.armor2"},"(","\uE007",")"]
title @s title [{"text":"✖ ","color":"red"},{"translate":"aot.shifters.error.armor"},{"text":" ✖","color":"red"}]
function snc:shifters/function/multiple {"pre":"function snc:shifters/mobs/","post":"/abilities/give"}