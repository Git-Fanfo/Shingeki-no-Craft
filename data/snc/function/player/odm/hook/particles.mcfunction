scoreboard players add @s snc.odm_dist 1
## Init player's score in 0
$scoreboard players set $(name) snc.odm_dist 0
## If player found then set to 1
$execute as $(name) if entity @s[distance=..6] run scoreboard players set $(name) snc.odm_dist 1
#particle heart ~ ~ ~ 0 0 0 1 1 force
#$execute if score @s snc.odm_dist matches 7.. run tellraw $(name) [{"text":"$(name)"}," ",{"score":{"name":"@s","objective":"snc.odm_dist"}}]

$execute if score @s[tag=!snc.wire.retract] snc.odm_dist matches 7.. as $(name) run function snc:player/odm/hook/shake
execute if score @s snc.odm_dist matches 7.. run tag @s add snc.wire.retract
execute if score @s[tag=!snc.wire.retract] snc.odm_dist matches 7.. run scoreboard players set @s projectile 0

$execute if entity @s[tag=!snc.wire.retract,tag=snc.wire.buried,tag=snc.wire.L] run scoreboard players operation $(name) snc.odm_push.left = @s snc.odm_dist
$execute if entity @s[tag=!snc.wire.retract,tag=snc.wire.buried,tag=snc.wire.R] run scoreboard players operation $(name) snc.odm_push.right = @s snc.odm_dist

$execute if score $(name) snc.odm_dist matches 0 if score @s snc.odm_dist matches ..6 positioned ^ ^ ^6.5 \
    run function snc:player/odm/hook/particles {"name":$(name)}