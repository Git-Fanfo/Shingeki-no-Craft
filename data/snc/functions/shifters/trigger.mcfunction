damage @s[tag=!injured,tag=!first] 6 player_attack by @s
playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1 .9

#If it has the cart, ALWAYS take the time from the cart
tellraw @s[tag=injured] ["","You ",{"text":"can't","bold":true,"color":"dark_red"}," turn into a ",{"text":"Titan","bold":true,"color":"dark_red"}," while you are ",{"text":"Injured","bold":true,"color":"yellow"}]

##### HOW TO CREATE A SHIFTER #####

## Cart
execute if score @s[tag=!injured] shifter_vars matches 1 run function snc:shifters/human/check_transform with storage minecraft:cart
## Colossal
execute if score @s[tag=!injured] shifter_vars matches 2 run function snc:shifters/human/check_transform with storage minecraft:colossal
## Attack
execute if score @s[tag=!injured] shifter_vars matches 3 run function snc:shifters/human/check_transform with storage minecraft:attack
## beast
execute if score @s[tag=!injured] shifter_vars matches 4 run function snc:shifters/human/check_transform with storage minecraft:beast
## Armor
execute if score @s[tag=!injured] shifter_vars matches 5 run function snc:shifters/human/check_transform with storage minecraft:armor