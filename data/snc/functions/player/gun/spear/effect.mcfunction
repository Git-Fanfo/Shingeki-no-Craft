execute unless score @s projectile matches 0.. run scoreboard players set @s projectile 0

execute if score @s projectile matches 33.. run data modify entity @s NoGravity set value 0b
scoreboard players add @s projectile 1

# I'll use mov to store rotation
execute store result score @s movz run data get entity @s Motion[1] 10
execute if score @s movz matches 4.. run function snc:player/gun/spear/rot/1
execute if score @s movz matches 2..3 run function snc:player/gun/spear/rot/2
execute if score @s movz matches 1 run function snc:player/gun/spear/rot/3
execute if score @s movz matches 0 run function snc:player/gun/spear/rot/4
execute if score @s movz matches -5..-1 run function snc:player/gun/spear/rot/5
execute if score @s movz matches -7..-6 run function snc:player/gun/spear/rot/6
execute if score @s movz matches -11..-8 run function snc:player/gun/spear/rot/7
execute if score @s movz matches -15..-12 run function snc:player/gun/spear/rot/8


execute if score @s projectile matches 3 run data modify entity @e[tag=spear,sort=nearest,limit=1] ArmorItems[3] set value {id:'minecraft:minecart',Count:1b,components:{"custom_model_data":4}}