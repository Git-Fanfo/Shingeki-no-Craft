scoreboard players add @s snc.odm_dist 1
#$tellraw $(name) [{"text":"$(name)"}," ",{"score":{"name":"@s","objective":"snc.odm_dist"}}]
execute if score @s snc.odm_dist matches 1 run data modify entity @s transformation.scale set value [0.25f,0.25f,1f]
execute if score @s snc.odm_dist matches 2 run data modify entity @s transformation.scale set value [0.25f,0.25f,2f]
execute if score @s snc.odm_dist matches 3 run data modify entity @s transformation.scale set value [0.25f,0.25f,3f]
execute if score @s snc.odm_dist matches 4 run data modify entity @s transformation.scale set value [0.25f,0.25f,4f]
execute if score @s snc.odm_dist matches 5 run data modify entity @s transformation.scale set value [0.25f,0.25f,5f]
execute if score @s snc.odm_dist matches 6 run data modify entity @s transformation.scale set value [0.25f,0.25f,6f]
execute if score @s snc.odm_dist matches 7 run data modify entity @s transformation.scale set value [0.25f,0.25f,7f]
execute if score @s snc.odm_dist matches 8 run data modify entity @s transformation.scale set value [0.25f,0.25f,8f]
execute if score @s snc.odm_dist matches 9 run data modify entity @s transformation.scale set value [0.25f,0.25f,9f]
execute if score @s snc.odm_dist matches 10 run data modify entity @s transformation.scale set value [0.25f,0.25f,10f]
execute if score @s snc.odm_dist matches 11 run data modify entity @s transformation.scale set value [0.25f,0.25f,11f]
execute if score @s snc.odm_dist matches 12 run data modify entity @s transformation.scale set value [0.25f,0.25f,12f]
execute if score @s snc.odm_dist matches 13 run data modify entity @s transformation.scale set value [0.25f,0.25f,13f]
execute if score @s snc.odm_dist matches 14 run data modify entity @s transformation.scale set value [0.25f,0.25f,14f]
execute if score @s snc.odm_dist matches 15 run data modify entity @s transformation.scale set value [0.25f,0.25f,15f]
execute if score @s snc.odm_dist matches 16 run data modify entity @s transformation.scale set value [0.25f,0.25f,16f]
execute if score @s snc.odm_dist matches 17 run data modify entity @s transformation.scale set value [0.25f,0.25f,17f]
execute if score @s snc.odm_dist matches 18 run data modify entity @s transformation.scale set value [0.25f,0.25f,18f]
execute if score @s snc.odm_dist matches 19 run data modify entity @s transformation.scale set value [0.25f,0.25f,19f]
execute if score @s snc.odm_dist matches 20 run data modify entity @s transformation.scale set value [0.25f,0.25f,20f]
execute if score @s snc.odm_dist matches 21 run data modify entity @s transformation.scale set value [0.25f,0.25f,21f]
execute if score @s snc.odm_dist matches 22 run data modify entity @s transformation.scale set value [0.25f,0.25f,22f]
execute if score @s snc.odm_dist matches 23 run data modify entity @s transformation.scale set value [0.25f,0.25f,23f]
execute if score @s snc.odm_dist matches 24 run data modify entity @s transformation.scale set value [0.25f,0.25f,24f]
execute if score @s snc.odm_dist matches 25 run data modify entity @s transformation.scale set value [0.25f,0.25f,25f]
execute if score @s snc.odm_dist matches 26 run data modify entity @s transformation.scale set value [0.25f,0.25f,26f]
execute if score @s snc.odm_dist matches 27 run data modify entity @s transformation.scale set value [0.25f,0.25f,27f]
execute if score @s snc.odm_dist matches 28 run data modify entity @s transformation.scale set value [0.25f,0.25f,28f]
execute if score @s snc.odm_dist matches 29 run data modify entity @s transformation.scale set value [0.25f,0.25f,29f]
execute if score @s snc.odm_dist matches 30 run data modify entity @s transformation.scale set value [0.25f,0.25f,30f]
execute if score @s snc.odm_dist matches 31 run data modify entity @s transformation.scale set value [0.25f,0.25f,31f]
execute if score @s snc.odm_dist matches 32 run data modify entity @s transformation.scale set value [0.25f,0.25f,32f]
execute if score @s snc.odm_dist matches 33 run data modify entity @s transformation.scale set value [0.25f,0.25f,33f]
execute if score @s snc.odm_dist matches 34 run data modify entity @s transformation.scale set value [0.25f,0.25f,34f]
execute if score @s snc.odm_dist matches 35 run data modify entity @s transformation.scale set value [0.25f,0.25f,35f]

$execute if score @s projectile matches 4.. if score @s[tag=!snc.hook.retract] snc.odm_dist matches 36.. as $(name) run function snc:player/odm/hook/shake
execute if score @s projectile matches 4.. if score @s snc.odm_dist matches 36.. run tag @s add snc.hook.retract
execute if score @s projectile matches 4.. if score @s snc.odm_dist matches 36.. on vehicle run kill @s
execute if score @s projectile matches 4.. if score @s[tag=!snc.hook.retract] snc.odm_dist matches 36.. run scoreboard players set @s projectile 0

#execute if score @s snc.odm_dist matches ..35 run particle heart ~ ~ ~ 0 0 0 1 1 force
$execute if entity @p[name=$(name),distance=..1.3] run tag @s add snc.hook.break

$execute if score @s[tag=!snc.hook.break] snc.odm_dist matches ..35 positioned ^ ^ ^1 \
    run function snc:player/odm/hook/particles {"name":$(name)}