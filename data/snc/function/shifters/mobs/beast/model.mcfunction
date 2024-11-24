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
# 12 : grab
# 13 : boulder
# 14 : area

## Rotate model
execute store result score rotation beast_vars run data get entity @s Rotation[0]
scoreboard players operation rotation beast_vars -= player_rotation beast_vars
## Rotate pivot
execute unless score rotation beast_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run tp @s ~ ~ ~ ~ 0

## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.
execute if score state beast_vars matches 1 if entity @s[tag=!aj.beast.animation.born.playing] run function snc:shifters/mobs/beast/animate/born
## function snc:shifters/mobs/beast/animate/sneak is handled by ../player
execute if score state beast_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on passengers if entity @s[type=player] run function snc:shifters/mobs/highlight
# execute if score state beast_vars matches 3 unless score $hold beast_vars matches 1 if entity @s[tag=!aj.beast.animation.idle] run function snc:shifters/mobs/beast/animate/idle
execute if score state beast_vars matches 3 if entity @s[tag=!aj.beast.animation.idle.playing] run function snc:shifters/mobs/beast/animate/idle
execute if score state beast_vars matches 4 if entity @s[tag=!aj.beast.animation.walk.playing] run function snc:shifters/mobs/beast/animate/walk
##execute if score state beast_vars matches 5 if entity @s[tag=!aj.beast.animation.run] run function snc:shifters/mobs/beast/animate/run
execute if score state beast_vars matches 5 if entity @s[tag=!aj.beast.animation.walk.playing] run function snc:shifters/mobs/beast/animate/walk
execute if score state beast_vars matches 3..5 on vehicle run attribute @s minecraft:scale base set 9.2
execute if score state beast_vars matches 9 if entity @s[tag=!aj.beast.animation.death.playing] run function snc:shifters/mobs/beast/animate/death

execute if score state beast_vars matches 12 if entity @s[tag=!aj.beast.animation.grab.playing] run function snc:shifters/mobs/beast/animate/grab
execute if score state beast_vars matches 13 if entity @s[tag=!aj.beast.animation.throw_big.playing] run function snc:shifters/mobs/beast/animate/throw_big
execute if score state beast_vars matches 14 if entity @s[tag=!aj.beast.animation.throw_area.playing] run function snc:shifters/mobs/beast/animate/throw_area
execute if score state beast_vars matches 15 if entity @s[tag=!aj.beast.animation.slap.playing] run function snc:shifters/mobs/beast/animate/slap