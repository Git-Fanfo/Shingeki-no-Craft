execute if score @s walk matches 58 store result score @s random run random value 1..2
execute if score @s walk matches 58 if score @s random matches 1 run tag @s add snc.grover.flip

execute if entity @s[tag=snc.grover.flip] run function snc:titans/mobs/grover/animate/walk/2
execute if entity @s[tag=!snc.grover.flip] run function snc:titans/mobs/grover/animate/walk/1

execute if score @s walk matches 44 run tag @s remove snc.grover.flip
execute if score @s walk matches 44 run tag @s remove walk
execute if score @s walk matches ..44 run scoreboard players set @s walk 59