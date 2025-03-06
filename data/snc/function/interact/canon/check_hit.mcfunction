execute on attacker if predicate snc:player/has_build as @n[tag=canon] at @s run function snc:interact/canon/hit
execute unless data entity @s interaction on attacker unless predicate snc:player/has_build run tellraw @s ["",{"translate":"aot.cannon.remove.desc"}," ",{"translate":"aot.build.wrench","color":"yellow"}," ",{"translate":"aot.cannon.remove.desc2"}," ",{"translate":"aot.cannon","color":"dark_red"}]
execute unless data entity @s interaction on attacker unless predicate snc:player/has_build run playsound minecraft:entity.villager.no

execute if data entity @s interaction on attacker run title @s times 0t 1s 10t
execute if data entity @s interaction on attacker run title @s subtitle {"translate":"aot.cannon.disabled","color":"yellow"}
execute if data entity @s interaction on attacker run title @s title ""

data remove entity @s interaction
data remove entity @s attack