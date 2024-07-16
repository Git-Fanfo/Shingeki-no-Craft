advancement revoke @s only snc:human/hold/handcuffs
# Init vars
execute unless score @s snc.hold matches -1.. run scoreboard players set @s snc.hold 0

execute if predicate snc:player/is_sneaking run title @s actionbar ["",{"keybind":"key.use","color":"yellow"}," ",{"translate":"to trap","color":"red"},{"text":"... ","color": "yellow"},{"selector":"@e[type=#snc:eldian,tag=!snc.handcuffs,distance=.1..3,sort=nearest,limit=1]","color": "yellow"}]

execute unless predicate snc:player/is_sneaking run title @s actionbar [{"keybind":"key.sneak","color":"yellow"}," ",{"translate":"to use","color":"red"}," ",{"translate":"aot.handcuffs","color": "yellow"}]

## Apply Hold
# If has been clicked
execute if score @s snc.hold matches 1.. run scoreboard players add @s snc.hold 1
# Trigger click
execute if score @s snc.hold matches 0 if predicate snc:player/is_sneaking if score @s snc.hold.rc matches 1.. run scoreboard players set @s snc.hold 1
## Stop
# If not sneaking
execute if score @s snc.hold matches 1.. unless predicate snc:player/is_sneaking run scoreboard players set @s snc.hold -1
# If entity is too far
execute if score @s snc.hold matches 1.. unless entity @e[type=#snc:eldian,distance=.1..3,sort=nearest,limit=1] run scoreboard players set @s snc.hold -1

execute if score @s snc.hold matches -1 run playsound minecraft:block.chain.break player @a ~ ~ ~ 2 .9
execute if score @s snc.hold matches -1 run item modify entity @s weapon.mainhand snc:durability/100
execute if score @s snc.hold matches -1 run scoreboard players set @s snc.hold 0

execute if score @s snc.hold matches 1 run item modify entity @s weapon.mainhand snc:durability/70
execute if score @s snc.hold matches 1 run playsound minecraft:block.chain.hit player @a ~ ~ ~ 2 .9
execute if score @s snc.hold matches 20 run item modify entity @s weapon.mainhand snc:durability/40
execute if score @s snc.hold matches 20 run playsound minecraft:block.chain.hit player @a ~ ~ ~ 2 .9
execute if score @s snc.hold matches 40 run item modify entity @s weapon.mainhand snc:durability/10
execute if score @s snc.hold matches 40 run playsound minecraft:block.chain.hit player @a ~ ~ ~ 2 .9

execute if score @s snc.hold matches 60 run playsound minecraft:block.chain.place player @a ~ ~ ~ 2 1.1
execute if score @s snc.hold matches 60 run playsound minecraft:block.vault.insert_item_fail master @a ~ ~ ~ 2 .9
execute if score @s snc.hold matches 60 if entity @e[distance=.1..3,type=#snc:eldian,sort=nearest,limit=1,tag=!snc.handcuffs] run item replace entity @s weapon.mainhand with air
execute if score @s snc.hold matches 60 as @e[distance=.1..3,type=#snc:eldian,sort=nearest,limit=1,tag=!snc.handcuffs] at @s run function snc:interact/handcuffs/select_human

execute if score @s snc.hold matches 60.. run scoreboard players set @s snc.hold 0