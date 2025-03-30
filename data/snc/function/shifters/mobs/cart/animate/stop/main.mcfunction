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
execute if score walk cart_vars matches -2..0 run scoreboard players set walk cart_vars 21
execute if score idle cart_vars matches -2..0 run scoreboard players set idle cart_vars 41

scoreboard players remove idle cart_vars 1
scoreboard players remove action cart_vars 1
scoreboard players remove walk cart_vars 1

### General: Sort from more likely to less likely to quickly trimm the checks
execute if score state cart_vars matches 3 if function snc:shifters/mobs/cart/animate/stop/idle run return -1
execute if score state cart_vars matches 4..5 if function snc:shifters/mobs/cart/animate/stop/walk run return -1
execute if score state cart_vars matches 2 if function snc:shifters/mobs/cart/animate/stop/sneak run return -1
execute if score state cart_vars matches 6 if function snc:shifters/mobs/cart/animate/stop/jump run return -1
execute if score state cart_vars matches 7 if function snc:shifters/mobs/cart/animate/stop/bite run return -1
execute if score state cart_vars matches 8 if function snc:shifters/mobs/cart/animate/stop/roar run return -1
execute if score state cart_vars matches 1 if function snc:shifters/mobs/cart/animate/stop/born run return -1
## 9. function snc:shifters/mobs/jaw/animate/death is handled externally

## Moves
execute if score state cart_vars matches 11 run function snc:shifters/mobs/cart/animate/stop/dash