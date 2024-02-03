title @s title {"text":"\uE001"}
title @s subtitle ""
title @s times 20 20 140

execute at @s run fill ^-1 ^ ^ ^1 ^ ^ fire

damage @s[distance=.5..30] 100 on_fire
damage @s[distance=31..60] 12 on_fire
damage @s[distance=61..] 6 on_fire
effect give @s[tag=hurtbox] water_breathing 1 0 true

execute facing ^ ^ ^-1 run function delta:api/launch_looking
# scoreboard players set @s[type=player,distance=.5..30] push_back 3
# scoreboard players set @s[type=player,distance=31..60] push_back 2
# scoreboard players set @s[type=player,distance=61..] push_back 1