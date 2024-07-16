## Save man's UUID
execute as @e[type=#snc:eldian,sort=nearest,distance=.1..4,tag=!woman] store result score @s dna.y run data get entity @s UUID[1]
## Baby born
function snc:eldia/gene/baby