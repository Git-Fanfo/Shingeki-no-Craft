execute unless score $destroy_when_spawn attack_vars matches -1 unless score $destroy_when_spawn attack_vars matches 1 run scoreboard players set $destroy_when_spawn attack_vars 1

scoreboard players operation $destroy_when_spawn attack_vars *= #-1 constant
execute positioned ~ ~2 ~ run particle flash ^ ^ ^.5 0 0 0 1 1 force @s
title @s times 0 10t 10t
title @s subtitle ""
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
execute if score $destroy_when_spawn attack_vars matches -1 run title @s title [{"text":"❇ ","color":"dark_purple"},{"text":"Tr","bold":true,"color":"blue"},{"text":"a","bold":true,"color":"dark_aqua"},{"text":"n","bold":true,"color":"aqua"},{"text":"s","bold":true,"color":"white"},{"text":"f","bold":true,"color":"aqua"},{"text":"o","bold":true,"color":"dark_aqua"},{"text":"rm","bold":true,"color":"blue"},{"text":" ❇","color":"dark_purple"}]
execute if score $destroy_when_spawn attack_vars matches 1 run title @s title [{"text":"☠ ","color":"dark_red"},{"text":"Ex","bold":true,"color":"red"},{"text":"p","bold":true,"color":"gold"},{"text":"l","bold":true,"color":"yellow"},{"text":"o","bold":true,"color":"white"},{"text":"s","bold":true,"color":"yellow"},{"text":"i","bold":true,"color":"gold"},{"text":"on","bold":true,"color":"red"},{"text":" ☠","color":"dark_red"}]
