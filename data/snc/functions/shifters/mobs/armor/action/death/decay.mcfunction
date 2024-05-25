scoreboard players add @s armor_vars 1
particle minecraft:cloud ~ ~4 ~ 1 2 1 .15 200 force
playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s armor_vars matches 1 run function animated_java:armor/apply_variant/skin_2
execute if score @s armor_vars matches 1 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=86]
execute if score @s armor_vars matches 2 run function animated_java:armor/apply_variant/skin_3
execute if score @s armor_vars matches 2 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=81]
execute if score @s armor_vars matches 3 run function animated_java:armor/apply_variant/skin_4
execute if score @s armor_vars matches 3 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=76]
execute if score @s armor_vars matches 4 run function animated_java:armor/apply_variant/skin_5
execute if score @s armor_vars matches 4 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=71]
execute if score @s armor_vars matches 5 run function animated_java:armor/apply_variant/skin_6
execute if score @s armor_vars matches 5 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=70]
execute if score @s armor_vars matches 6 run function animated_java:armor/apply_variant/skin_7
execute if score @s armor_vars matches 6 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=69]
execute if score @s armor_vars matches 7 run function animated_java:armor/apply_variant/skin_8
execute if score @s armor_vars matches 7 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=68]
execute if score @s armor_vars matches 8 run function animated_java:armor/apply_variant/skin_9
execute if score @s armor_vars matches 8 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=67]
execute if score @s armor_vars matches 9 run function animated_java:armor/apply_variant/skin_10
execute if score @s armor_vars matches 9 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=66]
execute if score @s armor_vars matches 10 run function animated_java:armor/apply_variant/skin_11
execute if score @s armor_vars matches 10 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=65]
execute if score @s armor_vars matches 11 run function animated_java:armor/apply_variant/skin_12
execute if score @s armor_vars matches 11 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with carved_pumpkin[minecraft:custom_model_data=64]
