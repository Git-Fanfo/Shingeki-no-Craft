clear @s carrot_on_a_stick[custom_data~{inv:1b}] 1
particle minecraft:happy_villager ~ ~1.5 ~ .3 .3 .3 1 10 force
playsound minecraft:entity.villager.yes player @a ~ ~ ~ 1 1.1

execute if entity @s[type=player] if score $birth_rate config matches 0 run function snc:eldia/gene/inherit/player/main {"birth_rate":"20"}
execute if entity @s[type=player] if score $birth_rate config matches 1 run function snc:eldia/gene/inherit/player/main {"birth_rate":"30"}
execute if entity @s[type=player] if score $birth_rate config matches 2 run function snc:eldia/gene/inherit/player/main {"birth_rate":"40"}

execute if entity @s[type=villager] if score $birth_rate config matches 0 run function snc:eldia/gene/inherit/villager/main {"birth_rate":"20"}
execute if entity @s[type=villager] if score $birth_rate config matches 1 run function snc:eldia/gene/inherit/villager/main {"birth_rate":"30"}
execute if entity @s[type=villager] if score $birth_rate config matches 2 run function snc:eldia/gene/inherit/villager/main {"birth_rate":"40"}