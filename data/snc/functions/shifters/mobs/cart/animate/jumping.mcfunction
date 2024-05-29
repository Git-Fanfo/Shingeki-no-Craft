execute if score action cart_vars matches 10 on vehicle unless predicate snc:is_riding_projectile at @s anchored feet positioned ^ ^ ^ run function snc:logic/apply_motion/knockback/summon {"knockback":3}
execute if score action cart_vars matches 10 on vehicle on passengers if entity @s[type=#snc:eldian] at @s run data modify entity @e[type=snowball,tag=snc.knockback,tag=not_mov,sort=nearest,limit=1] Rotation set from entity @s Rotation

execute if score action cart_vars matches 10 run data modify entity @s item.components.minecraft:custom_model_data set value 31
execute if score action cart_vars matches 9 run data modify entity @s item.components.minecraft:custom_model_data set value 32
execute if score action cart_vars matches 8 run data modify entity @s item.components.minecraft:custom_model_data set value 33
execute if score action cart_vars matches 7 run data modify entity @s item.components.minecraft:custom_model_data set value 34
execute if score action cart_vars matches 6 run data modify entity @s item.components.minecraft:custom_model_data set value 35
execute if score action cart_vars matches 5 run data modify entity @s item.components.minecraft:custom_model_data set value 36

execute if score action cart_vars matches 1 run scoreboard players set state cart_vars 3