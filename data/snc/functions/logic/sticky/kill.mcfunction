effect give @s resistance 1 127 true
execute unless entity @s[type=snowball] on vehicle run function snc:logic/sticky/kill
execute if entity @s[type=snowball] run kill