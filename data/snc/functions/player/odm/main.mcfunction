# Tp ropse to hooks
execute as @s[tag=rope,tag=R,tag=!buried] run tp @s @e[tag=hook,tag=R,sort=nearest,limit=1]
# execute if entity @s[tag=rope,tag=R,tag=!buried] run tp @e[tag=hook,tag=R,sort=nearest,limit=1] ~ ~ ~
execute as @s[tag=rope,tag=L,tag=!buried] run tp @s @e[tag=hook,tag=L,sort=nearest,limit=1]
execute as @e[tag=rope] unless data entity @s Leash run function snc:logic/kill_mob

# Detect ODM landed
execute as @s[tag=hook,tag=R] unless predicate snc:is_riding_projectile run function snc:player/odm/ground/main
execute as @s[tag=hook,tag=L] unless predicate snc:is_riding_projectile run function snc:player/odm/ground/main

execute if score @s[tag=shooter,tag=R] id_shooter_R = @p id_player at @p rotated ~ 0 run tp @s ^-.3 ^.5 ^
execute if score @s[tag=shooter,tag=L] id_shooter_L = @p id_player at @p rotated ~ 0 run tp @s ^.3 ^.5 ^

return 0