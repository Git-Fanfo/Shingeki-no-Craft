scoreboard players set @s odm_state 0
execute as @e[tag=shooter,limit=2, sort=nearest,distance=0..2] run function snc:logic/kill_mob