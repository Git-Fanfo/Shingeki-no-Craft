## Init vars
execute unless score @s snc.hold matches -1.. run scoreboard players set @s snc.hold 0

$execute if predicate snc:player/is_sneaking run title @s actionbar ["",{"keybind":"key.use","color":"yellow"}," ",{"translate":"aot.fluid.desc2","color":"red"},{"text":"... ","color": "yellow"},{"selector":"@e[type=#snc:$(sryinge),distance=.1..3,sort=nearest,limit=1]","color": "yellow"}]
$execute if predicate snc:player/is_sneaking at @e[type=#snc:$(sryinge),distance=1..3,sort=nearest,limit=1] run particle minecraft:dust_color_transition{from_color:[1f, 0.33f, 1f],to_color:[1f, 1f, 0.33f], scale:2.5f} ~ ~1 ~ 0 0 0 1 1 force @s 

execute unless score @s shifter_vars matches 1.. unless predicate snc:player/is_sneaking run title @s actionbar [{"keybind":"key.use","color":"yellow"}," ",{"translate":"aot.fluid.desc2","color":"red"}," ",{"selector":"@s","color": "yellow"}]
execute if score @s shifter_vars matches 1.. unless predicate snc:player/is_sneaking run title @s actionbar ["",{"translate":"aot.fluid.desc"}," ",{"translate":"aot.adv.shifter","color":"red"}," ",{"selector":"@s"}]

## Apply Hold
# If has been clicked
execute if score @s snc.hold matches 1.. run scoreboard players add @s snc.hold 1
# Trigger click
execute if score @s snc.hold matches 0 if predicate snc:player/is_sneaking if score @s snc.hold.rc matches 1.. run scoreboard players set @s snc.hold 1
## Stop
# If not sneaking
execute if score @s snc.hold matches 1.. unless predicate snc:player/is_sneaking run scoreboard players set @s snc.hold -1
# If entity is too far
$execute if score @s snc.hold matches 1.. unless entity @e[type=#snc:$(sryinge),distance=.1..3,sort=nearest,limit=1] run scoreboard players set @s snc.hold -1

execute if score @s snc.hold matches -1 run playsound minecraft:block.lava.extinguish player @s ~ ~ ~
execute if score @s snc.hold matches -1 run item modify entity @s weapon.mainhand snc:durability/100
execute if score @s snc.hold matches -1 run scoreboard players set @s snc.hold 0


execute if score @s snc.hold matches 1 run item modify entity @s weapon.mainhand snc:durability/80
execute if score @s snc.hold matches 1 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 2 1.7
execute if score @s snc.hold matches 20 run item modify entity @s weapon.mainhand snc:durability/60
execute if score @s snc.hold matches 20 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 2 1.7
execute if score @s snc.hold matches 40 run item modify entity @s weapon.mainhand snc:durability/40
execute if score @s snc.hold matches 40 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 2 1.7
execute if score @s snc.hold matches 40 run playsound minecraft:block.frogspawn.hatch player @a ~ ~ ~ 2 1
execute if score @s snc.hold matches 60 run item modify entity @s weapon.mainhand snc:durability/20
execute if score @s snc.hold matches 60 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 2 1.7
execute if score @s snc.hold matches 60 run playsound minecraft:block.frogspawn.hatch player @a ~ ~ ~ 2 .8
execute if score @s snc.hold matches 80 run item modify entity @s weapon.mainhand snc:durability/1
execute if score @s snc.hold matches 80 run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 2 1.7
execute if score @s snc.hold matches 80 run playsound minecraft:block.frogspawn.hatch player @a ~ ~ ~ 2 .6

execute if score @s snc.hold matches 100 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 1.7
$execute if score @s snc.hold matches 100 if predicate snc:shifters/has_injection_kon as @e[type=#snc:$(sryinge),distance=.1..3,sort=nearest,limit=1] run function snc:player/titan/infect/royal
$execute if score @s snc.hold matches 100 unless predicate snc:shifters/has_injection_kon run scoreboard players set @e[type=#snc:$(sryinge),distance=.1..3,sort=nearest,limit=1] atk 120
execute if score @s snc.hold matches 100 run function snc:api/give/shifters/syringe/empty
execute if score @s snc.hold matches 100 run item replace entity @s weapon.mainhand with air
execute if score @s snc.hold matches 100.. run scoreboard players set @s snc.hold 0
## Itself
execute unless predicate snc:player/is_sneaking if score @s snc.hold.rc matches 1.. run function snc:player/titan/injection/itself