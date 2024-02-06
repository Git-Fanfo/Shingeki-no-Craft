execute if score consume colossal_vars matches 20 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:16}
execute if score consume colossal_vars matches 20 at @s run playsound minecraft:aot.attack_bite player @a ~ ~ ~ 5 .5
execute if score consume colossal_vars matches 17 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:17}
execute if score consume colossal_vars matches 15 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:18}
execute if score consume colossal_vars matches 13 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:19}
execute if score consume colossal_vars matches 11 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:20}
execute if score consume colossal_vars matches 9 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:18}
execute if score consume colossal_vars matches 8 run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData:16}

execute if score consume colossal_vars matches 8 at @s positioned ^ ^1.5 ^3 as @e[distance=..3] run function snc:shifters/mobs/colossal/action/jaw/damage
execute if score consume colossal_vars matches 1 run tag @s remove consume