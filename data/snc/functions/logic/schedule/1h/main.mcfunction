# Server: execute in minecraft:sncraft_surv run 
# schedule function snc:logic/schedule/1h/main 10s
scoreboard players set hour clock 0
tellraw FanfoYT ["Server: ",{"text":"Checking shifters every hour...","color":"yellow"}]

##### HOW TO CREATE A SHIFTER #####
## Curse of the Titans
execute if score curse cart_vars matches 1.. run scoreboard players remove curse cart_vars 1
execute if score curse colossal_vars matches 1.. run scoreboard players remove curse colossal_vars 1
execute if score curse attack_vars matches 1.. run scoreboard players remove curse attack_vars 1
execute if score curse beast_vars matches 1.. run scoreboard players remove curse beast_vars 1

execute if score curse cart_vars matches ..0 run function snc:shifters/transfer/lose with storage minecraft:cart
execute if score curse colossal_vars matches ..0 run function snc:shifters/transfer/lose with storage minecraft:colossal
execute if score curse attack_vars matches ..0 run function snc:shifters/transfer/lose with storage minecraft:attack
execute if score curse beast_vars matches ..0 run function snc:shifters/transfer/lose with storage minecraft:beast