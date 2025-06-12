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
execute store result score rotation armor_vars run data get entity @s Rotation[0]
scoreboard players operation rotation armor_vars -= player_rotation armor_vars
execute unless score rotation armor_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0

### Animations
## General
## 1. function snc:shifters/mobs/armor/animate/born is handled externally
## 2. function snc:shifters/mobs/armor/animate/sneak is handled externally
execute if score state armor_vars matches 2 if score $gamemode armor_vars matches 1 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on passengers if entity @s[type=player] run function snc:shifters/mobs/highlight
execute if score state armor_vars matches 3 if entity @s[tag=!aj.armor.animation.idle.playing] run function snc:shifters/mobs/armor/animate/idle
execute if score state armor_vars matches 4 if entity @s[tag=!aj.armor.animation.walk.playing] run function snc:shifters/mobs/armor/animate/walk
execute if score state armor_vars matches 5 if entity @s[tag=!aj.armor.animation.run.playing] run function snc:shifters/mobs/armor/animate/run
execute if score state armor_vars matches 6 if entity @s[tag=aj.armor.animation.jump_loop.playing] if score $air armor_vars matches 0 run function snc:shifters/mobs/armor/animate/jump_end
## 6. function snc:shifters/mobs/armor/animate/jump is handled externally
## 7. function snc:shifters/mobs/armor/animate/bite is handled externally
## 8. function snc:shifters/mobs/armor/animate/roar is handled externally
## 9. function snc:shifters/mobs/armor/animate/death is handled externally

## Moves
#execute if score state armor_vars matches 11 if entity @s[tag=!aj.armor.animation.init_charge.playing] run function snc:shifters/mobs/armor/animate/init_charge
execute if score state armor_vars matches 12 run function snc:shifters/mobs/armor/action/charge/damage
#execute if score state armor_vars matches 13 if entity @s[tag=!aj.armor.animation.jabs.playing] run function snc:shifters/mobs/armor/animate/jabs
#execute if score state armor_vars matches 14 if entity @s[tag=!aj.armor.animation.rocket.playing] run function snc:shifters/mobs/armor/animate/rocket
#execute if score state armor_vars matches 16 if entity @s[tag=!aj.armor.animation.slide.playing] run function snc:shifters/mobs/armor/animate/slide
#execute if score state armor_vars matches 17 if entity @s[tag=!aj.armor.animation.hardening.playing] run function snc:shifters/mobs/armor/animate/hard