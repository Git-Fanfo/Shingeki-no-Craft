#execute if score @s odm_atk_L matches ..99 unless score @s odm_atk_R matches ..24 run scoreboard players add @s Titan_Kill_Count 1
#execute if score @s odm_atk_R matches ..24 run scoreboard players add @s Titan_Kill_Count 1

scoreboard players add @s Titan_Kill_Count 1
function snc:logic/advancements/kill_count

execute as @s[team=soldier] run function snc:player/odm/replace_weapon/soldier/main
execute as @s[team=veteran] run function snc:player/odm/replace_weapon/veteran/main
execute as @s[team=leader] run function snc:player/odm/replace_weapon/leader/main
execute as @s[team=officer] run function snc:player/odm/replace_weapon/leader/main
execute as @s[team=squad] run function snc:player/odm/replace_weapon/squad/main
execute as @s[team=v_captain] run function snc:player/odm/replace_weapon/squad/main