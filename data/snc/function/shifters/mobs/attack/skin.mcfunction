## Variants
execute if score $health attack_vars matches 33..40 run scoreboard players set @s attack_vars 0
execute if score $health attack_vars matches 25..32 run scoreboard players set @s attack_vars 1
execute if score $health attack_vars matches 17..24 run scoreboard players set @s attack_vars 2
execute if score $health attack_vars matches 9..16 run scoreboard players set @s attack_vars 3
execute if score $health attack_vars matches 0..8 run scoreboard players set @s attack_vars 4

execute if entity @s[tag=!aj.attack.animation.born.playing] if score @s attack_vars matches 0 run function animated_java:attack/variants/default/apply
execute if entity @s[tag=!aj.attack.animation.born.playing] if score @s attack_vars matches 1 run function animated_java:attack/variants/noskin_1/apply
execute if entity @s[tag=!aj.attack.animation.born.playing] if score @s attack_vars matches 2 run function animated_java:attack/variants/noskin_2/apply
execute if entity @s[tag=!aj.attack.animation.born.playing] if score @s attack_vars matches 3 run function animated_java:attack/variants/noskin_3/apply
execute if entity @s[tag=!aj.attack.animation.born.playing] if score @s attack_vars matches 4 run function animated_java:attack/variants/noskin_4/apply