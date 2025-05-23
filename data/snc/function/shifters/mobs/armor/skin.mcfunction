## Variants
execute if score $op.hardening armor_vars matches 9.. run scoreboard players set @s armor_vars 0
execute if score $op.hardening armor_vars matches 6..8 run scoreboard players set @s armor_vars 1
execute if score $op.hardening armor_vars matches 3..5 run scoreboard players set @s armor_vars 2
execute if score $op.hardening armor_vars matches 1..2 run scoreboard players set @s armor_vars 3
execute if score $op.hardening armor_vars matches 0 run scoreboard players set @s armor_vars 4

execute on vehicle on controller run function snc:shifters/mobs/armor/head {"frame":1}

execute if entity @s[tag=!aj.armor.animation.born.playing] if score @s armor_vars matches 0 run function animated_java:armor/variants/default/apply
execute if entity @s[tag=!aj.armor.animation.born.playing] if score @s armor_vars matches 1 run function animated_java:armor/variants/skin_2/apply
execute if entity @s[tag=!aj.armor.animation.born.playing] if score @s armor_vars matches 2 run function animated_java:armor/variants/skin_3/apply
execute if entity @s[tag=!aj.armor.animation.born.playing] if score @s armor_vars matches 3 run function animated_java:armor/variants/skin_4/apply
execute if entity @s[tag=!aj.armor.animation.born.playing] if score @s armor_vars matches 4 run function animated_java:armor/variants/skin_5/apply