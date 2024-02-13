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
execute store result score rotation attack_vars run data get entity @s Rotation[0]
scoreboard players operation rotation attack_vars -= player_rotation attack_vars

# Rotate pivot
execute unless score rotation attack_vars matches -20..20 store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
# execute store result entity @s Rotation[0] float 1 run execute on vehicle run data get entity @s Rotation[0]
data modify entity @s Rotation[1] set value 0f

## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

execute if score state attack_vars matches 1 if entity @s[tag=!aj.attack.animation.born] run function snc:shifters/mobs/attack/animate/born
## function snc:shifters/mobs/attack/animate/sneak is handled by ../player
execute if score state attack_vars matches 2 on vehicle run attribute @s minecraft:generic.scale base set 2.7
execute if score state attack_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^1 ^4 run particle glow_squid_ink ~ ~ ~ 0 0 0 0 20 force
execute if score state attack_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^1 ^4 run effect give @e[type=#snc:eldian,tag=!transform,distance=..5,sort=nearest,limit=1] glowing 1 0 true
execute if score state attack_vars matches 3 if entity @s[tag=!aj.attack.animation.idle] run function snc:shifters/mobs/attack/animate/idle
execute if score state attack_vars matches 3 on vehicle run attribute @s minecraft:generic.scale base set 6.3
execute if score state attack_vars matches 4 if entity @s[tag=!aj.attack.animation.walk] run function snc:shifters/mobs/attack/animate/walk
execute if score state attack_vars matches 4 on vehicle run attribute @s minecraft:generic.scale base set 6.9
execute if score state attack_vars matches 5 if entity @s[tag=!aj.attack.animation.run] run function snc:shifters/mobs/attack/animate/run
execute if score state attack_vars matches 5 on vehicle run attribute @s minecraft:generic.scale base set 6.6

execute if score state attack_vars matches 9 if entity @s[tag=!aj.attack.animation.death] run function snc:shifters/mobs/attack/animate/death

execute if score state attack_vars matches 12 if entity @s[tag=!aj.attack.animation.punch_1] run function snc:shifters/mobs/attack/animate/punch_1
execute if score state attack_vars matches 12 on vehicle run attribute @s minecraft:generic.scale base set 5.5
execute if score state attack_vars matches 13 if entity @s[tag=!aj.attack.animation.punch_2] run function snc:shifters/mobs/attack/animate/punch_2
execute if score state attack_vars matches 13 on vehicle run attribute @s minecraft:generic.scale base set 5.2
execute if score state attack_vars matches 14 if entity @s[tag=!aj.attack.animation.punch_3] run function snc:shifters/mobs/attack/animate/punch_3
execute if score state attack_vars matches 14 on vehicle run attribute @s minecraft:generic.scale base set 5.5
## function snc:shifters/mobs/attack/animate/grab is handled by ../action/jaw
execute if score state attack_vars matches 16 if entity @s[tag=!aj.attack.animation.kick_1] run function snc:shifters/mobs/attack/animate/kick_1
execute if score state attack_vars matches 16 on vehicle run attribute @s minecraft:generic.scale base set 5.5
execute if score state attack_vars matches 17 if entity @s[tag=!aj.attack.animation.kick_2] run function snc:shifters/mobs/attack/animate/kick_2
execute if score state attack_vars matches 17 on vehicle run attribute @s minecraft:generic.scale base set 5.6
execute if score state attack_vars matches 18 if entity @s[tag=!aj.attack.animation.kick_3] run function snc:shifters/mobs/attack/animate/kick_3
execute if score state attack_vars matches 18 on vehicle run attribute @s minecraft:generic.scale base set 5.5
execute if score state attack_vars matches 19 if entity @s[tag=!aj.attack.animation.block] run function snc:shifters/mobs/attack/animate/block
execute if score state attack_vars matches 19 on vehicle run attribute @s minecraft:generic.scale base set 6.9

# [X] Born
# [X] Death
# [X] Idle
# [X] Walk
# [X] Run
# [ ] Jump
# [X] Sneak
# [X] Punch (x3)
# [X] Grab (W)
# [X] Kick (x3)
# [X] Block

## Variants
execute if score health attack_vars matches 33..40 run scoreboard players set @s attack_vars 0
execute if score health attack_vars matches 25..32 run scoreboard players set @s attack_vars 1
execute if score health attack_vars matches 17..24 run scoreboard players set @s attack_vars 2
execute if score health attack_vars matches 9..16 run scoreboard players set @s attack_vars 3
execute if score health attack_vars matches 0..8 run scoreboard players set @s attack_vars 4

execute if entity @s[tag=!aj.attack.animation.born] if score @s attack_vars matches 0 run function animated_java:attack/apply_variant/default
execute if entity @s[tag=!aj.attack.animation.born] if score @s attack_vars matches 1 run function animated_java:attack/apply_variant/noskin_1
execute if entity @s[tag=!aj.attack.animation.born] if score @s attack_vars matches 2 run function animated_java:attack/apply_variant/noskin_2
execute if entity @s[tag=!aj.attack.animation.born] if score @s attack_vars matches 3 run function animated_java:attack/apply_variant/noskin_3
execute if entity @s[tag=!aj.attack.animation.born] if score @s attack_vars matches 4 run function animated_java:attack/apply_variant/noskin_4
