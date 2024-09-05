# Get bullets
execute store result score @s snc.bullets run \
    data get entity @s SelectedItem.components."minecraft:custom_data".snc_bullets

execute unless items entity @s weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[]] \
    run function snc:player/gun/bullet/carbine/chamber

#execute if score @s snc.bullets matches 1.. if score @s snc.recoil matches 0 run playsound minecraft:aot.human.gun.mauser.chamber player @a

#execute if score @s snc.recoil matches 0 store result score @s random run random value 1..3
#execute if score @s snc.recoil matches 0 if score @s random matches 1 anchored feet run tp @s ~ ~ ~ ~ ~-1
#execute if score @s snc.recoil matches 0 if score @s random matches 2 anchored feet run tp @s ~ ~ ~ ~-.5 ~-.7
#execute if score @s snc.recoil matches 0 if score @s random matches 3 anchored feet run tp @s ~ ~ ~ ~.5 ~-.7
#execute if score @s snc.recoil matches 0 run scoreboard players reset @s random

execute if score @s snc.recoil matches 0 run scoreboard players add @s snc.recoil 1
#execute if score @s snc.bullets matches 1.. run item modify entity @s weapon.mainhand snc:gun/carbine/reload