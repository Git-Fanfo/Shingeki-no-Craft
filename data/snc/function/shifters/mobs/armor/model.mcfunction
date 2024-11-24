## States
# 0 : Dead
# 1 : Born
# 2 : Sneak
# 3 : Idle
# 4 : Walk
# 5 : Run
# 6 : Jump
# 9 : Die
###############

## Rotate model
execute store result score rotation armor_vars run data get entity @s Rotation[0]
scoreboard players operation rotation armor_vars -= player_rotation armor_vars

## Rotate pivot
execute unless score rotation armor_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0
## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

execute if score state armor_vars matches 1 if entity @s[tag=!aj.armor.animation.born.playing] run function snc:shifters/mobs/armor/animate/born
## function snc:shifters/mobs/armor/animate/sneak is handled by ../player
execute if score state armor_vars matches 2 if score $gamemode armor_vars matches 1 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on passengers if entity @s[type=player] run function snc:shifters/mobs/highlight

execute if score state armor_vars matches 3 if entity @s[tag=!aj.armor.animation.idle.playing] run function snc:shifters/mobs/armor/animate/idle
execute if score state armor_vars matches 3 on vehicle run attribute @s minecraft:scale base set 6.8

execute if score state armor_vars matches 4 if entity @s[tag=!aj.armor.animation.walk.playing] run function snc:shifters/mobs/armor/animate/walk
execute if score state armor_vars matches 4 on vehicle run attribute @s scale base set 6.8

execute if score state armor_vars matches 5 if entity @s[tag=!aj.armor.animation.run.playing] run function snc:shifters/mobs/armor/animate/run
execute if score state armor_vars matches 5 on vehicle run attribute @s scale base set 5.4

execute if score state armor_vars matches 9 if entity @s[tag=!aj.armor.animation.death.playing] run function snc:shifters/mobs/armor/animate/death

execute if score state armor_vars matches 11 if entity @s[tag=!aj.armor.animation.init_charge.playing] run function snc:shifters/mobs/armor/animate/init_charge
execute if score state armor_vars matches 12 run function snc:shifters/mobs/armor/action/charge/damage
execute if score state armor_vars matches 16 if entity @s[tag=!aj.armor.animation.slide.playing] run function snc:shifters/mobs/armor/animate/slide
execute if score state armor_vars matches 16 on vehicle run attribute @s scale base set 4.8

execute if score state armor_vars matches 13 if entity @s[tag=!aj.armor.animation.punch_1.playing] run function snc:shifters/mobs/armor/animate/punch_1
execute if score state armor_vars matches 14 if entity @s[tag=!aj.armor.animation.punch_2.playing] run function snc:shifters/mobs/armor/animate/punch_2
execute if score state armor_vars matches 15 if entity @s[tag=!aj.armor.animation.punch_3.playing] run function snc:shifters/mobs/armor/animate/punch_3

execute if score state armor_vars matches 17 if entity @s[tag=!aj.armor.animation.hardening.playing] run function snc:shifters/mobs/armor/animate/hard