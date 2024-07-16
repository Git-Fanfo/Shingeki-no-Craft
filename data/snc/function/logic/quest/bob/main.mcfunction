advancement revoke @s only snc:human/npc/bob
playsound minecraft:aot.human.interact player @s ~ ~ ~ 1 1.15

execute if score @s reputation matches ..-26 run tellraw @s ["<Bobby Whitewood> ","Wait, please don't hurt me... Your reputation is ",{"score":{"name":"@s","objective":"reputation"},"color":"red"}]
execute if score @s reputation matches -25..25 run tellraw @s ["<Bobby Whitewood> ","Hello there."," ","Your reputation is ",{"score":{"name":"@s","objective":"reputation"},"color":"yellow"}]
execute if score @s reputation matches 26.. run tellraw @s ["<Bobby Whitewood> ","Ah, a visitor!"," ","Your reputation is ",{"score":{"name":"@s","objective":"reputation"},"color":"green"}]