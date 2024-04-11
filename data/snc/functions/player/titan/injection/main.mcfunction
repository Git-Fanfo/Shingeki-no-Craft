# Init vars
execute unless score @s idle matches -1.. run scoreboard players set @s idle 0

$execute if predicate snc:player/is_sneaking run title @s actionbar ["",{"keybind":"key.use","color":"yellow"}," ",{"translate":"aot.fluid.desc2","color":"red"},{"text":"... ","color": "yellow"},{"selector":"@e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1]","color": "yellow"}]
$execute if predicate snc:player/is_sneaking at @e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1] run particle minecraft:dust_color_transition{from_color:[1f, 0.33f, 1f],to_color:[1f, 1f, 0.33f], scale:2.5f} ~ ~1 ~ 0 0 0 1 1 force @s 

execute unless score @s shifter_vars matches 1.. unless predicate snc:player/is_sneaking run title @s actionbar [{"keybind":"key.use","color":"yellow"}," ",{"translate":"aot.fluid.desc2","color":"red"}," ",{"selector":"@s","color": "yellow"}]
execute if score @s shifter_vars matches 1.. unless predicate snc:player/is_sneaking run title @s actionbar ["",{"translate":"aot.fluid.desc"}," ",{"translate":"aot.adv.shifter","color":"red"}," ",{"selector":"@s"}]

## Note: I'm using idle to not create another scoreboard
## Apply Syringe
# If has been clicked
execute if score @s idle matches 1.. run scoreboard players add @s idle 1
# Trigger click
execute if score @s idle matches 0 if predicate snc:player/is_sneaking if score @s hold_carrot matches 1.. run scoreboard players set @s idle 1
# if has been clicked detect predicate
execute if score @s idle matches 1.. unless predicate snc:player/is_sneaking run scoreboard players set @s idle -1
$execute if score @s idle matches 1.. unless entity @e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1] run scoreboard players set @s idle -1

execute if score @s idle matches -1 run playsound minecraft:block.lava.extinguish player @s ~ ~ ~
execute if score @s idle matches -1 run item modify entity @s weapon.mainhand snc:durability/100
execute if score @s idle matches -1 run scoreboard players set @s idle 0

execute if score @s idle matches 1 run item modify entity @s weapon.mainhand snc:durability/70
execute if score @s idle matches 1 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1.7
execute if score @s idle matches 20 run item modify entity @s weapon.mainhand snc:durability/40
execute if score @s idle matches 20 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1.7
execute if score @s idle matches 40 run item modify entity @s weapon.mainhand snc:durability/10
execute if score @s idle matches 40 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1.7

execute if score @s idle matches 60 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 1.7
#execute if score @s idle matches 60 run playsound block.end_portal.spawn player @a ~ ~ ~ 1 1.2
$execute if score @s idle matches 60 if predicate snc:shifters/has_injection_kon run scoreboard players set @e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1] atk 240
$execute if score @s idle matches 60 unless predicate snc:shifters/has_injection_kon run scoreboard players set @e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1] atk 120
execute if score @s idle matches 60 run clear @s carrot_on_a_stick[custom_data~{inj_full:1b}] 1
execute if score @s idle matches 60 run function snc:api/give/shifters/syringe/empty
execute if score @s idle matches 60.. run scoreboard players set @s idle 0
execute unless predicate snc:player/is_sneaking if score @s hold_carrot matches 1.. run function snc:player/titan/injection/itself