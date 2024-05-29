playsound minecraft:entity.villager.yes player @s ~ ~ ~ 1 1.1
effect give @s saturation 2400 2 true
effect give @s speed 2 5 true
effect give @s nausea 4 5 true
scoreboard players set @s snc.bee 600
## Set DNA
# x = woman -> xx | y = man -> xy
# If the player is a man!
execute if entity @s[tag=!woman] run execute store result score @s dna.y run data get entity @s UUID[1]
$execute if entity @s[tag=!woman] as @e[type=#snc:eldian,sort=nearest,distance=.1..4,tag=woman] unless score @s children matches 3.. if predicate snc:chance/$(birth_rate) run function snc:eldia/gene/inherit/woman

# If the player is a woman!
execute if entity @s[tag=woman] run execute store result score @s dna.x run data get entity @s UUID[1]
$execute if entity @s[tag=woman] unless score @s children matches 3.. if predicate snc:chance/$(birth_rate) if entity @e[type=#snc:eldian,sort=nearest,distance=.1..4,tag=!woman] run function snc:eldia/gene/inherit/man