execute store result score @s snc.odm_gas run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".odm_gas

#execute if score @s snc.odm_gas matches 1.. run tellraw FanfoYT ["Gas: ",{"score":{"name":"@s","objective":"snc.odm_gas"},"color":"yellow","italic": true}]
execute if score @s snc.odm_gas matches 0 run title @s times 0 1s 1
execute if score @s snc.odm_gas matches 0 run title @s title ""
execute if score @s snc.odm_gas matches 0 run title @s subtitle [{"text":"✖ ","color": "red"},{"translate":"aot.odm.gas","bold": true}," ✖"]
execute if score @s snc.odm_gas matches 0 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 1.5
execute if score @s snc.odm_gas matches 0 run function snc:player/odm/hook/shake
execute if score @s snc.odm_gas matches 1.. if predicate snc:odm/lvl/1 if predicate snc:chance/20 run function snc:player/odm/throw/gas
execute if score @s snc.odm_gas matches 1.. if predicate snc:odm/lvl/2 if predicate snc:chance/15 run function snc:player/odm/throw/gas
execute if score @s snc.odm_gas matches 1.. run function snc:player/odm/throw/main with entity @s