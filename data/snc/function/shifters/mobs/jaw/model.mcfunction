## States
# 0 : Dead
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

## Rotate pivot
execute unless score state jaw_vars matches 11 unless score rotation armor_vars matches -20..20 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ 0
execute if score state jaw_vars matches 11 on vehicle at @s on passengers unless entity @s[type=player] run rotate @s ~ ~
#execute on vehicle at @s if block ^1 ^1 ^ #snc:tangible on controller if predicate snc:player/keybinds/forward on #vehicle run function snc:shifters/mobs/jaw/action/movement/wall {"angle":-10}
#execute on vehicle at @s if block ^-1 ^1 ^ #snc:tangible on controller if predicate snc:player/keybinds/forward on vehicle run function snc:shifters/mobs/jaw/action/movement/wall {"angle":10}
## Animations
## 2 types: Strong(S) and Weak(W)
# S: Can't be combined with a S animation.
# W: Can be combined with a S Animation.

execute if score state jaw_vars matches 1 if entity @s[tag=!aj.jaw.animation.born.playing] run function snc:shifters/mobs/jaw/animate/born
## function snc:shifters/mobs/jaw/animate/sneak is handled by ../player
#execute if score state jaw_vars matches 2 if score $gamemode jaw_vars matches 1 on vehicle rotated ~ 0 positioned ^ ^-.9 ^4 on passengers if entity @s[type=player] run function snc:shifters/mobs/highlight

execute if score state jaw_vars matches 3 if entity @s[tag=!aj.jaw.animation.idle.playing] run function snc:shifters/mobs/jaw/animate/idle
execute if score state jaw_vars matches 3 on vehicle run attribute @s scale base set 1.25

execute if score state jaw_vars matches 4 if entity @s[tag=!aj.jaw.animation.walk.playing] run function snc:shifters/mobs/jaw/animate/walk
execute if score state jaw_vars matches 4 on vehicle run attribute @s scale base set .6

execute if score state jaw_vars matches 5 run function snc:shifters/mobs/jaw/action/movement/run

execute if score state jaw_vars matches 6 if entity @s[tag=!aj.jaw.animation.jump.playing] run function snc:shifters/mobs/jaw/animate/jump
execute if score state jaw_vars matches 9 if entity @s[tag=!aj.jaw.animation.death.playing] run function snc:shifters/mobs/jaw/animate/death

execute if score state jaw_vars matches 7 if entity @s[tag=!aj.jaw.animation.bite.playing] run function snc:shifters/mobs/jaw/animate/bite
execute if score state jaw_vars matches 8 if entity @s[tag=!aj.jaw.animation.roar.playing] run function snc:shifters/mobs/jaw/animate/roar

execute if score state jaw_vars matches 12 if entity @s[tag=!aj.jaw.animation.charge_end.playing] run function snc:shifters/mobs/jaw/animate/charge_end
execute if score state jaw_vars matches 11 run function snc:shifters/mobs/jaw/action/charge/land