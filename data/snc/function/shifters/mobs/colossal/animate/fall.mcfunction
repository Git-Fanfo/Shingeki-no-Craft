execute if score action colossal_vars matches 9 run data modify entity @s item.components.minecraft:custom_model_data set value 475
execute if score action colossal_vars matches 9 if score $shifter_destroy config matches 1 run summon creeper ~ ~-25 ~ {NoGravity:1b,Invulnerable:1b,ExplosionRadius:9b,Fuse:0}
execute if score action colossal_vars matches 9 run particle minecraft:explosion ~ ~-15 ~ 5 8 5 1 100 force
execute if score action colossal_vars matches 9 run particle minecraft:cloud ~ ~-15 ~ 5 8 5 .1 500 force
execute if score action colossal_vars matches 1 on vehicle run attribute @s minecraft:scale base set 8

execute if score action colossal_vars matches 1 run scoreboard players set state colossal_vars 3