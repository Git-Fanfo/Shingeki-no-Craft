scoreboard players set @s snc.recoil 0

execute if score @s snc.bullets matches 6 run item modify entity @s weapon.offhand snc:odm/thunder/gear_5
execute if score @s snc.bullets matches 6 run summon snowball ^-1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","snc.projectile"],Passengers:[{id:"item_display",teleport_duration:1,item_display:"head",Tags:["snc.projectile","snc.spear"],item:{id:"minecraft:player_head", count:1, components:{"custom_model_data":3, "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow",count:1b,components:{"custom_model_data":1}}}
execute if score @s snc.bullets matches 5 run item modify entity @s weapon.offhand snc:odm/thunder/gear_4
execute if score @s snc.bullets matches 5 run summon snowball ^1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","snc.projectile"],Passengers:[{id:"item_display",teleport_duration:1,item_display:"head",Tags:["snc.projectile","snc.spear"],item:{id:"minecraft:player_head", count:1, components:{"custom_model_data":3, "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow",count:1b,components:{"custom_model_data":1}}}
execute if score @s snc.bullets matches 4 run item modify entity @s weapon.offhand snc:odm/thunder/gear_3
execute if score @s snc.bullets matches 4 run summon snowball ^-1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","snc.projectile"],Passengers:[{id:"item_display",teleport_duration:1,item_display:"head",Tags:["snc.projectile","snc.spear"],item:{id:"minecraft:player_head", count:1, components:{"custom_model_data":3, "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow",count:1b,components:{"custom_model_data":1}}}
execute if score @s snc.bullets matches 3 run item modify entity @s weapon.offhand snc:odm/thunder/gear_2
execute if score @s snc.bullets matches 3 run summon snowball ^1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","snc.projectile"],Passengers:[{id:"item_display",teleport_duration:1,item_display:"head",Tags:["snc.projectile","snc.spear"],item:{id:"minecraft:player_head", count:1, components:{"custom_model_data":3, "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow",count:1b,components:{"custom_model_data":1}}}
execute if score @s snc.bullets matches 2 run item modify entity @s weapon.offhand snc:odm/thunder/gear_1
execute if score @s snc.bullets matches 2 run summon snowball ^-1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","snc.projectile"],Passengers:[{id:"item_display",teleport_duration:1,item_display:"head",Tags:["snc.projectile","snc.spear"],item:{id:"minecraft:player_head", count:1, components:{"custom_model_data":3, "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow",count:1b,components:{"custom_model_data":1}}}
execute if score @s snc.bullets matches 1 run item modify entity @s weapon.offhand snc:odm/thunder/gear_0
execute if score @s snc.bullets matches 1 run summon snowball ^1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","snc.projectile"],Passengers:[{id:"item_display",teleport_duration:1,item_display:"head",Tags:["snc.projectile","snc.spear"],item:{id:"minecraft:player_head", count:1, components:{"custom_model_data":3, "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow",count:1b,components:{"custom_model_data":1}}}

item modify entity @s weapon.offhand snc:odm/thunder/lore_gear

scoreboard players remove @s snc.bullets 1
execute anchored eyes positioned ^ ^ ^ run function snc:player/gun/spear/shoot