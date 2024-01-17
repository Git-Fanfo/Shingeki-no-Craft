tag @e[type=#snc:villager ,sort=nearest,limit=1] add follow
tellraw @s ["<",{"selector":"@e[type=armor_stand ,sort=nearest,limit=1]"},"> ", "I'm Right behind you!"]
title @s actionbar [{"translate":"aot.tip"},": ",{"translate":"aot.tip.follow.1","color":"yellow"}," ",{"keybind":"key.togglePerspective"}," ",{"translate":"aot.tip.follow.2","color":"yellow"}]