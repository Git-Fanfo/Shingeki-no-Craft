## ANIMATE
execute if score walk colossal_vars matches ..0 run scoreboard players set walk colossal_vars 121
execute if score idle colossal_vars matches ..0 run scoreboard players set idle colossal_vars 90
execute on vehicle on passengers if entity @s[type=player] run effect give @s minecraft:slowness infinite 0 true 

execute rotated ~ 0 run function snc:shifters/mobs/colossal/action/movement/particles

# Born
execute if score state colossal_vars matches 1 run function snc:shifters/mobs/colossal/animate/born
# Idle
execute if score state colossal_vars matches 3 if score $form colossal_vars matches 1 run function snc:shifters/mobs/colossal/animate/idle
execute if score state colossal_vars matches 3 if score $form colossal_vars matches 0 run function snc:shifters/mobs/colossal/animate/idle_wall

# Walk and Run
execute if score state colossal_vars matches 4..5 run function snc:shifters/mobs/colossal/animate/walk

# Wallbreaker
execute if score state colossal_vars matches 11 run function snc:shifters/mobs/colossal/animate/wallbreaker
# Steam
execute if score state colossal_vars matches 12 run function snc:shifters/mobs/colossal/animate/steam
# Fall
execute if score state colossal_vars matches 13 run function snc:shifters/mobs/colossal/animate/fall
# Consume
execute if score $form colossal_vars matches 0 unless score state colossal_vars matches 14 on vehicle rotated ~ 0 positioned ^5 ^1 ^13.5 run particle glow_squid_ink ~ ~ ~ 0 0 0 0 20 force
execute if score $form colossal_vars matches 0 unless score state colossal_vars matches 14 on vehicle rotated ~ 0 positioned ^5 ^1 ^13.5 run effect give @e[distance=..8] glowing 1 0 true
execute if score state colossal_vars matches 14 run function snc:shifters/mobs/colossal/animate/consume

execute if score state colossal_vars matches 9 run function snc:shifters/mobs/colossal/animate/death

scoreboard players remove idle colossal_vars 1
scoreboard players remove walk colossal_vars 1
execute if score action colossal_vars matches 1.. run scoreboard players remove action colossal_vars 1