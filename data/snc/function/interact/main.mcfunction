execute if entity @s[tag=canon] if data entity @s interaction on passengers at @s run function snc:interact/canon/aim
execute if entity @s[tag=canon] if data entity @s attack run function snc:interact/canon/check_hit

execute if entity @s[tag=snc.handcuffs] if data entity @s attack run function snc:interact/handcuffs/key/victim
execute if entity @s[tag=snc.hand.vill] on vehicle unless data entity @s Passengers[1] run function snc:logic/kill_mob
execute if entity @s[tag=snc.hand.pla] unless entity @p[distance=..1] on vehicle run function snc:logic/kill_mob

execute if entity @s[tag=snc.wall] run function snc:interact/wall/main