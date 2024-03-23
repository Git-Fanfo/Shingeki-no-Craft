execute if score action colossal_vars matches 9 run data merge entity @s {item:{id:'minecraft:turtle_scute',Count:1b,components:{"custom_model_data":475}}}
execute if score action colossal_vars matches 9 run summon creeper ~ ~-25 ~ {NoGravity:1b,Invulnerable:1b,ExplosionRadius:9b,Fuse:0,Tags:["motion"]}
execute if score action colossal_vars matches 9 run particle minecraft:explosion ~ ~-15 ~ 5 8 5 1 100 force
execute if score action colossal_vars matches 9 run particle minecraft:cloud ~ ~-15 ~ 5 8 5 .1 500 force
execute if score action colossal_vars matches 1 on vehicle run attribute @s minecraft:generic.scale base set 8

execute if score action colossal_vars matches 1 run scoreboard players set state colossal_vars 3