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
# 10 : Parry
# 12 : punch_1
# 13 : punch_2
# 14 : punch_3
# 15 : Jaw
# 16 : kick_1
# 17 : kick_2
# 18 : kick_3

## Rotate model
execute store result score rotation attack_vars run data get entity @s Rotation[0]
scoreboard players operation rotation attack_vars -= player_rotation attack_vars

## Rotate pivot
execute unless score rotation attack_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0

## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

execute if score state attack_vars matches 1 if entity @s[tag=!aj.attack.animation.born.playing] run function snc:shifters/mobs/attack/animate/born
## function snc:shifters/mobs/attack/animate/sneak is handled by ../player
execute if score state attack_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on passengers if entity @s[type=player] run function snc:shifters/mobs/highlight

execute if score state attack_vars matches 3 if entity @s[tag=!aj.attack.animation.idle.playing] run function snc:shifters/mobs/attack/animate/idle
execute if score state attack_vars matches 3 on vehicle run attribute @s minecraft:scale base set 6.3
execute if score state attack_vars matches 4 if entity @s[tag=!aj.attack.animation.walk.playing] run function snc:shifters/mobs/attack/animate/walk
execute if score state attack_vars matches 4 on vehicle run attribute @s minecraft:scale base set 6.3
execute if score state attack_vars matches 5 if entity @s[tag=!aj.attack.animation.run.playing] run function snc:shifters/mobs/attack/animate/run
execute if score state attack_vars matches 5 on vehicle run attribute @s minecraft:scale base set 6.6
execute if score state attack_vars matches 6 run function snc:shifters/mobs/attack/action/movement/jump

execute if score state attack_vars matches 9 if entity @s[tag=!aj.attack.animation.death.playing] run function snc:shifters/mobs/attack/animate/death

execute if score state attack_vars matches 10 if entity @s[tag=!aj.attack.animation.block.playing] run function snc:shifters/mobs/attack/animate/block
execute if score state attack_vars matches 10 on vehicle run attribute @s minecraft:scale base set 6.9

execute if score state attack_vars matches 12 if entity @s[tag=!aj.attack.animation.punch_1.playing] run function snc:shifters/mobs/attack/animate/punch_1
execute if score state attack_vars matches 12 on vehicle run attribute @s minecraft:scale base set 5.5
execute if score state attack_vars matches 13 if entity @s[tag=!aj.attack.animation.punch_2.playing] run function snc:shifters/mobs/attack/animate/punch_2
execute if score state attack_vars matches 13 on vehicle run attribute @s minecraft:scale base set 5.2
execute if score state attack_vars matches 14 if entity @s[tag=!aj.attack.animation.punch_3.playing] run function snc:shifters/mobs/attack/animate/punch_3
execute if score state attack_vars matches 14 on vehicle run attribute @s minecraft:scale base set 5.5
## function snc:shifters/mobs/attack/animate/consume is handled by ../action/jaw
execute if score state attack_vars matches 16 if entity @s[tag=!aj.attack.animation.kick_1.playing] run function snc:shifters/mobs/attack/animate/kick_1
execute if score state attack_vars matches 16 on vehicle run attribute @s minecraft:scale base set 5.5
execute if score state attack_vars matches 17 if entity @s[tag=!aj.attack.animation.kick_2.playing] run function snc:shifters/mobs/attack/animate/kick_2
execute if score state attack_vars matches 17 on vehicle run attribute @s minecraft:scale base set 5.6
execute if score state attack_vars matches 18 if entity @s[tag=!aj.attack.animation.kick_3.playing] run function snc:shifters/mobs/attack/animate/kick_3
execute if score state attack_vars matches 18 on vehicle run attribute @s minecraft:scale base set 5.5


# [X] Born
# [X] Death
# [X] Idle
# [X] Walk
# [X] Run
# [ ] Jump
# [X] Sneak
# [X] Punch (x3)
# [X] Consume (W)
# [X] Kick (x3)
# [X] Block