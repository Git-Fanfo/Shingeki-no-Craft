## Variants
execute if score $health beast_vars matches 41.. run scoreboard players set @s beast_vars 0
execute if score $health beast_vars matches 31..40 run scoreboard players set @s beast_vars 1
execute if score $health beast_vars matches 21..30 run scoreboard players set @s beast_vars 2
execute if score $health beast_vars matches 11..20 run scoreboard players set @s beast_vars 3
execute if score $health beast_vars matches 0..10 run scoreboard players set @s beast_vars 4

execute if entity @s[tag=!aj.beast.animation.born.playing] if score @s beast_vars matches 0 run function animated_java:beast/variants/default/apply
execute if entity @s[tag=!aj.beast.animation.born.playing] if score @s beast_vars matches 1 run function animated_java:beast/variants/noskin_1/apply
execute if entity @s[tag=!aj.beast.animation.born.playing] if score @s beast_vars matches 2 run function animated_java:beast/variants/noskin_2/apply
execute if entity @s[tag=!aj.beast.animation.born.playing] if score @s beast_vars matches 3 run function animated_java:beast/variants/noskin_3/apply
execute if entity @s[tag=!aj.beast.animation.born.playing] if score @s beast_vars matches 4 run function animated_java:beast/variants/noskin_4/apply