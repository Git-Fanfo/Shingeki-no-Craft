advancement revoke @s only snc:shifters/armor/fortified
execute if predicate snc:chance/20 run playsound minecraft:aot.shifters.attack.grunt player @a ~ ~ ~ 5 0.5
# Restart moves
give @s quartz[minecraft:custom_data={atk_shifter:1b,5_titan:1b},item_model="item/blank"]
scoreboard players set state armor_vars 17