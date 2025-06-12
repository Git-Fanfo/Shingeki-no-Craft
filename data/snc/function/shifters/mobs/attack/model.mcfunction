## States
# 0 : Off
# 1 : Born
# 2 : Sneak
# 3 : Idle
# 4 : Walk
# 5 : Run
# 6 : Jump
# 7 : Bite
# 8 : Roar
# 9 : Die
###############

## Rotate model
execute store result score rotation attack_vars run data get entity @s Rotation[0]
scoreboard players operation rotation attack_vars -= player_rotation attack_vars
execute unless score rotation attack_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0

### Animations
## General
## 1. function snc:shifters/mobs/attack/animate/born is handled externally
## 2. function snc:shifters/mobs/attack/animate/sneak is handled externally
execute if score state attack_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on controller run function snc:shifters/mobs/highlight
execute if score state attack_vars matches 3 if entity @s[tag=!aj.attack.animation.idle.playing] run function snc:shifters/mobs/attack/animate/idle
execute if score state attack_vars matches 4 if entity @s[tag=!aj.attack.animation.walk.playing] run function snc:shifters/mobs/attack/animate/walk
execute if score state attack_vars matches 5 if entity @s[tag=!aj.attack.animation.run.playing] run function snc:shifters/mobs/attack/animate/run
execute if score state attack_vars matches 6 if entity @s[tag=aj.attack.animation.jump_loop.playing] if score $air attack_vars matches 0 run function snc:shifters/mobs/attack/animate/jump_end
## 6. function snc:shifters/mobs/attack/animate/jump is handled externally
## 7. function snc:shifters/mobs/attack/animate/bite is handled externally
## 8. function snc:shifters/mobs/attack/animate/roar is handled externally
## 9. function snc:shifters/mobs/attack/animate/death is handled externally