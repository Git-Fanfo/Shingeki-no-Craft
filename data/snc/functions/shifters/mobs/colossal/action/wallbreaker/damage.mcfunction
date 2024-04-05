execute if score action colossal_vars matches 34 if score $destroy config matches 1 run function snc:shifters/mobs/colossal/action/wallbreaker/fill/1
execute if score action colossal_vars matches 28 if score $destroy config matches 1 run function snc:shifters/mobs/colossal/action/wallbreaker/fill/2
execute if score action colossal_vars matches 22 if score $destroy config matches 1 run function snc:shifters/mobs/colossal/action/wallbreaker/fill/3

##+7 +12 -24
execute if score action colossal_vars matches 15 run summon creeper ^ ^8 ^-9 {ExplosionRadius:10b,Fuse:0}
execute if score action colossal_vars matches 14 run summon creeper ^ ^4 ^-9 {ExplosionRadius:10b,Fuse:0}
execute if score action colossal_vars matches 13 run summon creeper ^ ^7 ^ {ExplosionRadius:10b,Fuse:0}
execute if score action colossal_vars matches 12 run summon creeper ^ ^ ^ {ExplosionRadius:10b,Fuse:0}

#execute if score action colossal_vars matches 22 run particle minecraft:campfire_cosy_smoke ^-7 ^-12 ^24 2 2 2 .4 2000 force
execute if score action colossal_vars matches 22 run particle minecraft:campfire_cosy_smoke ^ ^ ^ 2 2 2 .4 2000 force

execute if score action colossal_vars matches 22 run execute as @e[type=!item,distance=..100] run function snc:shifters/mobs/colossal/action/wallbreaker/dmg_entities

execute if score action colossal_vars matches 24 run playsound minecraft:aot.huge_explosion player @a[distance=..200] ~ ~ ~ 7

execute if score action colossal_vars matches 17 if score $destroy config matches 1 run function snc:shifters/mobs/colossal/action/wallbreaker/fill/4
execute if score action colossal_vars matches 13 if score $destroy config matches 1 run function snc:shifters/mobs/colossal/action/wallbreaker/fill/5