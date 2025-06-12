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
execute store result score rotation jaw_vars run data get entity @s Rotation[0]
scoreboard players operation rotation jaw_vars -= player_rotation jaw_vars
execute unless score state jaw_vars matches 11 unless score rotation jaw_vars matches -10..10 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0
execute if block ~ ~-1 ~ #snc:tangible run scoreboard players set $charge jaw_vars 1

### Animations
## General
## 1. function snc:shifters/mobs/attack/animate/born is handled externally
## 2. function snc:shifters/mobs/attack/animate/sneak is handled externally
execute if score state jaw_vars matches 3 if entity @s[tag=!aj.jaw.animation.idle.playing] run function snc:shifters/mobs/jaw/animate/idle
execute if score state jaw_vars matches 4 if entity @s[tag=!aj.jaw.animation.walk.playing] run function snc:shifters/mobs/jaw/animate/walk
execute if score state jaw_vars matches 5 run function snc:shifters/mobs/jaw/action/movement/run
execute if score state jaw_vars matches 6 if entity @s[tag=aj.jaw.animation.jump_loop.playing] run function snc:shifters/mobs/jaw/action/movement/jump_loop

## 6. function snc:shifters/mobs/jaw/animate/jump is handled externally
## 7. function snc:shifters/mobs/jaw/animate/bite is handled externally
## 8. function snc:shifters/mobs/jaw/animate/roar is handled externally
## 9. function snc:shifters/mobs/jaw/animate/death is handled externally

## Moves
execute if score state jaw_vars matches 12 run function snc:shifters/mobs/jaw/action/charge/slash
execute if score state jaw_vars matches 11 run function snc:shifters/mobs/jaw/action/charge/crash