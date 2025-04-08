execute if predicate snc:on_tangible run kill
execute if block ~.1 ~ ~.1 #snc:tangible run kill
execute if block ~.1 ~ ~-.1 #snc:tangible run kill
execute if block ~-.1 ~ ~.1 #snc:tangible run kill
execute if block ~-.1 ~ ~-.1 #snc:tangible run kill

tag @s remove snc.tnt.pass
execute on passengers on vehicle run tag @s add snc.tnt.pass
execute if entity @s[tag=!snc.tnt.pass] run kill