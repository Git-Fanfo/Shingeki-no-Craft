# Get bullets
execute store result score @s snc.bullets run \
    data get entity @s SelectedItem.components."minecraft:custom_data".snc_bullets

execute unless items entity @s weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[]] \
    run function snc:player/gun/bullet/mauser/chamber

execute if score @s snc.bullets matches 1.. if score @s snc.recoil matches 0 run playsound minecraft:aot.human.gun.mauser.chamber player @a
execute if score @s snc.recoil matches 0 anchored feet run tp @s ~ ~ ~ ~ ~-2
execute unless score @s snc.recoil matches 5.. run scoreboard players add @s snc.recoil 1
execute if score @s snc.bullets matches 1.. if score @s snc.recoil matches 5.. run item modify entity @s weapon.mainhand snc:gun/mauser/reload