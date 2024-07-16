clear @s carrot_on_a_stick[custom_data~{inv:1b}] 1
particle minecraft:happy_villager ~ ~1.5 ~ .3 .3 .3 1 10 force
playsound minecraft:entity.villager.yes player @a ~ ~ ~ 1 1.1

execute if score $birth_rate config matches 0 run function snc:eldia/gene/inherit/player {"birth_rate":"25"}
execute if score $birth_rate config matches 1 run function snc:eldia/gene/inherit/player {"birth_rate":"35"}
execute if score $birth_rate config matches 2 run function snc:eldia/gene/inherit/player {"birth_rate":"45"}