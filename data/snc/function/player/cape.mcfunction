tag @s remove snc.dark.hood
tag @s remove snc.hood
execute if predicate snc:player/has_dark_hood run tag @s add snc.dark.hood
execute if predicate snc:player/has_hood run tag @s add snc.hood

execute if entity @s[tag=snc.dark.hood] run effect give @s night_vision 20 0 true
execute if entity @s[tag=snc.hood] run item modify entity @s armor.chest snc:dark_cape/dark
execute if entity @s[tag=!snc.dark.hood] run effect clear @s night_vision
execute if entity @s[tag=!snc.hood] run item modify entity @s armor.chest snc:dark_cape/clear