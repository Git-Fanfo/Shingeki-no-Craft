# Give royal
execute if entity @s[tag=koniglich] on vehicle run scoreboard players set @s koniglich 1
tag @s remove koniglich
# Inherit DNA from parents
execute if entity @s[tag=snc.dna.x] on vehicle run scoreboard players operation @s dna.x = @p[tag=woman] dna.x
tag @s remove snc.dna.x
execute if entity @s[tag=snc.dna.y] on vehicle run scoreboard players operation @s dna.y = @p[tag=!woman] dna.y
tag @s remove snc.dna.y
# Is a baby?
execute unless predicate snc:villager/is_adult on vehicle if entity @s[tag=!snc.npc] run data modify entity @s Age set value -24000
# New villager?
execute if entity @s[tag=!snc.born] if predicate snc:chance/5 on vehicle run scoreboard players set @s koniglich 1
# Give shifter
execute if entity @s[tag=snc.born] on vehicle run function snc:eldia/gene/shifter

## Name!
execute on vehicle if entity @s[tag=!snc.npc,tag=woman] on passengers if entity @s[type=armor_stand] run function snc:eldia/villager/names/female
execute on vehicle if entity @s[tag=!snc.npc,tag=!woman] on passengers if entity @s[type=armor_stand] run function snc:eldia/villager/names/male

execute on vehicle run data modify entity @s CustomName set from entity @e[type=armor_stand,sort=nearest,limit=1] CustomName

ride @s dismount