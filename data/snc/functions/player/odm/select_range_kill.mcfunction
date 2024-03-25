scoreboard players add @s Titan_Kill_Count 1
function snc:logic/advancements/kill_count

execute as @s[team=soldier] run function snc:player/odm/replace_weapon/blades/main {"rank":"soldier"}
execute as @s[team=veteran] run function snc:player/odm/replace_weapon/blades/main {"rank":"veteran"}
execute as @s[team=leader] run function snc:player/odm/replace_weapon/blades/main {"rank":"leader"}
execute as @s[team=officer] run function snc:player/odm/replace_weapon/blades/main {"rank":"leader"}
execute as @s[team=squad] run function snc:player/odm/replace_weapon/blades/main {"rank":"squad"}
execute as @s[team=v_captain] run function snc:player/odm/replace_weapon/blades/main {"rank":"squad"}