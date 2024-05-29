tag @s add snc.baby

execute if entity @e[tag=!snc.baby,type=#snc:human,scores={koniglich=1},distance=..4,sort=nearest,limit=1] run scoreboard players set @s koniglich 1
execute if entity @p[tag=woman,distance=..4] run tag @s add snc.dna.x
execute if entity @p[tag=!woman,distance=..4] run tag @s add snc.dna.y
execute if entity @e[tag=!snc.baby,type=#snc:villager,tag=woman,distance=..4,sort=nearest,limit=1] run tag @s add snc.vill.x
execute if entity @e[tag=!snc.baby,type=#snc:villager,tag=!woman,distance=..4,sort=nearest,limit=1] run tag @s add snc.vill.y

#execute if entity @s[tag=snc.dna.x] run say player mother
#execute if entity @s[tag=snc.dna.y] run say player father
#execute if entity @s[tag=snc.vill.x] run say villager mother
#execute if entity @s[tag=snc.vill.y] run say villager father

tag @s add eldian
## Player x Player
execute if entity @s[tag=snc.dna.x,tag=snc.dna.y] run tag @s remove eldian

## Player x Villager
execute if entity @s[tag=snc.dna.x,tag=snc.vill.y] run tag @s remove eldian
execute if entity @s[tag=snc.dna.y,tag=snc.vill.x] run tag @s remove eldian

## Villager x Villager
execute if entity @s[tag=snc.vill.y,tag=snc.vill.x] run tag @s remove eldian