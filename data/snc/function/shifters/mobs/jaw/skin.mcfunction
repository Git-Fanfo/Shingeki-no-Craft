## Variants
execute if score $health jaw_vars matches 29.. run scoreboard players set @s jaw_vars 0
execute if score $health jaw_vars matches 21..25 run scoreboard players set @s jaw_vars 1
execute if score $health jaw_vars matches 11..20 run scoreboard players set @s jaw_vars 2
execute if score $health jaw_vars matches 0..10 run scoreboard players set @s jaw_vars 3

execute if entity @s[tag=!aj.jaw.animation.born.playing] if score @s jaw_vars matches 0 run function animated_java:jaw/variants/default/apply
execute if entity @s[tag=!aj.jaw.animation.born.playing] if score @s jaw_vars matches 1 run function animated_java:jaw/variants/decay1/apply
execute if entity @s[tag=!aj.jaw.animation.born.playing] if score @s jaw_vars matches 2 run function animated_java:jaw/variants/decay2/apply
execute if entity @s[tag=!aj.jaw.animation.born.playing] if score @s jaw_vars matches 3 run function animated_java:jaw/variants/decay3/apply