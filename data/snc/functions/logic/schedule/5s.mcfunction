scoreboard players set 5s clock 0
# tellraw FanfoYT "5s"

##### HOW TO CREATE A SHIFTER #####
execute store result score count attack_vars run execute if entity @e[type=#snc:eldian,scores={attack_vars=1}]
execute store result score count armor_vars run execute if entity @e[type=#snc:eldian,scores={armor_vars=1}]
execute store result score count cart_vars run execute if entity @e[type=#snc:eldian,scores={cart_vars=1}]
execute store result score count colossal_vars run execute if entity @e[type=#snc:eldian,scores={colossal_vars=1}]
execute store result score count beast_vars run execute if entity @e[type=#snc:eldian,scores={beast_vars=1}]

execute if score count armor_vars matches 2.. run execute as @e[type=#snc:eldian,scores={armor_vars=1},tag=!transform,limit=1,sort=arbitrary] run function snc:shifters/transfer/cheat with storage minecraft:armor
execute if score count attack_vars matches 2.. run execute as @e[type=#snc:eldian,scores={attack_vars=1},tag=!transform,limit=1,sort=arbitrary] run function snc:shifters/transfer/cheat with storage minecraft:attack
execute if score count cart_vars matches 2.. run execute as @e[type=#snc:eldian,scores={cart_vars=1},tag=!transform,limit=1,sort=arbitrary] run function snc:shifters/transfer/cheat with storage minecraft:cart
execute if score count colossal_vars matches 2.. run execute as @e[type=#snc:eldian,scores={colossal_vars=1},tag=!transform,limit=1,sort=arbitrary] run function snc:shifters/transfer/cheat with storage minecraft:colossal
execute if score count beast_vars matches 2.. run execute as @e[type=#snc:eldian,scores={beast_vars=1},tag=!transform,limit=1,sort=arbitrary] run function snc:shifters/transfer/cheat with storage minecraft:beast