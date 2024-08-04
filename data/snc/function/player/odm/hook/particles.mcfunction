scoreboard players add @s snc.odm_dist 1

#execute if score @s snc.odm_dist matches ..35 run particle heart ~ ~ ~ 0 0 0 1 1 force
$execute if entity @p[name=$(name),distance=..1.3] run tag @s add snc.hook.break

#$tellraw $(name) [{"text":"$(name)"}," ",{"score":{"name":"@s","objective":"snc.odm_dist"}}]
$execute if entity @s[tag=snc.hook.break] unless score @s snc.odm_dist = @s snc.odm_dist.before run function snc:player/odm/hook/length {"name":$(name)}

$execute if score @s projectile matches 4.. if score @s[tag=!snc.hook.retract] snc.odm_dist matches 36.. as $(name) run function snc:player/odm/hook/shake
execute if score @s projectile matches 4.. if score @s snc.odm_dist matches 36.. run tag @s add snc.hook.retract
execute if score @s projectile matches 4.. if score @s snc.odm_dist matches 36.. on vehicle run kill @s
execute if score @s projectile matches 4.. if score @s[tag=!snc.hook.retract] snc.odm_dist matches 36.. run scoreboard players set @s projectile 0

$execute if score @s[tag=!snc.hook.break] snc.odm_dist matches ..35 positioned ^ ^ ^1 \
    run function snc:player/odm/hook/particles {"name":$(name)}