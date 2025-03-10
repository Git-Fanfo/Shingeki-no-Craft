data merge entity @s {Duration:0}

execute store result entity @s Motion[0] double 0.00002 run data get entity @s Motion[0] 100000
execute store result entity @s Motion[1] double 0.00002 run data get entity @s Motion[1] 100000
execute store result entity @s Motion[2] double 0.00002 run data get entity @s Motion[2] 100000

tag @s remove snc.bullet.init

return 1