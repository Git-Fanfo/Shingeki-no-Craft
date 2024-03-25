execute at @s run fill ^-1 ^ ^ ^1 ^ ^ fire

damage @s[distance=.5..20] 6 on_fire
damage @s[distance=21..] 4 on_fire
effect give @s[tag=hurtbox] water_breathing 1 0 true

execute facing ^ ^ ^-1 run function player_motion:api/launch_looking
# scoreboard players set @s[type=player,distance=.5..20] push_back 2
# scoreboard players set @s[type=player,distance=21..] push_back 1