## Inherit Royal
execute if score @s koniglich matches 1 on vehicle run scoreboard players set @s koniglich 1
# If is not a baby can get royal blood (Natural Spawned Villager)
execute if entity @s[tag=!snc.baby] if predicate snc:chance/5 on vehicle run scoreboard players set @s koniglich 1

## Inherit DNA from parents
execute if entity @s[tag=snc.dna.x] on vehicle run scoreboard players operation @s dna.x = @p[tag=woman] dna.x
tag @s remove snc.dna.x
execute if entity @s[tag=snc.dna.y] on vehicle run scoreboard players operation @s dna.y = @p[tag=!woman] dna.y
tag @s remove snc.dna.y

## Is a baby?
execute if entity @s[tag=snc.baby] on vehicle run data modify entity @s Age set value -24000

# Give shifter
execute on vehicle if entity @s[tag=snc.villager.new] run function snc:eldia/gene/shifter

## Name!
execute on vehicle if entity @s[tag=!snc.npc,tag=woman] on passengers if entity @s[type=armor_stand] run function snc:eldia/villager/names/female
execute on vehicle if entity @s[tag=!snc.npc,tag=!woman] on passengers if entity @s[type=armor_stand] run function snc:eldia/villager/names/male

execute on vehicle run data modify entity @s CustomName set from entity @e[type=armor_stand,sort=nearest,limit=1] CustomName

## Remove tag and dismont from spawner
execute on vehicle run tag @s remove snc.villager.new
ride @s dismount