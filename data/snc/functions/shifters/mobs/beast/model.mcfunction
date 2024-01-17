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
# 12 : punch_1
# 13 : punch_2
# 14 : punch_3
# 15 : Jaw
# 16 : kick_1
# 17 : kick_2
# 18 : kick_3
# 19 : block

## Rotate model
execute store result score rotation beast_vars run data get entity @s Rotation[0]
scoreboard players operation rotation beast_vars -= player_rotation beast_vars

# Rotate pivot
execute unless score rotation beast_vars matches -20..20 store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
# execute store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
data modify entity @s Rotation[1] set value 0f

## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

execute if score state beast_vars matches 1 if entity @s[tag=!aj.beast.animation.born] run function snc:shifters/mobs/beast/animate/born
## function snc:shifters/mobs/beast/animate/sneak is handled by ../player
execute if score state beast_vars matches 3 unless score $hold beast_vars matches 1 if entity @s[tag=!aj.beast.animation.idle] run function snc:shifters/mobs/beast/animate/idle
execute if score state beast_vars matches 4 if entity @s[tag=!aj.beast.animation.walk] run function snc:shifters/mobs/beast/animate/walk
##execute if score state beast_vars matches 5 if entity @s[tag=!aj.beast.animation.run] run function snc:shifters/mobs/beast/animate/run
execute if score state beast_vars matches 5 if entity @s[tag=!aj.beast.animation.walk] run function snc:shifters/mobs/beast/animate/walk
execute if score state beast_vars matches 9 if entity @s[tag=!aj.beast.animation.death] run function snc:shifters/mobs/beast/animate/death
execute if score state beast_vars matches 12 if entity @s[tag=!aj.beast.animation.grab] run function snc:shifters/mobs/beast/animate/grab

execute if score state beast_vars matches 13 if entity @s[tag=!aj.beast.animation.throw_big] run function snc:shifters/mobs/beast/animate/throw_big
execute if score state beast_vars matches 14 if entity @s[tag=!aj.beast.animation.throw_area] run function snc:shifters/mobs/beast/animate/throw_area



## Variants
execute if score health beast_vars matches 43..50 run scoreboard players set @s beast_vars 0
execute if score health beast_vars matches 35..42 run scoreboard players set @s beast_vars 1
execute if score health beast_vars matches 27..34 run scoreboard players set @s beast_vars 2
execute if score health beast_vars matches 19..26 run scoreboard players set @s beast_vars 3
execute if score health beast_vars matches 0..18 run scoreboard players set @s beast_vars 4

execute if entity @s[tag=!aj.beast.animation.born] if score @s beast_vars matches 0 run function animated_java:beast/apply_variant/default
execute if entity @s[tag=!aj.beast.animation.born] if score @s beast_vars matches 1 run function animated_java:beast/apply_variant/noskin_1
execute if entity @s[tag=!aj.beast.animation.born] if score @s beast_vars matches 2 run function animated_java:beast/apply_variant/noskin_2
execute if entity @s[tag=!aj.beast.animation.born] if score @s beast_vars matches 3 run function animated_java:beast/apply_variant/noskin_3
execute if entity @s[tag=!aj.beast.animation.born] if score @s beast_vars matches 4 run function animated_java:beast/apply_variant/noskin_4
