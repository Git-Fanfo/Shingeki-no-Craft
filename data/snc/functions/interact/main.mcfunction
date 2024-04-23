execute if entity @s[tag=canon] if data entity @s interaction on passengers at @s run function snc:interact/canon/aim
execute if entity @s[tag=canon] if data entity @s attack run function snc:interact/canon/hit


execute if entity @s[tag=handcuffs] if data entity @s attack run function snc:interact/handcuffs/kill
execute if entity @s[tag=snc.hand.vill] unless data entity @s Passengers run kill
execute if entity @s[tag=snc.hand.pla] unless entity @p[distance=..2] run kill

## Turrets
execute if entity @s[tag=cart.turret.1] if data entity @s interaction run function snc:interact/turret {"turret":1}
execute if entity @s[tag=cart.turret.2] if data entity @s interaction run function snc:interact/turret {"turret":2}
execute if entity @s[tag=cart.turret.3] if data entity @s interaction run function snc:interact/turret {"turret":3}

execute if entity @s[tag=snc.wall] run function snc:interact/wall/main
# execute if entity @s[tag=snc.wall] run say A
