execute unless entity @e[distance=1..4,sort=nearest,limit=1] run tellraw @s ["",{"translate":"aot.handcuffs.desc6"}," ",{"translate":"aot.handcuffs.desc5","color":"dark_red"}," ",{"translate":"aot.handcuffs.desc4"}," ",{"translate":"aot.handcuffs.desc3","color":"dark_red"}]

execute if entity @e[distance=1..4,type=#snc:eldian,sort=nearest,limit=1] run function snc:interact/handcuffs/use
execute as @e[distance=1..4,type=#snc:eldian,sort=nearest,limit=1] run function snc:interact/handcuffs/select_human