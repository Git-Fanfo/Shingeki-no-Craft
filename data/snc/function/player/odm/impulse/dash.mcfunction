scoreboard players set @s odm_action -25
function snc:player/odm/impulse/push {"power":3, "x":"^", "y":"^", "z":"^-2.1"}

function snc:logic/advancements/kill_count
execute if score @s Titan_Kill_Count matches 0 run function snc:player/odm/replace_weapon/blades/main {"rank":"soldier"}
execute as @s[team=soldier] run function snc:player/odm/replace_weapon/blades/main {"rank":"soldier"}
execute as @s[team=veteran] run function snc:player/odm/replace_weapon/blades/main {"rank":"veteran"}
execute as @s[team=leader] run function snc:player/odm/replace_weapon/blades/main {"rank":"leader"}
execute as @s[team=officer] run function snc:player/odm/replace_weapon/blades/main {"rank":"leader"}
execute as @s[team=squad] run function snc:player/odm/replace_weapon/blades/main {"rank":"squad"}
execute as @s[team=v_captain] run function snc:player/odm/replace_weapon/blades/main {"rank":"squad"}