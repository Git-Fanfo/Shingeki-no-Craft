execute positioned ~ ~4 ~ run data modify entity @e[tag=village,limit=1,sort=nearest] CustomName set from entity @s SelectedItem.tag.display.Name
title @s times 10t 3s 10t
title @s actionbar [{"text": "✔ ","color":"green","bold": true},{"translate":"aot.rename.desc8","color": "yellow"}," ✔"]
playsound entity.villager.yes player @s ~ ~ ~ 1 1
clear @s carrot_on_a_stick{rename:1b} 1