execute if score @s odm_dmg_R matches 100 if entity @s[tag=!snc.reload.blade] run function snc:player/odm/replace_weapon/blades/reload/check
execute if score @s odm_dmg_R matches 100 unless score @s snc.recoil matches 20.. run scoreboard players add @s snc.recoil 1
execute if score @s odm_dmg_R matches 100 if score @s snc.recoil matches 20.. if entity @s[tag=snc.reload.blade] run function snc:player/odm/replace_weapon/blades/reload/gas_trigger

execute if score @s odm_dmg_L matches 100 if entity @s[tag=!snc.reload.blade] run function snc:player/odm/replace_weapon/blades/reload/check
execute if score @s odm_dmg_L matches 100 unless score @s snc.recoil matches 20.. run scoreboard players add @s snc.recoil 1
execute if score @s odm_dmg_L matches 100 if score @s snc.recoil matches 20.. if entity @s[tag=snc.reload.blade] run function snc:player/odm/replace_weapon/blades/reload/gear/main