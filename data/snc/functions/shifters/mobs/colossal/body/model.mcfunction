# Smoke
#execute unless score @s smoke matches 0 run scoreboard players remove @s smoke 1

#execute if score @s smoke matches 1 rotated ~ 0 run particle campfire_signal_smoke ^6 ^ ^ ^ ^1000000 ^ 0.00000007 0 force
#execute if score @s smoke matches 1 rotated ~ 0 run particle campfire_signal_smoke ^-8 ^ ^ ^ ^1000000 ^ 0.00000007 0 force
#execute rotated ~ 0 run particle campfire_signal_smoke ^-1 ^8 ^-3 0 3 0 0.01 10 force

#execute if score @s smoke matches ..0 run scoreboard players set @s smoke 3

## ANIMATE
execute if score walk colossal_vars matches 0 run scoreboard players set walk colossal_vars 121
execute if score idle colossal_vars matches 0 run scoreboard players set idle colossal_vars 90

# use n-1
# Born
execute if score state colossal_vars matches 100 run function snc:shifters/mobs/colossal/animate/born
# If doesn't find player then die
execute unless score state_sp colossal_vars matches 1 as @s[tag=!dead] unless entity @p[scores={colossal_vars=1},tag=transform] run tag @s add dead
execute if score state_sp colossal_vars matches 1 as @s[tag=!dead] unless entity @p[scores={colossal_vars=1},tag=transform] run function snc:shifters/mobs/colossal/action/die_half
# Idle
execute if score state colossal_vars matches 3 run function snc:shifters/mobs/colossal/animate/idle/select_idle
# Jaw
execute if score state colossal_vars matches 13 run function snc:shifters/mobs/colossal/animate/jaw
# Steam
execute if score state colossal_vars matches 12 positioned ~ ~-30 ~ run function snc:shifters/mobs/colossal/animate/steam
# Wallbreaker
execute if score state colossal_vars matches 11 run function snc:shifters/mobs/colossal/animate/wallbreaker
# Walk
execute if score state colossal_vars matches 4 run function snc:shifters/mobs/colossal/animate/walk

## HEAD (100 is to not change while born)
execute if score state colossal_vars matches 13 on vehicle on vehicle on passengers as @s[type=player] run function snc:shifters/mobs/colossal/animate/head_bare
execute if score state colossal_vars matches 12 on vehicle on vehicle on passengers as @s[type=player] run function snc:shifters/mobs/colossal/animate/head_steam

execute if score idle colossal_vars matches 1.. run scoreboard players remove idle colossal_vars 1
execute if score action colossal_vars matches 1.. run scoreboard players remove action colossal_vars 1
execute if score walk colossal_vars matches 1.. run scoreboard players remove walk colossal_vars 1

## Smoke
execute if score ticks clock matches 9 on vehicle at @s rotated ~ 0 run function snc:shifters/mobs/colossal/body/smoke
execute if score ticks clock matches 19 on vehicle at @s rotated ~ 0 run function snc:shifters/mobs/colossal/body/smoke