$execute if predicate snc:is_sneaking run title @s actionbar ["",{"keybind":"key.use","color":"yellow"}," ",{"translate":"aot.fluid.desc2","color":"red"},{"text":"... ","color": "yellow"},{"selector":"@e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1]","color": "yellow"}]
$execute if predicate snc:is_sneaking at @e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1] run particle dust_color_transition 1 0.33 1 2.5 1 1 0.33 ~ ~1 ~ 0 0 0 1 1 force @s 
execute unless score @s shifter_vars matches 1.. unless predicate snc:is_sneaking run title @s actionbar [{"keybind":"key.use","color":"yellow"}," ",{"translate":"aot.fluid.desc2","color":"red"}," ",{"selector":"@s","color": "yellow"}]
execute if score @s shifter_vars matches 1.. unless predicate snc:is_sneaking run title @s actionbar ["",{"translate":"aot.fluid.desc"}," ",{"translate":"aot.adv.shifter","color":"red"}," ",{"selector":"@s"}]