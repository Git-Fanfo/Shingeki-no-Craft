execute if score consume attack_vars matches 20 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:29}
execute if score consume attack_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 1
execute if score consume attack_vars matches 18 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:30}
execute if score consume attack_vars matches 16 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:27}
execute if score consume attack_vars matches 14 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:28}
execute if score consume attack_vars matches 12 at @s positioned ^ ^1.5 ^4 as @e[distance=..4,tag=!attack] run function snc:shifters/mobs/attack/action/jaw/damage with storage minecraft:attack
execute if score consume attack_vars matches 1 run tag @s remove consume