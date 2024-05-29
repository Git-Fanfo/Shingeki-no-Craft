title @s times 10t 3s 10t
execute unless score @s snc.bee matches 0 run title @s actionbar [{"text": "✖ ","color":"red","bold": true},{"translate":"aot.inv.desc6"}," ✖"]
execute unless score @s snc.bee matches 0 run playsound entity.villager.no player @a ~ ~ ~ 1 1
execute if score @s snc.bee matches 0 unless entity @e[type=#snc:eldian,distance=.1..3] run title @s actionbar [{"text": "✖ ","color":"red","bold": true},{"translate":"aot.inv.desc5"}," ✖"]

execute if score @s snc.bee matches 0 if entity @e[type=#snc:eldian,distance=.1..3] run function snc:eldia/gene/check_partner