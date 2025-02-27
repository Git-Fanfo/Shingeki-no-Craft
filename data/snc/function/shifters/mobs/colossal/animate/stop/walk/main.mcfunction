execute if score walk colossal_vars matches 0..60 run function snc:shifters/mobs/colossal/animate/stop/walk/1
execute if score walk colossal_vars matches 61..120 run function snc:shifters/mobs/colossal/animate/stop/walk/2

# Thights
execute if score ticks clock matches 7 if score $shifter_destroy config matches 1 rotated ~ 0 positioned ^-6 ^-26 ^ run fill ^ ^ ^ ^5 ^19 ^5 minecraft:air replace #snc:destroy/building
execute if score ticks clock matches 7 if score $shifter_destroy config matches 1 rotated ~ 0 positioned ^6 ^-26 ^ run fill ^ ^ ^ ^-5 ^19 ^5 minecraft:air replace #snc:destroy/building
execute if score ticks clock matches 14 if score $shifter_destroy config matches 1 rotated ~ 0 positioned ^-6 ^-26 ^ run fill ^ ^ ^ ^5 ^19 ^5 minecraft:fire replace #snc:destroy/building
execute if score ticks clock matches 14 if score $shifter_destroy config matches 1 rotated ~ 0 positioned ^6 ^-26 ^ run fill ^ ^ ^ ^-5 ^19 ^5 minecraft:fire replace #snc:destroy/building

# SHAKE GROUND
execute if score walk colossal_vars matches 110 run function snc:shifters/mobs/colossal/action/movement/step
execute if score walk colossal_vars matches 110 run scoreboard players remove $energy colossal_vars 5

execute if score walk colossal_vars matches 45 run function snc:shifters/mobs/colossal/action/movement/step
execute if score walk colossal_vars matches 45 run scoreboard players remove $energy colossal_vars 5

execute if score walk colossal_vars matches 1 run scoreboard players set state colossal_vars 3
return 1