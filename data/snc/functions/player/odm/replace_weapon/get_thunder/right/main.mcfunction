summon snowball ^-1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","projectile"],Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["bullet","spear"],Pose:{LeftArm:[0.0f,0.1f,0.0f],Head:[0f,.1f,0f]},HandItems:[{id:"minecraft:player_head", Count:1b, tag:{CustomModelData:1, SkullOwner:{Id: [I;1,1,1,1]}}},{}],ArmorItems:[{},{},{},{id:'minecraft:arrow',Count:1b,tag:{CustomModelData:1}}]}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

execute if score @s odm_atk_R matches 0 run function snc:player/odm/replace_weapon/get_thunder/right/8
execute if score @s odm_atk_R matches 32 run function snc:player/odm/replace_weapon/get_thunder/right/16
execute if score @s odm_atk_R matches 64 run function snc:player/odm/replace_weapon/get_thunder/right/25

