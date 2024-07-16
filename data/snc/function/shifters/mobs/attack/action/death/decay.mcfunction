scoreboard players add @s attack_vars 1
particle minecraft:cloud ~ ~4 ~ 1 2 1 .15 200 force
playsound minecraft:aot.steam player @a ~ ~ ~ 2 1
execute if score @s attack_vars matches 1 run function animated_java:attack/apply_variant/noskin_1
execute if score @s attack_vars matches 1 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=31]
execute if score @s attack_vars matches 2 run function animated_java:attack/apply_variant/noskin_2
execute if score @s attack_vars matches 2 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=32]
execute if score @s attack_vars matches 3 run function animated_java:attack/apply_variant/noskin_3
execute if score @s attack_vars matches 3 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=33]
execute if score @s attack_vars matches 4 run function animated_java:attack/apply_variant/noskin_4
execute if score @s attack_vars matches 4 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=34]
execute if score @s attack_vars matches 5 run function animated_java:attack/apply_variant/noskin_5
execute if score @s attack_vars matches 5 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=35]
execute if score @s attack_vars matches 6 run function animated_java:attack/apply_variant/noskin_6
execute if score @s attack_vars matches 6 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=36]
execute if score @s attack_vars matches 7 run function animated_java:attack/apply_variant/noskin_7
execute if score @s attack_vars matches 7 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=37]
execute if score @s attack_vars matches 8 run function animated_java:attack/apply_variant/noskin_8
execute if score @s attack_vars matches 8 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=38]
execute if score @s attack_vars matches 9 run function animated_java:attack/apply_variant/noskin_9
execute if score @s attack_vars matches 9 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=39]
execute if score @s attack_vars matches 10 run function animated_java:attack/apply_variant/noskin_10
execute if score @s attack_vars matches 10 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:custom_model_data=40]
