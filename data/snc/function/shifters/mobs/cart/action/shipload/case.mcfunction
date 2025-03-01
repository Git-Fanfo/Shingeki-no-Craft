execute on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0

data modify entity @s Rotation[1] set value 0f
ride @s mount 0000007f-0000-007f-0000-007f00000001
execute on vehicle run effect give @s slowness 2 2 true