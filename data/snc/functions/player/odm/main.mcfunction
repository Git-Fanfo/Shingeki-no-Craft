# Tp rope to hooks
execute as @s[tag=rope,tag=R,tag=!snc.hook.buried] run tp @s @e[tag=hook,tag=R,sort=nearest,limit=1]
execute as @s[tag=rope,tag=L,tag=!snc.hook.buried] run tp @s @e[tag=hook,tag=L,sort=nearest,limit=1]

execute if entity @s[tag=snc.hook.buried] if block ^ ^ ^-.5 air run tp ^ ^ ^.7

execute if entity @s[tag=rope] on leasher if score @s odm_state matches 0 as @e[sort=nearest,limit=1,tag=rope] run function snc:logic/kill_mob
execute as @s[tag=rope] unless data entity @s leash run function snc:logic/kill_mob

# Detect ODM landed
execute as @s[tag=hook] unless predicate snc:is_riding run function snc:player/odm/ground/main

execute if score @s[tag=shooter,tag=R] id_shooter_R = @p id_player at @p rotated ~ 0 run tp @s ^-.25 ^.75 ^.1
execute if score @s[tag=shooter,tag=L] id_shooter_L = @p id_player at @p rotated ~ 0 run tp @s ^.25 ^.75 ^.1

return 0