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
execute if score walk colossal_vars matches -2..0 run scoreboard players set walk colossal_vars 121
execute if score idle colossal_vars matches -2..0 run scoreboard players set idle colossal_vars 91

scoreboard players remove idle colossal_vars 1
scoreboard players remove action colossal_vars 1
scoreboard players remove walk colossal_vars 1
scoreboard players remove $roar colossal_vars 1

execute on vehicle on controller run effect give @s minecraft:slowness infinite 0 true 
execute rotated ~ 0 run function snc:shifters/mobs/colossal/action/movement/particles
execute if score $roar colossal_vars matches 0..120 on vehicle on controller run function snc:shifters/mobs/colossal/animate/stop/roar

### General: Sort from more likely to less likely to quickly trimm the checks
execute if score $form colossal_vars matches 0 if function snc:shifters/mobs/colossal/animate/stop/wall/main run return -1
execute if score state colossal_vars matches 3 if function snc:shifters/mobs/colossal/animate/stop/idle run return -1
execute if score state colossal_vars matches 4..5 if function snc:shifters/mobs/colossal/animate/stop/walk/main run return -1
## 2. function snc:shifters/mobs/colossal/animate/sneak is disabled for colossal titan
## 6. function snc:shifters/mobs/colossal/animate/jump is disabled for colossal titan
## 7. function snc:shifters/mobs/colossal/animate/bite is disabled for colossal titan
execute if score state colossal_vars matches 12 if function snc:shifters/mobs/colossal/animate/steam run return -1
execute if score state colossal_vars matches 11 if function snc:shifters/mobs/colossal/animate/stop/wallbreaker run return -1
execute if score state colossal_vars matches 1 if function snc:shifters/mobs/colossal/animate/stop/born run return -1