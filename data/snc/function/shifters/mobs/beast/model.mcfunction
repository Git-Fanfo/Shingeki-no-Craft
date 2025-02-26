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
execute unless score rotation beast_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0

### Animations
## General
## 1. function snc:shifters/mobs/beast/animate/born is handled externally
## 2. function snc:shifters/mobs/beast/animate/sneak is handled externally
execute if score state beast_vars matches 2 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on passengers if entity @s[type=player] run function snc:shifters/mobs/highlight
execute if score state beast_vars matches 3 if entity @s[tag=!aj.beast.animation.idle.playing] run function snc:shifters/mobs/beast/animate/idle
execute if score state beast_vars matches 4 if entity @s[tag=!aj.beast.animation.walk.playing] run function snc:shifters/mobs/beast/animate/walk
execute if score state beast_vars matches 5 if entity @s[tag=!aj.beast.animation.run.playing] run function snc:shifters/mobs/beast/animate/run
## 6. function snc:shifters/mobs/beast/animate/jump is disabled for beast titan
## 7. function snc:shifters/mobs/beast/animate/bite is handled externally
## 8. function snc:shifters/mobs/beast/animate/roar is handled externally
## 9. function snc:shifters/mobs/beast/animate/death is handled externally

## Moves
## 12. function snc:shifters/mobs/beast/animate/grab is handled externally
## 13. function snc:shifters/mobs/beast/animate/throw_big is handled externally
## 14. function snc:shifters/mobs/beast/animate/throw_area is handled externally
## 15. function snc:shifters/mobs/beast/animate/slap is handled externally