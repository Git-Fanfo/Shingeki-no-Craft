title @s times 0 40t 5t
title @s title {"translate":"aot.gun.error1","color": "red","bold": true}
title @s subtitle [{"text":"✖ ","color": "red"},{"translate":"aot.gun.error2","bold": true,"color": "yellow"},{"text":" ✖","color": "red"}]
playsound minecraft:entity.item.break
playsound minecraft:entity.goat.horn_break player @a ~ ~ ~ 1 .6
execute anchored eyes run particle item{item:"arrow"} ^ ^ ^0.2 0 0 0 0.1 20 force
item modify entity @s weapon.mainhand snc:gun/reset
scoreboard players set @s snc.bullets 0

return 1