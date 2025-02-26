advancement revoke @s only snc:shifters/colossal/wallbreaker
execute if predicate snc:chance/20 run playsound minecraft:aot.shifters.attack.grunt player @a ~ ~ ~ 5 0.2
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,2_titan:1b},item_model="item/blank"]
scoreboard players set state colossal_vars 11
scoreboard players set action colossal_vars 81